-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.1 Build 150 06/03/2015 SJ Web Edition"

-- DATE "11/05/2015 11:14:48"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LatchExample IS
    PORT (
	HEX0 : OUT std_logic_vector(0 TO 6);
	KEY0 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	KEY1 : IN std_logic;
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	KEY2 : IN std_logic;
	HEX5 : OUT std_logic_vector(0 TO 6)
	);
END LatchExample;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY0	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY1	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY2	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF LatchExample IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_KEY2 : std_logic;
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \KEY0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \U03|15~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \U03|16~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \U03|14~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \U03|13~q\ : std_logic;
SIGNAL \U09|Mux0~0_combout\ : std_logic;
SIGNAL \U09|Mux1~0_combout\ : std_logic;
SIGNAL \U09|Mux2~0_combout\ : std_logic;
SIGNAL \U09|Mux3~0_combout\ : std_logic;
SIGNAL \U09|Mux4~0_combout\ : std_logic;
SIGNAL \U09|Mux5~0_combout\ : std_logic;
SIGNAL \U09|Mux6~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \U03|18~q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \U03|19~q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \U03|20~q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \U03|17~q\ : std_logic;
SIGNAL \U08|Mux0~0_combout\ : std_logic;
SIGNAL \U08|Mux1~0_combout\ : std_logic;
SIGNAL \U08|Mux2~0_combout\ : std_logic;
SIGNAL \U08|Mux3~0_combout\ : std_logic;
SIGNAL \U08|Mux4~0_combout\ : std_logic;
SIGNAL \U08|Mux5~0_combout\ : std_logic;
SIGNAL \U08|Mux6~0_combout\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \KEY1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \U02|15~q\ : std_logic;
SIGNAL \U02|16~q\ : std_logic;
SIGNAL \U02|14~q\ : std_logic;
SIGNAL \U02|13~q\ : std_logic;
SIGNAL \U07|Mux0~0_combout\ : std_logic;
SIGNAL \U07|Mux1~0_combout\ : std_logic;
SIGNAL \U07|Mux2~0_combout\ : std_logic;
SIGNAL \U07|Mux3~0_combout\ : std_logic;
SIGNAL \U07|Mux4~0_combout\ : std_logic;
SIGNAL \U07|Mux5~0_combout\ : std_logic;
SIGNAL \U07|Mux6~0_combout\ : std_logic;
SIGNAL \U02|17~q\ : std_logic;
SIGNAL \U02|20~q\ : std_logic;
SIGNAL \U02|19~q\ : std_logic;
SIGNAL \U02|18~q\ : std_logic;
SIGNAL \U06|Mux0~0_combout\ : std_logic;
SIGNAL \U06|Mux1~0_combout\ : std_logic;
SIGNAL \U06|Mux2~0_combout\ : std_logic;
SIGNAL \U06|Mux3~0_combout\ : std_logic;
SIGNAL \U06|Mux4~0_combout\ : std_logic;
SIGNAL \U06|Mux5~0_combout\ : std_logic;
SIGNAL \U06|Mux6~0_combout\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \KEY2~inputCLKENA0_outclk\ : std_logic;
SIGNAL \U01|16~q\ : std_logic;
SIGNAL \U01|14~q\ : std_logic;
SIGNAL \U01|13~q\ : std_logic;
SIGNAL \U01|15~feeder_combout\ : std_logic;
SIGNAL \U01|15~q\ : std_logic;
SIGNAL \U05|Mux0~0_combout\ : std_logic;
SIGNAL \U05|Mux1~0_combout\ : std_logic;
SIGNAL \U05|Mux2~0_combout\ : std_logic;
SIGNAL \U05|Mux3~0_combout\ : std_logic;
SIGNAL \U05|Mux4~0_combout\ : std_logic;
SIGNAL \U05|Mux5~0_combout\ : std_logic;
SIGNAL \U05|Mux6~0_combout\ : std_logic;
SIGNAL \U01|18~feeder_combout\ : std_logic;
SIGNAL \U01|18~q\ : std_logic;
SIGNAL \U01|20~feeder_combout\ : std_logic;
SIGNAL \U01|20~q\ : std_logic;
SIGNAL \U01|17~feeder_combout\ : std_logic;
SIGNAL \U01|17~q\ : std_logic;
SIGNAL \U01|19~q\ : std_logic;
SIGNAL \U04|Mux0~0_combout\ : std_logic;
SIGNAL \U04|Mux1~0_combout\ : std_logic;
SIGNAL \U04|Mux2~0_combout\ : std_logic;
SIGNAL \U04|Mux3~0_combout\ : std_logic;
SIGNAL \U04|Mux4~0_combout\ : std_logic;
SIGNAL \U04|Mux5~0_combout\ : std_logic;
SIGNAL \U04|Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \U04|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U01|ALT_INV_20~q\ : std_logic;
SIGNAL \U01|ALT_INV_19~q\ : std_logic;
SIGNAL \U01|ALT_INV_18~q\ : std_logic;
SIGNAL \U01|ALT_INV_17~q\ : std_logic;
SIGNAL \U05|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U01|ALT_INV_16~q\ : std_logic;
SIGNAL \U01|ALT_INV_15~q\ : std_logic;
SIGNAL \U01|ALT_INV_14~q\ : std_logic;
SIGNAL \U01|ALT_INV_13~q\ : std_logic;
SIGNAL \U06|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U02|ALT_INV_20~q\ : std_logic;
SIGNAL \U02|ALT_INV_19~q\ : std_logic;
SIGNAL \U02|ALT_INV_18~q\ : std_logic;
SIGNAL \U02|ALT_INV_17~q\ : std_logic;
SIGNAL \U07|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U02|ALT_INV_16~q\ : std_logic;
SIGNAL \U02|ALT_INV_15~q\ : std_logic;
SIGNAL \U02|ALT_INV_14~q\ : std_logic;
SIGNAL \U02|ALT_INV_13~q\ : std_logic;
SIGNAL \U08|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U03|ALT_INV_20~q\ : std_logic;
SIGNAL \U03|ALT_INV_19~q\ : std_logic;
SIGNAL \U03|ALT_INV_18~q\ : std_logic;
SIGNAL \U03|ALT_INV_17~q\ : std_logic;
SIGNAL \U09|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U03|ALT_INV_16~q\ : std_logic;
SIGNAL \U03|ALT_INV_15~q\ : std_logic;
SIGNAL \U03|ALT_INV_14~q\ : std_logic;
SIGNAL \U03|ALT_INV_13~q\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
ww_KEY0 <= KEY0;
ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
ww_KEY1 <= KEY1;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
ww_KEY2 <= KEY2;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\U04|ALT_INV_Mux6~0_combout\ <= NOT \U04|Mux6~0_combout\;
\U01|ALT_INV_20~q\ <= NOT \U01|20~q\;
\U01|ALT_INV_19~q\ <= NOT \U01|19~q\;
\U01|ALT_INV_18~q\ <= NOT \U01|18~q\;
\U01|ALT_INV_17~q\ <= NOT \U01|17~q\;
\U05|ALT_INV_Mux6~0_combout\ <= NOT \U05|Mux6~0_combout\;
\U01|ALT_INV_16~q\ <= NOT \U01|16~q\;
\U01|ALT_INV_15~q\ <= NOT \U01|15~q\;
\U01|ALT_INV_14~q\ <= NOT \U01|14~q\;
\U01|ALT_INV_13~q\ <= NOT \U01|13~q\;
\U06|ALT_INV_Mux6~0_combout\ <= NOT \U06|Mux6~0_combout\;
\U02|ALT_INV_20~q\ <= NOT \U02|20~q\;
\U02|ALT_INV_19~q\ <= NOT \U02|19~q\;
\U02|ALT_INV_18~q\ <= NOT \U02|18~q\;
\U02|ALT_INV_17~q\ <= NOT \U02|17~q\;
\U07|ALT_INV_Mux6~0_combout\ <= NOT \U07|Mux6~0_combout\;
\U02|ALT_INV_16~q\ <= NOT \U02|16~q\;
\U02|ALT_INV_15~q\ <= NOT \U02|15~q\;
\U02|ALT_INV_14~q\ <= NOT \U02|14~q\;
\U02|ALT_INV_13~q\ <= NOT \U02|13~q\;
\U08|ALT_INV_Mux6~0_combout\ <= NOT \U08|Mux6~0_combout\;
\U03|ALT_INV_20~q\ <= NOT \U03|20~q\;
\U03|ALT_INV_19~q\ <= NOT \U03|19~q\;
\U03|ALT_INV_18~q\ <= NOT \U03|18~q\;
\U03|ALT_INV_17~q\ <= NOT \U03|17~q\;
\U09|ALT_INV_Mux6~0_combout\ <= NOT \U09|Mux6~0_combout\;
\U03|ALT_INV_16~q\ <= NOT \U03|16~q\;
\U03|ALT_INV_15~q\ <= NOT \U03|15~q\;
\U03|ALT_INV_14~q\ <= NOT \U03|14~q\;
\U03|ALT_INV_13~q\ <= NOT \U03|13~q\;

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U09|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X10_Y0_N92
\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: CLKCTRL_G6
\KEY0~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY0~input_o\,
	outclk => \KEY0~inputCLKENA0_outclk\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X42_Y1_N35
