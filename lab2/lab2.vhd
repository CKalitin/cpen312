library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab2 is
	port(
		SW 	: in std_logic_vector (7 downto 0);
		LED 	: out std_logic_vector(7 downto 0)
	);
end lab2;

architecture rtl of lab2 is
begin
	-- Entity instantiation, "work." is the library, for some reason you always use it
	u_adder : entity work.binary_adder
		port map(
			a 			=> SW(3 downto 0),
			b			=> SW (7 downto 4),
			carry_in => '0',
			sum 		=> LED(3 downto 0),
			carry 	=> LED(4)
		);
		LED(7 downto 5) <= (others => '0');
end rtl;