-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "05/17/2014 10:12:25"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcd_addsub IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	sub : IN std_logic;
	carry_in : IN std_logic;
	sum : OUT std_logic_vector(3 DOWNTO 0);
	carry : OUT std_logic
	);
END bcd_addsub;

-- Design Ports Information
-- sum[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- carry	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b[0]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sub	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- carry_in	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bcd_addsub IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sub : std_logic;
SIGNAL ww_carry_in : std_logic;
SIGNAL ww_sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_carry : std_logic;
SIGNAL \b_temp[1]~2_combout\ : std_logic;
SIGNAL \sub~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \b_temp[0]~0_combout\ : std_logic;
SIGNAL \carry_in~combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \b_temp[3]~3_combout\ : std_logic;
SIGNAL \b_temp[2]~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \sum~0_combout\ : std_logic;
SIGNAL \sum~1_combout\ : std_logic;
SIGNAL \sum~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_sub <= sub;
ww_carry_in <= carry_in;
sum <= ww_sum;
carry <= ww_carry;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X34_Y4_N14
\b_temp[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_temp[1]~2_combout\ = (\b~combout\(1) & ((!\sub~combout\) # (!\b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \sub~combout\,
	datac => \b~combout\(1),
	combout => \b_temp[1]~2_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sub~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sub,
	combout => \sub~combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X34_Y4_N0
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\b~combout\(0)) # ((\b~combout\(3) & ((\b~combout\(1)) # (\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \b~combout\(3),
	datac => \b~combout\(1),
	datad => \b~combout\(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X34_Y4_N10
\b_temp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_temp[0]~0_combout\ = (\sub~combout\ & ((!\Mux3~0_combout\))) # (!\sub~combout\ & (\b~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub~combout\,
	datac => \b~combout\(0),
	datad => \Mux3~0_combout\,
	combout => \b_temp[0]~0_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\carry_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_carry_in,
	combout => \carry_in~combout\);

-- Location: LCCOMB_X34_Y4_N16
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\carry_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry_in~combout\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X34_Y4_N18
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\b_temp[0]~0_combout\ & ((\a~combout\(0) & (\Add0~1_cout\ & VCC)) # (!\a~combout\(0) & (!\Add0~1_cout\)))) # (!\b_temp[0]~0_combout\ & ((\a~combout\(0) & (!\Add0~1_cout\)) # (!\a~combout\(0) & ((\Add0~1_cout\) # (GND)))))
-- \Add0~3\ = CARRY((\b_temp[0]~0_combout\ & (!\a~combout\(0) & !\Add0~1_cout\)) # (!\b_temp[0]~0_combout\ & ((!\Add0~1_cout\) # (!\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_temp[0]~0_combout\,
	datab => \a~combout\(0),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X34_Y4_N8
\b_temp[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_temp[3]~3_combout\ = (\b~combout\(3) & (!\sub~combout\)) # (!\b~combout\(3) & (\sub~combout\ & (!\b~combout\(1) & !\b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \sub~combout\,
	datac => \b~combout\(1),
	datad => \b~combout\(2),
	combout => \b_temp[3]~3_combout\);

-- Location: LCCOMB_X34_Y4_N28
\b_temp[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_temp[2]~1_combout\ = (\sub~combout\ & (!\b~combout\(3) & (\b~combout\(1) $ (\b~combout\(2))))) # (!\sub~combout\ & (((\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \sub~combout\,
	datac => \b~combout\(1),
	datad => \b~combout\(2),
	combout => \b_temp[2]~1_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X34_Y4_N20
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\b_temp[1]~2_combout\ $ (\a~combout\(1) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\b_temp[1]~2_combout\ & ((\a~combout\(1)) # (!\Add0~3\))) # (!\b_temp[1]~2_combout\ & (\a~combout\(1) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_temp[1]~2_combout\,
	datab => \a~combout\(1),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X34_Y4_N22
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\a~combout\(2) & ((\b_temp[2]~1_combout\ & (\Add0~5\ & VCC)) # (!\b_temp[2]~1_combout\ & (!\Add0~5\)))) # (!\a~combout\(2) & ((\b_temp[2]~1_combout\ & (!\Add0~5\)) # (!\b_temp[2]~1_combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\a~combout\(2) & (!\b_temp[2]~1_combout\ & !\Add0~5\)) # (!\a~combout\(2) & ((!\Add0~5\) # (!\b_temp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b_temp[2]~1_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X34_Y4_N24
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\a~combout\(3) $ (\b_temp[3]~3_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\a~combout\(3) & ((\b_temp[3]~3_combout\) # (!\Add0~7\))) # (!\a~combout\(3) & (\b_temp[3]~3_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b_temp[3]~3_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X34_Y4_N26
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X34_Y4_N2
\sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum~0_combout\ = (\Add0~8_combout\ & (!\Add0~4_combout\ & ((\Add0~10_combout\) # (\Add0~6_combout\)))) # (!\Add0~8_combout\ & (\Add0~10_combout\ $ ((\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \sum~0_combout\);

-- Location: LCCOMB_X34_Y4_N12
\sum~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum~1_combout\ = (\Add0~10_combout\ & ((\Add0~4_combout\ $ (!\Add0~6_combout\)))) # (!\Add0~10_combout\ & (\Add0~6_combout\ & ((\Add0~4_combout\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \sum~1_combout\);

-- Location: LCCOMB_X34_Y4_N30
\sum~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum~2_combout\ = (\Add0~8_combout\ & (((!\Add0~4_combout\ & !\Add0~6_combout\)))) # (!\Add0~8_combout\ & (\Add0~10_combout\ & ((\Add0~4_combout\) # (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \sum~2_combout\);

-- Location: LCCOMB_X34_Y4_N4
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add0~10_combout\) # ((\Add0~8_combout\ & ((\Add0~4_combout\) # (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \LessThan0~0_combout\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sum~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sum~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum(3));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\carry~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_carry);
END structure;


