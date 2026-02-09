library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bcd_adder is
    port(
        a,b      : in   std_logic_vector(3 downto 0);
        carry_in : in   std_logic;
        sum      : out  std_logic_vector(3 downto 0); 
        carry    : out  std_logic  
    );
end bcd_adder;

architecture a of bcd_adder is
signal sum_temp : std_logic_vector(4 downto 0);
signal sum_temp_adjs : std_logic_vector(4 downto 0);

begin

process(a,b,sum_temp,carry_in, sum_temp_adjs)
begin
    sum_temp <= ('0' & a) + ('0' & b) + ("0000" & carry_in);
	 sum_temp_adjs <= sum_temp + "00110";
    if(sum_temp > 9) then
        carry <= '1';
        sum <= sum_temp_adjs(3 downto 0);
    else
        carry <= '0';
        sum <= sum_temp(3 downto 0);
    end if; 
end process;   

end a;