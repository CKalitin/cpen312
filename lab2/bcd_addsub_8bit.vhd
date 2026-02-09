library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bcd_addsub_8bit is
    port(
        a, b     : in  std_logic_vector(7 downto 0);  -- Two 8-bit BCD numbers (2 digits each)
        carry_in : in  std_logic;
        add      : in  std_logic;                      -- '1' for add, '0' for subtract
        sum      : out std_logic_vector(7 downto 0);  -- 8-bit BCD result
        overflow : out std_logic                       -- Overflow/carry out
    );
end bcd_addsub_8bit;

architecture rtl of bcd_addsub_8bit is
    signal carry_mid : std_logic;  -- Carry between lower and upper digit
    signal carry_out : std_logic;
begin
    -- Lower 4 bits (least significant BCD digit)
    u_bcd_lower : entity work.bcd_addsub
        port map(
            a        => a(3 downto 0),
            b        => b(3 downto 0),
            add      => add,
            carry_in => carry_in,
            sum      => sum(3 downto 0),
            carry    => carry_mid
        );
    
    -- Upper 4 bits (most significant BCD digit)
    u_bcd_upper : entity work.bcd_addsub
        port map(
            a        => a(7 downto 4),
            b        => b(7 downto 4),
            add      => add,
            carry_in => carry_mid,
            sum      => sum(7 downto 4),
            carry    => carry_out
        );

    -- Overflow logic: carry for add, inverted carry (borrow) for subtract
    overflow <= carry_out when add = '1' else not carry_out;
    
    -- fucking beauty
end rtl;
