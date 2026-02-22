library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab3 is
	port(
		SW 					: in std_logic_vector (9 downto 0);
		KEY 				: in std_logic_vector (1 downto 0);
		LED 				: out std_logic_vector(9 downto 0);
		disp_7seg_0 	    : out std_logic_vector(6 downto 0);
		disp_7seg_1 	    : out std_logic_vector(6 downto 0);
		disp_7seg_2			: out std_logic_vector(6 downto 0);
		disp_7seg_3			: out std_logic_vector(6 downto 0);
		disp_7seg_4			: out std_logic_vector(6 downto 0);
		disp_7seg_5			: out std_logic_vector(6 downto 0)
	);
end lab3;

architecture rtl of lab3 is
	signal disp_7seg_0_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_1_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_2_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_3_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_4_value : std_logic_vector(3 downto 0) := "0000";
	signal disp_7seg_5_value : std_logic_vector(3 downto 0) := "0000";
begin
    LED(2) <= '1';
end rtl;