library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity binary_adder is
	-- "3 downto 0" means 3 is the MSB, 0 is the LSB
	port (
		a, b		: in std_logic_vector(3 downto 0);
		carry_in : in std_logic;
		sum		: out std_logic_vector(3 downto 0);
		carry 	: out std_logic
	);
end binary_adder;

-- "a" is the name
architecture rtl of binary_adder is
	-- A "signal" is an internal wire / registor. This one is 5 bits wide. bit 4 is the carry, 3 to 0 are sum.
	signal sum_temp : std_logic_vector(4 downto 0);
begin
	process(a, b, sum_temp, carry_in)
	begin
		sum_temp <= ('0' & a) + ('0' & b) + ("0000" & carry_in);
		carry <= sum_temp(4);
		sum <= sum_temp(3 downto 0);
	end process;
end rtl;