library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab3 is
	port(
		-- SW 7:0 for BCD time input (upper 4 = tens, lower 4 = ones)
		-- SW 8 for alarm mode (0 = normal, 1 = show/set alarm)
		-- SW 9 unused
		SW 					: in std_logic_vector (9 downto 0);
		-- KEY0 = set SS, KEY1 = set MM, KEY2 = set HH, KEY3 = toggle AM/PM
		KEY 				: in std_logic_vector (3 downto 0);
		-- GND output pin for external button ground connection
		GND                 : out std_logic_vector(0 downto 0);
		LED 				: out std_logic_vector(9 downto 0);
		-- 7-segment displays: 5:4 = HH, 3:2 = MM, 1:0 = SS
		disp_7seg_0 	    : out std_logic_vector(6 downto 0);
		disp_7seg_1 	    : out std_logic_vector(6 downto 0);
		disp_7seg_2			: out std_logic_vector(6 downto 0);
		disp_7seg_3			: out std_logic_vector(6 downto 0);
		disp_7seg_4			: out std_logic_vector(6 downto 0);
		disp_7seg_5			: out std_logic_vector(6 downto 0);
		-- 50 MHz oscillator on the DE10-Lite
		clk                 : in std_logic
	);
end lab3;

architecture rtl of lab3 is
	-- Each signal holds a 4-bit BCD value to display on one digit
	signal disp_7seg_0_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_1_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_2_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_3_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_4_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_5_value : std_logic_vector(3 downto 0) := "0000";

	-- 50 MHz clock needs to be divided down to a 1 Hz tick
	-- 50,000,000 fits in 26 bits (2^26 = 67,108,864)
	signal clk_counter  : std_logic_vector(25 downto 0) := (others => '0');
	signal one_sec_tick : std_logic := '0'; -- pulses high for 1 clock cycle every second

	-- Detect falling edges on KEY inputs (buttons are active-low)
	-- Synchronize to the 50 MHz clock for cleaner operation, not using falling_edge(KEY(n))
	signal key_prev    : std_logic_vector(3 downto 0) := "1111"; -- previous state of keys
	signal key_falling : std_logic_vector(3 downto 0);           -- '1' for one cycle on press

	-- Route button presses to either clock or alarm based on SW(8), these trigger the set/toggle inputs of the time_register instances
	signal clock_set_ss      : std_logic;
	signal clock_set_mm      : std_logic;
	signal clock_set_hh      : std_logic;
	signal clock_toggle_ampm : std_logic;
	signal alarm_set_ss      : std_logic;
	signal alarm_set_mm      : std_logic;
	signal alarm_set_hh      : std_logic;
	signal alarm_toggle_ampm : std_logic;

	-- Time outputs from time_register instances
	-- Current time (from clock register) and alarm time
	signal ss_ones       : std_logic_vector(3 downto 0);
	signal ss_tens       : std_logic_vector(3 downto 0);
	signal mm_ones       : std_logic_vector(3 downto 0);
	signal mm_tens       : std_logic_vector(3 downto 0);
	signal hh_ones       : std_logic_vector(3 downto 0);
	signal hh_tens       : std_logic_vector(3 downto 0);
	signal is_pm         : std_logic;

	signal alarm_ss_ones : std_logic_vector(3 downto 0);
	signal alarm_ss_tens : std_logic_vector(3 downto 0);
	signal alarm_mm_ones : std_logic_vector(3 downto 0);
	signal alarm_mm_tens : std_logic_vector(3 downto 0);
	signal alarm_hh_ones : std_logic_vector(3 downto 0);
	signal alarm_hh_tens : std_logic_vector(3 downto 0);
	signal alarm_is_pm   : std_logic;

	signal alarm_active  : std_logic := '0'; -- When time matches alarm, LED0 stays on for 60 seconds
	signal alarm_counter : std_logic_vector(5 downto 0) := "000000"; -- 6-bit counter counts down from 59 to 0

	-- Combinational match and its 1-cycle-delayed copy for rising-edge detection
	signal alarm_match      : std_logic;
	signal alarm_match_prev : std_logic := '0';