\U03|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|15~q\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X42_Y1_N44
\U03|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|16~q\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X42_Y1_N8
\U03|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|14~q\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X42_Y1_N32
\U03|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|13~q\);

-- Location: MLABCELL_X42_Y1_N9
\U09|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux0~0_combout\ = ( \U03|13~q\ & ( !\U03|16~q\ $ (((\U03|14~q\) # (\U03|15~q\))) ) ) # ( !\U03|13~q\ & ( (!\U03|14~q\ & (\U03|15~q\)) # (\U03|14~q\ & ((\U03|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001110010011100100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_15~q\,
	datab => \U03|ALT_INV_16~q\,
	datac => \U03|ALT_INV_14~q\,
	dataf => \U03|ALT_INV_13~q\,
	combout => \U09|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y1_N48
\U09|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux1~0_combout\ = ( \U03|13~q\ & ( (!\U03|14~q\ & (\U03|15~q\)) # (\U03|14~q\ & ((\U03|16~q\))) ) ) # ( !\U03|13~q\ & ( (!\U03|15~q\ & (\U03|14~q\ & \U03|16~q\)) # (\U03|15~q\ & ((\U03|16~q\) # (\U03|14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_15~q\,
	datab => \U03|ALT_INV_14~q\,
	datac => \U03|ALT_INV_16~q\,
	dataf => \U03|ALT_INV_13~q\,
	combout => \U09|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y1_N51
\U09|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux2~0_combout\ = ( \U03|13~q\ & ( (\U03|16~q\ & ((\U03|14~q\) # (\U03|15~q\))) ) ) # ( !\U03|13~q\ & ( (!\U03|15~q\ & (\U03|14~q\)) # (\U03|15~q\ & ((\U03|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_15~q\,
	datab => \U03|ALT_INV_14~q\,
	datac => \U03|ALT_INV_16~q\,
	dataf => \U03|ALT_INV_13~q\,
	combout => \U09|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y1_N30
\U09|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux3~0_combout\ = ( \U03|14~q\ & ( ((\U03|15~q\ & \U03|13~q\)) # (\U03|16~q\) ) ) # ( !\U03|14~q\ & ( !\U03|15~q\ $ (((!\U03|13~q\) # (\U03|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U03|ALT_INV_16~q\,
	datac => \U03|ALT_INV_15~q\,
	datad => \U03|ALT_INV_13~q\,
	dataf => \U03|ALT_INV_14~q\,
	combout => \U09|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y1_N6
\U09|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux4~0_combout\ = ( \U03|13~q\ ) # ( !\U03|13~q\ & ( (!\U03|14~q\ & (\U03|15~q\)) # (\U03|14~q\ & ((\U03|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_15~q\,
	datab => \U03|ALT_INV_16~q\,
	datad => \U03|ALT_INV_14~q\,
	dataf => \U03|ALT_INV_13~q\,
	combout => \U09|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y1_N33
\U09|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux5~0_combout\ = ( \U03|13~q\ & ( (!\U03|16~q\ $ (\U03|15~q\)) # (\U03|14~q\) ) ) # ( !\U03|13~q\ & ( (!\U03|15~q\ & ((\U03|14~q\))) # (\U03|15~q\ & (\U03|16~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001111001111001111111100111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U03|ALT_INV_16~q\,
	datac => \U03|ALT_INV_14~q\,
	datad => \U03|ALT_INV_15~q\,
	dataf => \U03|ALT_INV_13~q\,
	combout => \U09|Mux5~0_combout\);

-- Location: MLABCELL_X42_Y1_N42
\U09|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U09|Mux6~0_combout\ = ( \U03|13~q\ & ( (!\U03|14~q\ & (!\U03|15~q\ $ (!\U03|16~q\))) # (\U03|14~q\ & (!\U03|15~q\ & !\U03|16~q\)) ) ) # ( !\U03|13~q\ & ( !\U03|16~q\ $ (((!\U03|14~q\ & !\U03|15~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000000111100110000000011110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U03|ALT_INV_14~q\,
	datac => \U03|ALT_INV_15~q\,
	datad => \U03|ALT_INV_16~q\,
	dataf => \U03|ALT_INV_13~q\,
	combout => \U09|Mux6~0_combout\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X40_Y1_N38
\U03|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|18~q\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X40_Y1_N14
\U03|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|19~q\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X40_Y1_N20
\U03|20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|20~q\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X40_Y1_N32
\U03|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|17~q\);

-- Location: LABCELL_X40_Y1_N24
\U08|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux0~0_combout\ = ( \U03|17~q\ & ( !\U03|20~q\ $ (((\U03|19~q\) # (\U03|18~q\))) ) ) # ( !\U03|17~q\ & ( (!\U03|18~q\ & (\U03|19~q\)) # (\U03|18~q\ & ((\U03|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_18~q\,
	datab => \U03|ALT_INV_19~q\,
	datac => \U03|ALT_INV_20~q\,
	dataf => \U03|ALT_INV_17~q\,
	combout => \U08|Mux0~0_combout\);

-- Location: LABCELL_X40_Y1_N27
\U08|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux1~0_combout\ = ( \U03|20~q\ & ( (\U03|19~q\) # (\U03|18~q\) ) ) # ( !\U03|20~q\ & ( (\U03|19~q\ & (!\U03|18~q\ $ (!\U03|17~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_18~q\,
	datab => \U03|ALT_INV_19~q\,
	datac => \U03|ALT_INV_17~q\,
	dataf => \U03|ALT_INV_20~q\,
	combout => \U08|Mux1~0_combout\);

-- Location: LABCELL_X40_Y1_N0
\U08|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux2~0_combout\ = ( \U03|19~q\ & ( \U03|20~q\ ) ) # ( !\U03|19~q\ & ( (\U03|18~q\ & ((!\U03|17~q\) # (\U03|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U03|ALT_INV_17~q\,
	datac => \U03|ALT_INV_20~q\,
	datad => \U03|ALT_INV_18~q\,
	dataf => \U03|ALT_INV_19~q\,
	combout => \U08|Mux2~0_combout\);

-- Location: LABCELL_X40_Y1_N6
\U08|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux3~0_combout\ = ( \U03|17~q\ & ( (!\U03|18~q\ & (!\U03|19~q\ $ (\U03|20~q\))) # (\U03|18~q\ & ((\U03|20~q\) # (\U03|19~q\))) ) ) # ( !\U03|17~q\ & ( (!\U03|18~q\ & (\U03|19~q\)) # (\U03|18~q\ & ((\U03|20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110010111100101111001011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_18~q\,
	datab => \U03|ALT_INV_19~q\,
	datac => \U03|ALT_INV_20~q\,
	dataf => \U03|ALT_INV_17~q\,
	combout => \U08|Mux3~0_combout\);

-- Location: LABCELL_X40_Y1_N9
\U08|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux4~0_combout\ = ( \U03|20~q\ & ( ((\U03|17~q\) # (\U03|19~q\)) # (\U03|18~q\) ) ) # ( !\U03|20~q\ & ( ((!\U03|18~q\ & \U03|19~q\)) # (\U03|17~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_18~q\,
	datab => \U03|ALT_INV_19~q\,
	datac => \U03|ALT_INV_17~q\,
	dataf => \U03|ALT_INV_20~q\,
	combout => \U08|Mux4~0_combout\);

-- Location: LABCELL_X40_Y1_N42
\U08|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux5~0_combout\ = ( \U03|19~q\ & ( ((\U03|18~q\ & \U03|17~q\)) # (\U03|20~q\) ) ) # ( !\U03|19~q\ & ( ((\U03|17~q\ & !\U03|20~q\)) # (\U03|18~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_18~q\,
	datab => \U03|ALT_INV_17~q\,
	datac => \U03|ALT_INV_20~q\,
	dataf => \U03|ALT_INV_19~q\,
	combout => \U08|Mux5~0_combout\);

-- Location: LABCELL_X40_Y1_N45
\U08|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U08|Mux6~0_combout\ = ( \U03|20~q\ & ( (!\U03|18~q\ & !\U03|19~q\) ) ) # ( !\U03|20~q\ & ( (!\U03|18~q\ & ((\U03|19~q\))) # (\U03|18~q\ & ((!\U03|17~q\) # (!\U03|19~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111001011110010111100101111010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U03|ALT_INV_18~q\,
	datab => \U03|ALT_INV_17~q\,
	datac => \U03|ALT_INV_19~q\,
	dataf => \U03|ALT_INV_20~q\,
	combout => \U08|Mux6~0_combout\);

-- Location: IOIBUF_X11_Y0_N35
\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: CLKCTRL_G4
\KEY1~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY1~input_o\,
	outclk => \KEY1~inputCLKENA0_outclk\);

-- Location: FF_X42_Y1_N38
\U02|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|15~q\);

-- Location: FF_X42_Y1_N14
\U02|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|16~q\);

-- Location: FF_X42_Y1_N2
\U02|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|14~q\);

-- Location: FF_X42_Y1_N26
\U02|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|13~q\);

-- Location: MLABCELL_X42_Y1_N45
\U07|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux0~0_combout\ = ( \U02|13~q\ & ( !\U02|16~q\ $ (((\U02|14~q\) # (\U02|15~q\))) ) ) # ( !\U02|13~q\ & ( (!\U02|14~q\ & (\U02|15~q\)) # (\U02|14~q\ & ((\U02|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111110100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_15~q\,
	datac => \U02|ALT_INV_16~q\,
	datad => \U02|ALT_INV_14~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y1_N39
\U07|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux1~0_combout\ = ( \U02|13~q\ & ( (!\U02|14~q\ & ((\U02|15~q\))) # (\U02|14~q\ & (\U02|16~q\)) ) ) # ( !\U02|13~q\ & ( (!\U02|14~q\ & (\U02|16~q\ & \U02|15~q\)) # (\U02|14~q\ & ((\U02|15~q\) # (\U02|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_14~q\,
	datab => \U02|ALT_INV_16~q\,
	datad => \U02|ALT_INV_15~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y1_N27
\U07|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux2~0_combout\ = ( \U02|13~q\ & ( (\U02|16~q\ & ((\U02|15~q\) # (\U02|14~q\))) ) ) # ( !\U02|13~q\ & ( (!\U02|15~q\ & (\U02|14~q\)) # (\U02|15~q\ & ((\U02|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_14~q\,
	datab => \U02|ALT_INV_16~q\,
	datad => \U02|ALT_INV_15~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y1_N24
\U07|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux3~0_combout\ = (!\U02|14~q\ & (!\U02|15~q\ $ (((!\U02|13~q\) # (\U02|16~q\))))) # (\U02|14~q\ & (((\U02|15~q\ & \U02|13~q\)) # (\U02|16~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110010111000110111001011100011011100101110001101110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_14~q\,
	datab => \U02|ALT_INV_16~q\,
	datac => \U02|ALT_INV_15~q\,
	datad => \U02|ALT_INV_13~q\,
	combout => \U07|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y1_N0
\U07|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux4~0_combout\ = ( \U02|13~q\ ) # ( !\U02|13~q\ & ( (!\U02|14~q\ & ((\U02|15~q\))) # (\U02|14~q\ & (\U02|16~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U02|ALT_INV_16~q\,
	datac => \U02|ALT_INV_15~q\,
	datad => \U02|ALT_INV_14~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y1_N36
\U07|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux5~0_combout\ = ( \U02|13~q\ & ( (!\U02|16~q\ $ (\U02|15~q\)) # (\U02|14~q\) ) ) # ( !\U02|13~q\ & ( (!\U02|15~q\ & (\U02|14~q\)) # (\U02|15~q\ & ((\U02|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001111011101011101111101110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_14~q\,
	datab => \U02|ALT_INV_16~q\,
	datad => \U02|ALT_INV_15~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux5~0_combout\);

-- Location: MLABCELL_X42_Y1_N12
\U07|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U07|Mux6~0_combout\ = ( \U02|16~q\ & ( \U02|13~q\ & ( (!\U02|14~q\ & !\U02|15~q\) ) ) ) # ( !\U02|16~q\ & ( \U02|13~q\ & ( !\U02|14~q\ $ (!\U02|15~q\) ) ) ) # ( \U02|16~q\ & ( !\U02|13~q\ & ( (!\U02|14~q\ & !\U02|15~q\) ) ) ) # ( !\U02|16~q\ & ( 
-- !\U02|13~q\ & ( (\U02|15~q\) # (\U02|14~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111101000001010000001011010010110101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_14~q\,
	datac => \U02|ALT_INV_15~q\,
	datae => \U02|ALT_INV_16~q\,
	dataf => \U02|ALT_INV_13~q\,
	combout => \U07|Mux6~0_combout\);

-- Location: FF_X40_Y1_N11
\U02|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|17~q\);

-- Location: FF_X40_Y1_N8
\U02|20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|20~q\);

-- Location: FF_X40_Y1_N29
\U02|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|19~q\);

-- Location: FF_X40_Y1_N50
\U02|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|18~q\);

-- Location: LABCELL_X40_Y1_N39
\U06|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux0~0_combout\ = ( \U02|19~q\ & ( \U02|18~q\ & ( \U02|20~q\ ) ) ) # ( !\U02|19~q\ & ( \U02|18~q\ & ( \U02|20~q\ ) ) ) # ( \U02|19~q\ & ( !\U02|18~q\ & ( (!\U02|17~q\) # (\U02|20~q\) ) ) ) # ( !\U02|19~q\ & ( !\U02|18~q\ & ( (\U02|17~q\ & 
-- !\U02|20~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100101110111011101100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_17~q\,
	datab => \U02|ALT_INV_20~q\,
	datae => \U02|ALT_INV_19~q\,
	dataf => \U02|ALT_INV_18~q\,
	combout => \U06|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y1_N3
\U06|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux1~0_combout\ = ( \U02|20~q\ & ( (\U02|18~q\) # (\U02|19~q\) ) ) # ( !\U02|20~q\ & ( (\U02|19~q\ & (!\U02|17~q\ $ (!\U02|18~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_17~q\,
	datac => \U02|ALT_INV_19~q\,
	datad => \U02|ALT_INV_18~q\,
	dataf => \U02|ALT_INV_20~q\,
	combout => \U06|Mux1~0_combout\);

-- Location: LABCELL_X40_Y1_N3
\U06|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux2~0_combout\ = ( \U02|18~q\ & ( ((!\U02|19~q\ & !\U02|17~q\)) # (\U02|20~q\) ) ) # ( !\U02|18~q\ & ( (\U02|19~q\ & \U02|20~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_19~q\,
	datac => \U02|ALT_INV_20~q\,
	datad => \U02|ALT_INV_17~q\,
	dataf => \U02|ALT_INV_18~q\,
	combout => \U06|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y1_N21
\U06|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux3~0_combout\ = ( \U02|20~q\ & ( (\U02|18~q\) # (\U02|19~q\) ) ) # ( !\U02|20~q\ & ( (!\U02|17~q\ & (\U02|19~q\ & !\U02|18~q\)) # (\U02|17~q\ & (!\U02|19~q\ $ (\U02|18~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000010001011001100001000100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_17~q\,
	datab => \U02|ALT_INV_19~q\,
	datad => \U02|ALT_INV_18~q\,
	dataf => \U02|ALT_INV_20~q\,
	combout => \U06|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y1_N18
\U06|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux4~0_combout\ = ( \U02|20~q\ & ( ((\U02|18~q\) # (\U02|19~q\)) # (\U02|17~q\) ) ) # ( !\U02|20~q\ & ( ((\U02|19~q\ & !\U02|18~q\)) # (\U02|17~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101011101110101010101110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_17~q\,
	datab => \U02|ALT_INV_19~q\,
	datad => \U02|ALT_INV_18~q\,
	dataf => \U02|ALT_INV_20~q\,
	combout => \U06|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y1_N54
\U06|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux5~0_combout\ = ( \U02|20~q\ & ( (\U02|18~q\) # (\U02|19~q\) ) ) # ( !\U02|20~q\ & ( (!\U02|17~q\ & (!\U02|19~q\ & \U02|18~q\)) # (\U02|17~q\ & ((!\U02|19~q\) # (\U02|18~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101010001001101110100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_17~q\,
	datab => \U02|ALT_INV_19~q\,
	datad => \U02|ALT_INV_18~q\,
	dataf => \U02|ALT_INV_20~q\,
	combout => \U06|Mux5~0_combout\);

-- Location: MLABCELL_X42_Y1_N57
\U06|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U06|Mux6~0_combout\ = ( \U02|20~q\ & ( (!\U02|19~q\ & !\U02|18~q\) ) ) # ( !\U02|20~q\ & ( (!\U02|19~q\ & ((\U02|18~q\))) # (\U02|19~q\ & ((!\U02|17~q\) # (!\U02|18~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111101110001100111110111011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U02|ALT_INV_17~q\,
	datab => \U02|ALT_INV_19~q\,
	datad => \U02|ALT_INV_18~q\,
	dataf => \U02|ALT_INV_20~q\,
	combout => \U06|Mux6~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

-- Location: CLKCTRL_G5
\KEY2~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY2~input_o\,
	outclk => \KEY2~inputCLKENA0_outclk\);

-- Location: FF_X39_Y1_N23
\U01|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY2~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U01|16~q\);

-- Location: FF_X39_Y1_N8
\U01|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY2~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U01|14~q\);

-- Location: FF_X39_Y1_N2
\U01|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY2~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U01|13~q\);

-- Location: LABCELL_X39_Y1_N12
\U01|15~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U01|15~feeder_combout\ = ( \SW[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \U01|15~feeder_combout\);

-- Location: FF_X39_Y1_N14
\U01|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY2~inputCLKENA0_outclk\,
	d => \U01|15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U01|15~q\);

-- Location: LABCELL_X39_Y1_N27
\U05|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux0~0_combout\ = ( \U01|15~q\ & ( ((!\U01|14~q\ & !\U01|13~q\)) # (\U01|16~q\) ) ) # ( !\U01|15~q\ & ( (!\U01|16~q\ & (!\U01|14~q\ & \U01|13~q\)) # (\U01|16~q\ & (\U01|14~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100111011101010101011101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_16~q\,
	datab => \U01|ALT_INV_14~q\,
	datad => \U01|ALT_INV_13~q\,
	dataf => \U01|ALT_INV_15~q\,
	combout => \U05|Mux0~0_combout\);

-- Location: LABCELL_X39_Y1_N30
\U05|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux1~0_combout\ = ( \U01|15~q\ & ( (!\U01|14~q\ $ (!\U01|13~q\)) # (\U01|16~q\) ) ) # ( !\U01|15~q\ & ( (\U01|16~q\ & \U01|14~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_16~q\,
	datab => \U01|ALT_INV_14~q\,
	datac => \U01|ALT_INV_13~q\,
	dataf => \U01|ALT_INV_15~q\,
	combout => \U05|Mux1~0_combout\);

-- Location: LABCELL_X39_Y1_N39
\U05|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux2~0_combout\ = ( \U01|15~q\ & ( \U01|16~q\ ) ) # ( !\U01|15~q\ & ( (\U01|14~q\ & ((!\U01|13~q\) # (\U01|16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010001001100110001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_16~q\,
	datab => \U01|ALT_INV_14~q\,
	datad => \U01|ALT_INV_13~q\,
	dataf => \U01|ALT_INV_15~q\,
	combout => \U05|Mux2~0_combout\);

-- Location: LABCELL_X39_Y1_N33
\U05|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux3~0_combout\ = ( \U01|15~q\ & ( (!\U01|14~q\ $ (\U01|13~q\)) # (\U01|16~q\) ) ) # ( !\U01|15~q\ & ( (!\U01|16~q\ & (!\U01|14~q\ & \U01|13~q\)) # (\U01|16~q\ & (\U01|14~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100111011101011101111101110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_16~q\,
	datab => \U01|ALT_INV_14~q\,
	datad => \U01|ALT_INV_13~q\,
	dataf => \U01|ALT_INV_15~q\,
	combout => \U05|Mux3~0_combout\);

-- Location: LABCELL_X39_Y1_N24
\U05|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux4~0_combout\ = ( \U01|15~q\ & ( ((!\U01|14~q\) # (\U01|13~q\)) # (\U01|16~q\) ) ) # ( !\U01|15~q\ & ( ((\U01|16~q\ & \U01|14~q\)) # (\U01|13~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_16~q\,
	datab => \U01|ALT_INV_14~q\,
	datac => \U01|ALT_INV_13~q\,
	dataf => \U01|ALT_INV_15~q\,
	combout => \U05|Mux4~0_combout\);

-- Location: LABCELL_X39_Y1_N36
\U05|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux5~0_combout\ = ( \U01|15~q\ & ( ((\U01|14~q\ & \U01|13~q\)) # (\U01|16~q\) ) ) # ( !\U01|15~q\ & ( ((!\U01|16~q\ & \U01|13~q\)) # (\U01|14~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011001100111011101101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_16~q\,
	datab => \U01|ALT_INV_14~q\,
	datad => \U01|ALT_INV_13~q\,
	dataf => \U01|ALT_INV_15~q\,
	combout => \U05|Mux5~0_combout\);

-- Location: LABCELL_X39_Y1_N18
\U05|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U05|Mux6~0_combout\ = ( \U01|13~q\ & ( \U01|15~q\ & ( (!\U01|14~q\ & !\U01|16~q\) ) ) ) # ( !\U01|13~q\ & ( \U01|15~q\ & ( !\U01|16~q\ ) ) ) # ( \U01|13~q\ & ( !\U01|15~q\ & ( !\U01|14~q\ $ (!\U01|16~q\) ) ) ) # ( !\U01|13~q\ & ( !\U01|15~q\ & ( 
-- !\U01|14~q\ $ (!\U01|16~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011110000111100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U01|ALT_INV_14~q\,
	datac => \U01|ALT_INV_16~q\,
	datae => \U01|ALT_INV_13~q\,
	dataf => \U01|ALT_INV_15~q\,
	combout => \U05|Mux6~0_combout\);

-- Location: LABCELL_X39_Y1_N42
\U01|18~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U01|18~feeder_combout\ = ( \SW[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \U01|18~feeder_combout\);

-- Location: FF_X39_Y1_N44
\U01|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY2~inputCLKENA0_outclk\,
	d => \U01|18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U01|18~q\);

-- Location: LABCELL_X39_Y1_N51
\U01|20~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U01|20~feeder_combout\ = ( \SW[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \U01|20~feeder_combout\);

-- Location: FF_X39_Y1_N53
\U01|20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY2~inputCLKENA0_outclk\,
	d => \U01|20~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U01|20~q\);

-- Location: LABCELL_X41_Y1_N33
\U01|17~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U01|17~feeder_combout\ = ( \SW[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \U01|17~feeder_combout\);

-- Location: FF_X41_Y1_N35
\U01|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY2~inputCLKENA0_outclk\,
	d => \U01|17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U01|17~q\);

-- Location: FF_X39_Y1_N50
\U01|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY2~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U01|19~q\);

-- Location: LABCELL_X39_Y1_N0
\U04|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux0~0_combout\ = ( \U01|17~q\ & ( \U01|19~q\ & ( \U01|20~q\ ) ) ) # ( !\U01|17~q\ & ( \U01|19~q\ & ( (!\U01|18~q\) # (\U01|20~q\) ) ) ) # ( \U01|17~q\ & ( !\U01|19~q\ & ( !\U01|18~q\ $ (\U01|20~q\) ) ) ) # ( !\U01|17~q\ & ( !\U01|19~q\ & ( 
-- (\U01|18~q\ & \U01|20~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001111001111110011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U01|ALT_INV_18~q\,
	datac => \U01|ALT_INV_20~q\,
	datae => \U01|ALT_INV_17~q\,
	dataf => \U01|ALT_INV_19~q\,
	combout => \U04|Mux0~0_combout\);

-- Location: LABCELL_X39_Y1_N54
\U04|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux1~0_combout\ = ( \U01|19~q\ & ( (!\U01|18~q\ $ (!\U01|17~q\)) # (\U01|20~q\) ) ) # ( !\U01|19~q\ & ( (\U01|20~q\ & \U01|18~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_20~q\,
	datab => \U01|ALT_INV_18~q\,
	datad => \U01|ALT_INV_17~q\,
	dataf => \U01|ALT_INV_19~q\,
	combout => \U04|Mux1~0_combout\);

-- Location: LABCELL_X40_Y1_N51
\U04|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux2~0_combout\ = ( \U01|20~q\ & ( \U01|17~q\ & ( (\U01|19~q\) # (\U01|18~q\) ) ) ) # ( \U01|20~q\ & ( !\U01|17~q\ & ( (\U01|19~q\) # (\U01|18~q\) ) ) ) # ( !\U01|20~q\ & ( !\U01|17~q\ & ( (\U01|18~q\ & !\U01|19~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_18~q\,
	datad => \U01|ALT_INV_19~q\,
	datae => \U01|ALT_INV_20~q\,
	dataf => \U01|ALT_INV_17~q\,
	combout => \U04|Mux2~0_combout\);

-- Location: LABCELL_X40_Y1_N57
\U04|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux3~0_combout\ = ( \U01|20~q\ & ( \U01|17~q\ & ( (\U01|19~q\) # (\U01|18~q\) ) ) ) # ( !\U01|20~q\ & ( \U01|17~q\ & ( !\U01|18~q\ $ (\U01|19~q\) ) ) ) # ( \U01|20~q\ & ( !\U01|17~q\ & ( (\U01|19~q\) # (\U01|18~q\) ) ) ) # ( !\U01|20~q\ & ( 
-- !\U01|17~q\ & ( (!\U01|18~q\ & \U01|19~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111110101010010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_18~q\,
	datad => \U01|ALT_INV_19~q\,
	datae => \U01|ALT_INV_20~q\,
	dataf => \U01|ALT_INV_17~q\,
	combout => \U04|Mux3~0_combout\);

-- Location: LABCELL_X39_Y1_N57
\U04|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux4~0_combout\ = ( \U01|19~q\ & ( ((!\U01|18~q\) # (\U01|17~q\)) # (\U01|20~q\) ) ) # ( !\U01|19~q\ & ( ((\U01|20~q\ & \U01|18~q\)) # (\U01|17~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_20~q\,
	datab => \U01|ALT_INV_18~q\,
	datac => \U01|ALT_INV_17~q\,
	dataf => \U01|ALT_INV_19~q\,
	combout => \U04|Mux4~0_combout\);

-- Location: LABCELL_X39_Y1_N9
\U04|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux5~0_combout\ = ( \U01|17~q\ & ( \U01|19~q\ & ( (\U01|18~q\) # (\U01|20~q\) ) ) ) # ( !\U01|17~q\ & ( \U01|19~q\ & ( \U01|20~q\ ) ) ) # ( \U01|17~q\ & ( !\U01|19~q\ & ( (!\U01|20~q\) # (\U01|18~q\) ) ) ) # ( !\U01|17~q\ & ( !\U01|19~q\ & ( 
-- \U01|18~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101011111010111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_20~q\,
	datac => \U01|ALT_INV_18~q\,
	datae => \U01|ALT_INV_17~q\,
	dataf => \U01|ALT_INV_19~q\,
	combout => \U04|Mux5~0_combout\);

-- Location: LABCELL_X40_Y1_N15
\U04|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U04|Mux6~0_combout\ = ( \U01|20~q\ & ( \U01|17~q\ & ( (!\U01|18~q\ & !\U01|19~q\) ) ) ) # ( !\U01|20~q\ & ( \U01|17~q\ & ( !\U01|18~q\ $ (!\U01|19~q\) ) ) ) # ( \U01|20~q\ & ( !\U01|17~q\ & ( (!\U01|18~q\ & !\U01|19~q\) ) ) ) # ( !\U01|20~q\ & ( 
-- !\U01|17~q\ & ( (\U01|19~q\) # (\U01|18~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111101010100000000001010101101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U01|ALT_INV_18~q\,
	datad => \U01|ALT_INV_19~q\,
	datae => \U01|ALT_INV_20~q\,
	dataf => \U01|ALT_INV_17~q\,
	combout => \U04|Mux6~0_combout\);

-- Location: LABCELL_X39_Y22_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


