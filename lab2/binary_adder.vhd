library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity binary_adder is
	-- "3 downto 0" means 3 is the MSB, 0 is the LSB
	port (
		a,b 	: in std_logic_vector(7 downto 0);
		carry_in : in std_logic;
		add 	: in std_logic; -- 1 for add, 0 for sub
		sum		: out std_logic_vector(7 downto 0);
		carry 	: out std_logic
	);
end binary_adder;

-- "rtl" is the name
architecture rtl of binary_adder is
	-- A "signal" is an internal wire / registor. This one is 5 bits wide. bit 4 is the carry, 3 to 0 are sum.
	signal sum_temp : std_logic_vector(8 downto 0);
begin
	process(a, b, sum_temp, carry_in, add)
	begin
		if add = '1' then
			sum_temp <= ('0' & a) + ('0' & b) + ("00000000" & carry_in);
		else
			sum_temp <= ('0' & a) - ('0' & b) - ("00000000" & carry_in);
			if (a < b) then
				sum_temp <= "000000000";
			end if;
		end if;
		carry <= sum_temp(8);
		sum <= sum_temp(7 downto 0);
	end process;
end rtl;