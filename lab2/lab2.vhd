library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab2 is
	port(
		-- SW 7:0 for numbers
		-- SW 8 to select Binary or BCD
		-- SW 9 for selecting add or sub
		SW 					: in std_logic_vector (9 downto 0);
		-- KEY 0 to latch number
		KEY 				: in std_logic_vector (1 downto 0);
		LED 				: out std_logic_vector(9 downto 0);
		disp_7seg_0 	: out std_logic_vector(6 downto 0);
		disp_7seg_1 	: out std_logic_vector(6 downto 0);
		disp_7seg_2			: out std_logic_vector(6 downto 0);
		disp_7seg_3			: out std_logic_vector(6 downto 0);
		disp_7seg_4			: out std_logic_vector(6 downto 0);
		disp_7seg_5			: out std_logic_vector(6 downto 0)
	);
end lab2;

architecture rtl of lab2 is
	signal bin_a : std_logic_vector(7 downto 0) := "00000000";
	signal bin_b : std_logic_vector(7 downto 0) := "00000000";

	signal bin_sum : std_logic_vector(7 downto 0) := "00000000";
	signal bin_carry : std_logic := '0';

	signal disp_7seg_0_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_1_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_2_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_3_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_4_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_5_value : std_logic_vector(3 downto 0) := "0000";

	signal bcd_a : std_logic_vector(7 downto 0) := "00000000";
	signal bcd_b : std_logic_vector(7 downto 0) := "00000000";
	signal bcd_sum : std_logic_vector(7 downto 0) := "00000000";

	signal bcd_sum_overflow : std_logic := '0';
	signal bcd_input_a_overflow : std_logic := '0';
	signal bcd_input_b_overflow : std_logic := '0';
begin
	u_adder : entity work.binary_adder
		port map(
			a 			=> bin_a,
			b			=> bin_b,
			carry_in	 => '0',
			add			=> SW(9),
			sum 		=> bin_sum,
			carry 		=> bin_carry
		);

	u_bcd_bcd_addsub_8bit_8bit : entity work.bcd_addsub_8bit
		port map(
			a 			=> bcd_a,
			b			=> bcd_b,
			carry_in	 => not SW(9),  -- '1' for subtract (to make it 10's complement instead of 9's compliment), '0' for add
			add      => SW(9),
			sum 		=> bcd_sum,
			overflow 	=> bcd_sum_overflow
		);

	u_disp_7seg_0 : entity work.disp7seg
		port map(
			a 			=> disp_7seg_0_value,
			segments 	=> disp_7seg_0 -- oops got the order wrong, upper lower swapped
		);
	u_disp_7seg_1 : entity work.disp7seg
		port map(
			a 			=> disp_7seg_1_value,
			segments 	=> disp_7seg_1 -- oops got the order wrong, upper lower swapped
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

	-- Binary mode:

	-- KEY(0): latch first number (binary mode only)
	process(KEY(0))
	begin
		if falling_edge(KEY(0)) then
			if SW(8) = '1' then
				bin_a <= SW(7 downto 0);
			end if;
		end if;
	end process;

	-- KEY(1): latch second number (binary mode only)
	process(KEY(1))
	begin
		if falling_edge(KEY(1)) then
			if SW(8) = '1' then
				bin_b <= SW(7 downto 0);
			end if;
		end if;
	end process;

	-- BCD mode:

	process(KEY(0))
	begin
		if falling_edge(KEY(0)) then
			if SW(8) = '0' then
				bcd_a <= SW(7 downto 4) & SW(3 downto 0);

				if (SW(7 downto 4) > "1001") or (SW(3 downto 0) > "1001") then
					bcd_input_a_overflow <= '1';
				else
					bcd_input_a_overflow <= '0';
				end if;
			end if;
		end if;
	end process;

	process(KEY(1))
	begin
		if falling_edge(KEY(1)) then
			if SW(8) = '0' then
				bcd_b <= SW(7 downto 4) & SW(3 downto 0);

				if (SW(7 downto 4) > "1001") or (SW(3 downto 0) > "1001") then
					bcd_input_b_overflow <= '1';
				else
					bcd_input_b_overflow <= '0';
				end if;
			end if;
		end if;
	end process;
	
	-- Binary: led_out (7 downto 0) is the sum, led_out(8) is the carry, led_out(9) is unused
	-- BCD: led_out pin 3 is overflow
	LED(9 downto 0) <= "000000" & (bcd_sum_overflow or bcd_input_a_overflow or bcd_input_b_overflow) & "000" when SW(8) = '0' else "0" & bin_carry & bin_sum;
	
	-- Display according to which mode we're in (BCD or binary), 0 = BCD, 1 = binary
	disp_7seg_0_value <= bcd_sum(3 downto 0) when SW(8) = '0' else bin_b(3 downto 0);
	disp_7seg_1_value <= bcd_sum(7 downto 4) when SW(8) = '0' else bin_a(3 downto 0);
	disp_7seg_2_value <= bcd_b(3 downto 0) when SW(8) = '0' else "0000";
	disp_7seg_3_value <= bcd_b(7 downto 4) when SW(8) = '0' else "0000";
	disp_7seg_4_value <= bcd_a(3 downto 0) when SW(8) = '0' else "0000";
	disp_7seg_5_value <= bcd_a(7 downto 4) when SW(8) = '0' else "0000";

	
end rtl;