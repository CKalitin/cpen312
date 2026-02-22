-- ============================================================
-- time_register.vhd
-- Reusable BCD time register with 12-hour format, AM/PM,
-- button-based setting with validation, and optional 1-second
-- incrementing. Instantiated twice in lab3: once for the clock
-- (with inc connected to 1-sec tick) and once for the alarm
-- (with inc tied to '0').
-- ============================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity time_register is
	port(
		clk         : in std_logic;  -- 50 MHz system clock

		-- BCD input from switches (same scheme as lab2)
		-- sw_in(7 downto 4) = tens digit, sw_in(3 downto 0) = ones digit
		sw_in       : in std_logic_vector(7 downto 0);

		-- Button pulses (active-high, one clock cycle each)
		set_ss      : in std_logic;  -- pulse to set seconds from sw_in
		set_mm      : in std_logic;  -- pulse to set minutes from sw_in
		set_hh      : in std_logic;  -- pulse to set hours from sw_in
		toggle_ampm : in std_logic;  -- pulse to toggle AM/PM

		-- Clock increment input
		-- Connect to 1-sec tick for the clock, tie to '0' for the alarm
		inc         : in std_logic;

		-- Time outputs (BCD digits)
		ss_ones_out : out std_logic_vector(3 downto 0);
		ss_tens_out : out std_logic_vector(3 downto 0);
		mm_ones_out : out std_logic_vector(3 downto 0);
		mm_tens_out : out std_logic_vector(3 downto 0);
		hh_ones_out : out std_logic_vector(3 downto 0);
		hh_tens_out : out std_logic_vector(3 downto 0);
		is_pm_out   : out std_logic
	);
end time_register;

architecture rtl of time_register is
	-- Internal BCD time registers (start at 12:00:00 AM)
	signal ss_ones : std_logic_vector(3 downto 0) := "0000"; -- seconds ones (0-9)
	signal ss_tens : std_logic_vector(3 downto 0) := "0000"; -- seconds tens (0-5)
	signal mm_ones : std_logic_vector(3 downto 0) := "0000"; -- minutes ones (0-9)
	signal mm_tens : std_logic_vector(3 downto 0) := "0000"; -- minutes tens (0-5)
	signal hh_ones : std_logic_vector(3 downto 0) := "0010"; -- hours ones (start at 2 for "12")
	signal hh_tens : std_logic_vector(3 downto 0) := "0001"; -- hours tens (start at 1 for "12")
	signal is_pm   : std_logic := '0';                       -- '0' = AM, '1' = PM
begin

	process(clk)
	begin
		if rising_edge(clk) then

			-- INCREMENTING: Cascading BCD increment on 1-second tick
			-- SS ones -> SS tens -> MM ones -> MM tens -> HH with
			-- 12-hour rollover and AM/PM toggle
			-- (When inc='0', this block is skipped entirely — used for alarm)
            
			if inc = '1' then
				if ss_ones = "1001" then
					-- Seconds ones = 9, roll over to 0 and carry
					ss_ones <= "0000";
					if ss_tens = "0101" then
						-- Seconds tens = 5 (was :59), carry to minutes
						ss_tens <= "0000";
						if mm_ones = "1001" then
							-- Minutes ones = 9, roll over to 0 and carry
							mm_ones <= "0000";
							if mm_tens = "0101" then
								-- Minutes tens = 5 (was :59), carry to hours
								mm_tens <= "0000";

								-- 12-hour rollover with AM/PM:
								-- 12 -> 1 (no AM/PM change)
								-- 11 -> 12 (toggle AM/PM)
								-- Otherwise just increment hour
								if hh_tens = "0001" and hh_ones = "0010" then
									-- Currently 12, next hour is 1 (no AM/PM toggle)
									hh_tens <= "0000";
									hh_ones <= "0001";
								elsif hh_tens = "0001" and hh_ones = "0001" then
									-- Currently 11, next hour is 12 (toggle AM/PM)
									hh_tens <= "0001";
									hh_ones <= "0010";
									is_pm <= not is_pm; -- 11:59:59 AM -> 12:00:00 PM
								elsif hh_ones = "1001" then
									-- Hour ones = 9, carry to tens (9 -> 10)
									hh_ones <= "0000";
									hh_tens <= hh_tens + 1;
								else
									-- Normal hour increment (1->2, 2->3, etc.)
									hh_ones <= hh_ones + 1;
								end if;
							else
								-- Normal minutes tens increment
								mm_tens <= mm_tens + 1;
							end if;
						else
							-- Normal minutes ones increment
							mm_ones <= mm_ones + 1;
						end if;
					else
						-- Normal seconds tens increment
						ss_tens <= ss_tens + 1;
					end if;
				else
					-- Normal seconds ones increment
					ss_ones <= ss_ones + 1;
				end if;
			end if;

			-- BUTTON SETTING: Validate and set from switches
			-- Runs AFTER increment so button value wins on same cycle
			-- Same BCD input scheme as lab2:
			--   sw_in(7 downto 4) = tens digit
			--   sw_in(3 downto 0) = ones digit

			-- Set seconds: validate BCD range 00-59
			-- Tens must be 0-5, ones must be 0-9
			if set_ss = '1' then
				if sw_in(7 downto 4) <= "0101" and sw_in(3 downto 0) <= "1001" then
					ss_tens <= sw_in(7 downto 4);
					ss_ones <= sw_in(3 downto 0);
				else
					-- Invalid input: reset to 00
					ss_tens <= "0000";
					ss_ones <= "0000";
				end if;
			end if;

			-- Set minutes: validate BCD range 00-59 (same as seconds)
			if set_mm = '1' then
				if sw_in(7 downto 4) <= "0101" and sw_in(3 downto 0) <= "1001" then
					mm_tens <= sw_in(7 downto 4);
					mm_ones <= sw_in(3 downto 0);
				else
					-- Invalid input: reset to 00
					mm_tens <= "0000";
					mm_ones <= "0000";
				end if;
			end if;

			-- Set hours: validate BCD range 01-12 (12-hour format)
			-- Valid: tens=0 & ones=1..9 (hours 01-09)
			--    OR: tens=1 & ones=0..2 (hours 10-12)
			if set_hh = '1' then
				if (sw_in(7 downto 4) = "0000" and sw_in(3 downto 0) >= "0001" and sw_in(3 downto 0) <= "1001") or
				   (sw_in(7 downto 4) = "0001" and sw_in(3 downto 0) <= "0010") then
					hh_tens <= sw_in(7 downto 4);
					hh_ones <= sw_in(3 downto 0);
				else
					-- Invalid input: reset to 00 on display
					hh_tens <= "0000";
					hh_ones <= "0000";
				end if;
			end if;

			-- Toggle AM/PM
			if toggle_ampm = '1' then
				is_pm <= not is_pm;
			end if;

		end if;
	end process;

	-- Drive outputs from internal registers
	ss_ones_out <= ss_ones;
	ss_tens_out <= ss_tens;
	mm_ones_out <= mm_ones;
	mm_tens_out <= mm_tens;
	hh_ones_out <= hh_ones;
	hh_tens_out <= hh_tens;
	is_pm_out   <= is_pm;

end rtl;
