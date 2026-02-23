library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity disp7seg is
    Port ( 
        a : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input (0-F)
        segments  : out STD_LOGIC_VECTOR (6 downto 0)  -- 7-bit output (a-g)
    );
end disp7seg;

architecture rtl of disp7seg is
begin
    process(a)
    begin
        case a is
            when "0000" => segments <= "1000000"; -- Displays '0' (gfedcba)
            when "0001" => segments <= "1111001"; -- Displays '1'
            when "0010" => segments <= "0100100"; -- Displays '2'
            when "0011" => segments <= "0110000"; -- Displays '3'
            when "0100" => segments <= "0011001"; -- Displays '4'
            when "0101" => segments <= "0010010"; -- Displays '5'
            when "0110" => segments <= "0000010"; -- Displays '6'
            when "0111" => segments <= "1111000"; -- Displays '7'
            when "1000" => segments <= "0000000"; -- Displays '8'
            when "1001" => segments <= "0010000"; -- Displays '9'
            when "1010" => segments <= "0001000"; -- Displays 'A'
            when "1011" => segments <= "0000011"; -- Displays 'b'
            when "1100" => segments <= "1000110"; -- Displays 'C'
            when "1101" => segments <= "0100001"; -- Displays 'd'
            when "1110" => segments <= "0000110"; -- Displays 'E'
            when "1111" => segments <= "0001110"; -- Displays 'F'
            when others => segments <= "1111111"; -- Blank for invalid inputs
        end case;
    end process;

end rtl;