begin
	-- Drive GND pin low for external button ground connection
	GND(0) <= '0';

	u_disp_7seg_0 : entity work.disp7seg
		port map(
			a 			=> disp_7seg_0_value,
			segments 	=> disp_7seg_0
		);
	u_disp_7seg_1 : entity work.disp7seg
		port map(
			a 			=> disp_7seg_1_value,
			segments 	=> disp_7seg_1
		);
	u_disp_7seg_2 : entity work.disp7seg
		port map(
			a 			=> disp_7seg_2_value,
			segments 	=> disp_7seg_2
		);
	u_disp_7seg_3 : entity work.disp7seg
		port map(
			a 			=> disp_7seg_3_value,
			segments 	=> disp_7seg_3
		);
	u_disp_7seg_4 : entity work.disp7seg
		port map(
			a 			=> disp_7seg_4_value,
			segments 	=> disp_7seg_4
		);
	u_disp_7seg_5 : entity work.disp7seg
		port map(
			a 			=> disp_7seg_5_value,
			segments 	=> disp_7seg_5
		);

    -- Clock Divider, count from 0 to 49,999,999 (50 million cycles = 1 second), then produce a single-tick pulse
	process(clk)
	begin
		if rising_edge(clk) then
			if clk_counter = 49999999 then
				clk_counter <= (others => '0'); -- reset counter
				one_sec_tick <= '1';            -- pulse for one clock cycle
			else
				clk_counter <= clk_counter + 1;
				one_sec_tick <= '0';
			end if;
		end if;
	end process;

	-- Sample KEY inputs on every clock edge.
    -- A falling edge means the button was just pressed (active-low: HIGH=released, LOW=pressed)
	process(clk)
	begin
		if rising_edge(clk) then
			key_prev <= KEY;
			-- Falling edge: was '1' (released) last cycle, now '0' (pressed)
			key_falling <= key_prev and not KEY;
		end if;
	end process;

	-- Button routing: SW(8) selects whether buttons set clock or alarm
	clock_set_ss      <= key_falling(0) when SW(8) = '0' else '0';
	clock_set_mm      <= key_falling(1) when SW(8) = '0' else '0';
	clock_set_hh      <= key_falling(2) when SW(8) = '0' else '0';
	clock_toggle_ampm <= key_falling(3) when SW(8) = '0' else '0';

	-- When SW(8)=0, buttons go to clock; when SW(8)=1, to alarm
	alarm_set_ss      <= key_falling(0) when SW(8) = '1' else '0';
	alarm_set_mm      <= key_falling(1) when SW(8) = '1' else '0';
	alarm_set_hh      <= key_falling(2) when SW(8) = '1' else '0';
	alarm_toggle_ampm <= key_falling(3) when SW(8) = '1' else '0';

	-- Clock time register
    -- Holds current time, increments every second, settable via buttons
	-- inc = one_sec_tick so it counts up in real time
	u_clock_time : entity work.time_register
		port map(
			clk         => clk,
			sw_in       => SW(7 downto 0),
			set_ss      => clock_set_ss,
			set_mm      => clock_set_mm,
			set_hh      => clock_set_hh,
			toggle_ampm => clock_toggle_ampm,
			inc         => one_sec_tick,  -- increments every second
			ss_ones_out => ss_ones,
			ss_tens_out => ss_tens,
			mm_ones_out => mm_ones,
			mm_tens_out => mm_tens,
			hh_ones_out => hh_ones,
			hh_tens_out => hh_tens,
			is_pm_out   => is_pm
		);

	-- Alarm time register
	-- Holds alarm time, does NOT increment (inc tied to '0'),
	-- only settable via buttons when SW(8)=1
	u_alarm_time : entity work.time_register
		port map(
			clk         => clk,
			sw_in       => SW(7 downto 0),
			set_ss      => alarm_set_ss,
			set_mm      => alarm_set_mm,
			set_hh      => alarm_set_hh,
			toggle_ampm => alarm_toggle_ampm,
			inc         => '0',           -- alarm time never increments
			ss_ones_out => alarm_ss_ones,
			ss_tens_out => alarm_ss_tens,
			mm_ones_out => alarm_mm_ones,
			mm_tens_out => alarm_mm_tens,
			hh_ones_out => alarm_hh_ones,
			hh_tens_out => alarm_hh_tens,
			is_pm_out   => alarm_is_pm
		);

	-- Combinational match: true whenever current time equals alarm time
	alarm_match <= '1' when (ss_ones = alarm_ss_ones and ss_tens = alarm_ss_tens and
	                         mm_ones = alarm_mm_ones and mm_tens = alarm_mm_tens and
	                         hh_ones = alarm_hh_ones and hh_tens = alarm_hh_tens and
	                         is_pm = alarm_is_pm) else '0';

	-- Alarm trigger and countdown process.
	-- Uses rising-edge detection on alarm_match so the alarm starts immediately
	-- when the time registers update (no 1-second delay).
	process(clk)
	begin
		if rising_edge(clk) then
			alarm_match_prev <= alarm_match;

			-- Countdown: decrement each second while alarm is active
			if one_sec_tick = '1' then
				if alarm_active = '1' then
					if alarm_counter = "000000" then
						alarm_active <= '0'; -- 60 seconds elapsed, turn off alarm
					else
						alarm_counter <= alarm_counter - 1;
					end if;
				end if;
			end if;

			-- Rising edge of match: (re)start alarm immediately
			-- Placed after countdown so it takes priority if both trigger
			if alarm_match = '1' and alarm_match_prev = '0' then
				alarm_active  <= '1';
				alarm_counter <= "111011"; -- 59, counts down to 0 = 60 seconds total
			end if;
		end if;
	end process;

	-- Display output mapping (same style as lab2)
	-- SW8 = 0: show current time on 7-segs
	-- SW8 = 1: show alarm time on 7-segs
	-- Display layout: disp5|disp4  : disp3|disp2    : disp1|disp0
	--                HH tens|ones  : MM tens|ones   : SS tens|ones
	disp_7seg_0_value <= ss_ones      when SW(8) = '0' else alarm_ss_ones;
	disp_7seg_1_value <= ss_tens      when SW(8) = '0' else alarm_ss_tens;
	disp_7seg_2_value <= mm_ones      when SW(8) = '0' else alarm_mm_ones;
	disp_7seg_3_value <= mm_tens      when SW(8) = '0' else alarm_mm_tens;
	disp_7seg_4_value <= hh_ones      when SW(8) = '0' else alarm_hh_ones;
	disp_7seg_5_value <= hh_tens      when SW(8) = '0' else alarm_hh_tens;

	-- LED9 = AM/PM indicator (AM = off, PM = on)
	-- Shows alarm's AM/PM when in alarm display mode
	LED(9) <= is_pm when SW(8) = '0' else alarm_is_pm;

	-- LED0 = alarm ringing indicator (on for 60 seconds after match), gated by SW(9)
	LED(0) <= alarm_active and SW(9);

	-- Unused LEDs off
	LED(8 downto 1) <= "00000000";

end rtl;