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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "10/19/2016 17:04:15"

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

ENTITY 	adder4 IS
    PORT (
	Cin : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	S : OUT std_logic_vector(3 DOWNTO 0);
	Cout : OUT std_logic;
	Overflow : OUT std_logic;
	A : OUT std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	Rseg : OUT std_logic_vector(6 DOWNTO 0);
	g : OUT std_logic_vector(6 DOWNTO 0)
	);
END adder4;

-- Design Ports Information
-- S[0]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[1]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[2]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[3]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cout	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Overflow	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Rseg[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Rseg[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Rseg[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Rseg[3]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Rseg[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Rseg[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Rseg[6]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[1]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[2]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[4]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[6]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[0]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Cin	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF adder4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_Rseg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_g : std_logic_vector(6 DOWNTO 0);
SIGNAL \Rseg[0]~2_combout\ : std_logic;
SIGNAL \Rseg[1]~5_combout\ : std_logic;
SIGNAL \Rseg[1]~7_combout\ : std_logic;
SIGNAL \Rseg[2]~9_combout\ : std_logic;
SIGNAL \Rseg[4]~12_combout\ : std_logic;
SIGNAL \Rseg[5]~15_combout\ : std_logic;
SIGNAL \Rseg[5]~16_combout\ : std_logic;
SIGNAL \Rseg[5]~17_combout\ : std_logic;
SIGNAL \Rseg[5]~18_combout\ : std_logic;
SIGNAL \Rseg[6]~22_combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Overflow~0_combout\ : std_logic;
SIGNAL \A~0_combout\ : std_logic;
SIGNAL \B~0_combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \D~0_combout\ : std_logic;
SIGNAL \Rseg[0]~3_combout\ : std_logic;
SIGNAL \Rseg[6]~0_combout\ : std_logic;
SIGNAL \Rseg[6]~1_combout\ : std_logic;
SIGNAL \comb~16_combout\ : std_logic;
SIGNAL \comb~17_combout\ : std_logic;
SIGNAL \Rseg[0]$latch~combout\ : std_logic;
SIGNAL \Equal30~0_combout\ : std_logic;
SIGNAL \Rseg[6]~4_combout\ : std_logic;
SIGNAL \Rseg[1]~6_combout\ : std_logic;
SIGNAL \comb~18_combout\ : std_logic;
SIGNAL \comb~19_combout\ : std_logic;
SIGNAL \Rseg[1]$latch~combout\ : std_logic;
SIGNAL \Rseg[2]~8_combout\ : std_logic;
SIGNAL \comb~20_combout\ : std_logic;
SIGNAL \comb~21_combout\ : std_logic;
SIGNAL \Rseg[2]$latch~combout\ : std_logic;
SIGNAL \Rseg[3]~10_combout\ : std_logic;
SIGNAL \Rseg[3]~11_combout\ : std_logic;
SIGNAL \comb~25_combout\ : std_logic;
SIGNAL \comb~24_combout\ : std_logic;
SIGNAL \Rseg[3]$latch~combout\ : std_logic;
SIGNAL \Rseg[4]~13_combout\ : std_logic;
SIGNAL \Rseg[4]~14_combout\ : std_logic;
SIGNAL \comb~27_combout\ : std_logic;
SIGNAL \comb~26_combout\ : std_logic;
SIGNAL \Rseg[4]$latch~combout\ : std_logic;
SIGNAL \comb~29_combout\ : std_logic;
SIGNAL \comb~28_combout\ : std_logic;
SIGNAL \Rseg[5]$latch~combout\ : std_logic;
SIGNAL \Rseg[6]~19_combout\ : std_logic;
SIGNAL \Rseg[6]~20_combout\ : std_logic;
SIGNAL \Rseg[6]~21_combout\ : std_logic;
SIGNAL \comb~23_combout\ : std_logic;
SIGNAL \comb~22_combout\ : std_logic;
SIGNAL \Rseg[6]$latch~combout\ : std_logic;
SIGNAL \X~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Y~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Add0~16_combout\ : std_logic;

BEGIN

ww_Cin <= Cin;
ww_X <= X;
ww_Y <= Y;
S <= ww_S;
Cout <= ww_Cout;
Overflow <= ww_Overflow;
A <= ww_A;
B <= ww_B;
C <= ww_C;
D <= ww_D;
Rseg <= ww_Rseg;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~16_combout\ <= NOT \Add0~16_combout\;

-- Location: LCCOMB_X30_Y1_N26
\Rseg[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[0]~2_combout\ = (\Add0~10_combout\ & ((\Add0~4_combout\) # (\Add0~16_combout\ $ (!\Add0~13_combout\)))) # (!\Add0~10_combout\ & ((\Add0~16_combout\ & ((!\Add0~4_combout\) # (!\Add0~13_combout\))) # (!\Add0~16_combout\ & (\Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~13_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~4_combout\,
	combout => \Rseg[0]~2_combout\);

-- Location: LCCOMB_X29_Y1_N30
\Rseg[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[1]~5_combout\ = (\Add0~16_combout\ & (!\Equal30~0_combout\)) # (!\Add0~16_combout\ & ((\Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Equal30~0_combout\,
	datac => \Add0~13_combout\,
	combout => \Rseg[1]~5_combout\);

-- Location: LCCOMB_X29_Y1_N10
\Rseg[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[1]~7_combout\ = (\Add0~16_combout\ & (\Add0~13_combout\ & ((\Add0~4_combout\) # (\Add0~7_combout\)))) # (!\Add0~16_combout\ & (\Add0~4_combout\ & (\Add0~13_combout\ $ (\Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~13_combout\,
	datad => \Add0~7_combout\,
	combout => \Rseg[1]~7_combout\);

-- Location: LCCOMB_X30_Y1_N12
\Rseg[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[2]~9_combout\ = (\Add0~10_combout\ & (!\Add0~7_combout\ & (\Add0~16_combout\ $ (!\Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~7_combout\,
	datad => \Add0~13_combout\,
	combout => \Rseg[2]~9_combout\);

-- Location: LCCOMB_X31_Y1_N10
\Rseg[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[4]~12_combout\ = (\Add0~4_combout\ & (((!\Add0~10_combout\ & \Add0~16_combout\)))) # (!\Add0~4_combout\ & ((\Add0~7_combout\ & (!\Add0~10_combout\)) # (!\Add0~7_combout\ & ((\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~16_combout\,
	combout => \Rseg[4]~12_combout\);

-- Location: LCCOMB_X31_Y1_N0
\Rseg[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[5]~15_combout\ = (\Add0~16_combout\ & (\Equal30~0_combout\)) # (!\Add0~16_combout\ & ((\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Equal30~0_combout\,
	datac => \Add0~4_combout\,
	combout => \Rseg[5]~15_combout\);

-- Location: LCCOMB_X29_Y1_N8
\Rseg[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[5]~16_combout\ = (\Add0~7_combout\ & (\Add0~13_combout\ & ((!\Add0~10_combout\) # (!\Add0~16_combout\)))) # (!\Add0~7_combout\ & (((!\Add0~13_combout\ & \Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~7_combout\,
	datac => \Add0~13_combout\,
	datad => \Add0~10_combout\,
	combout => \Rseg[5]~16_combout\);

-- Location: LCCOMB_X31_Y1_N26
\Rseg[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[5]~17_combout\ = (\Add0~16_combout\ & ((\Add0~7_combout\ & ((!\Add0~10_combout\))) # (!\Add0~7_combout\ & (!\Add0~13_combout\)))) # (!\Add0~16_combout\ & (\Add0~10_combout\ & ((\Add0~13_combout\) # (\Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~13_combout\,
	datac => \Add0~7_combout\,
	datad => \Add0~10_combout\,
	combout => \Rseg[5]~17_combout\);

-- Location: LCCOMB_X31_Y1_N12
\Rseg[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[5]~18_combout\ = (\Rseg[5]~15_combout\ & (\Rseg[5]~16_combout\)) # (!\Rseg[5]~15_combout\ & ((\Rseg[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[5]~16_combout\,
	datab => \Rseg[5]~17_combout\,
	datad => \Rseg[5]~15_combout\,
	combout => \Rseg[5]~18_combout\);

-- Location: LCCOMB_X29_Y1_N6
\Rseg[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[6]~22_combout\ = (\Add0~10_combout\ & (\Rseg[6]~4_combout\ & !\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Rseg[6]~4_combout\,
	datad => \Add0~4_combout\,
	combout => \Rseg[6]~22_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[0]~I\ : cycloneii_io
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
	padio => ww_Y(0),
	combout => \Y~combout\(0));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[1]~I\ : cycloneii_io
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
	padio => ww_Y(1),
	combout => \Y~combout\(1));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[2]~I\ : cycloneii_io
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
	padio => ww_Y(2),
	combout => \Y~combout\(2));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cin~I\ : cycloneii_io
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
	padio => ww_Cin,
	combout => \Cin~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[0]~I\ : cycloneii_io
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
	padio => ww_X(0),
	combout => \X~combout\(0));

-- Location: LCCOMB_X32_Y1_N20
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Y~combout\(0) & (\X~combout\(0) $ (VCC))) # (!\Y~combout\(0) & ((\X~combout\(0)) # (GND)))
-- \Add2~1\ = CARRY((\X~combout\(0)) # (!\Y~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \X~combout\(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X32_Y1_N4
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~combout\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X32_Y1_N6
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Y~combout\(0) & ((\X~combout\(0) & (\Add0~1_cout\ & VCC)) # (!\X~combout\(0) & (!\Add0~1_cout\)))) # (!\Y~combout\(0) & ((\X~combout\(0) & (!\Add0~1_cout\)) # (!\X~combout\(0) & ((\Add0~1_cout\) # (GND)))))
-- \Add0~3\ = CARRY((\Y~combout\(0) & (!\X~combout\(0) & !\Add0~1_cout\)) # (!\Y~combout\(0) & ((!\Add0~1_cout\) # (!\X~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \X~combout\(0),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X32_Y1_N16
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Cin~combout\ & (\Add2~0_combout\)) # (!\Cin~combout\ & ((\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~combout\,
	datac => \Add2~0_combout\,
	datad => \Add0~2_combout\,
	combout => \Add0~4_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[1]~I\ : cycloneii_io
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
	padio => ww_X(1),
	combout => \X~combout\(1));

-- Location: LCCOMB_X32_Y1_N22
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Y~combout\(1) & ((\X~combout\(1) & (!\Add2~1\)) # (!\X~combout\(1) & ((\Add2~1\) # (GND))))) # (!\Y~combout\(1) & ((\X~combout\(1) & (\Add2~1\ & VCC)) # (!\X~combout\(1) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\Y~combout\(1) & ((!\Add2~1\) # (!\X~combout\(1)))) # (!\Y~combout\(1) & (!\X~combout\(1) & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \X~combout\(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X32_Y1_N8
\Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = ((\Y~combout\(1) $ (\X~combout\(1) $ (!\Add0~3\)))) # (GND)
-- \Add0~6\ = CARRY((\Y~combout\(1) & ((\X~combout\(1)) # (!\Add0~3\))) # (!\Y~combout\(1) & (\X~combout\(1) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \X~combout\(1),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X33_Y1_N16
\Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Cin~combout\ & (\Add2~2_combout\)) # (!\Cin~combout\ & ((\Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datac => \Cin~combout\,
	datad => \Add0~5_combout\,
	combout => \Add0~7_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[2]~I\ : cycloneii_io
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
	padio => ww_X(2),
	combout => \X~combout\(2));

-- Location: LCCOMB_X32_Y1_N24
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Y~combout\(2) $ (\X~combout\(2) $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Y~combout\(2) & (\X~combout\(2) & !\Add2~3\)) # (!\Y~combout\(2) & ((\X~combout\(2)) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(2),
	datab => \X~combout\(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X32_Y1_N10
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\Y~combout\(2) & ((\X~combout\(2) & (\Add0~6\ & VCC)) # (!\X~combout\(2) & (!\Add0~6\)))) # (!\Y~combout\(2) & ((\X~combout\(2) & (!\Add0~6\)) # (!\X~combout\(2) & ((\Add0~6\) # (GND)))))
-- \Add0~9\ = CARRY((\Y~combout\(2) & (!\X~combout\(2) & !\Add0~6\)) # (!\Y~combout\(2) & ((!\Add0~6\) # (!\X~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(2),
	datab => \X~combout\(2),
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X31_Y1_N8
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Cin~combout\ & (\Add2~4_combout\)) # (!\Cin~combout\ & ((\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Cin~combout\,
	datac => \Add0~8_combout\,
	combout => \Add0~10_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[3]~I\ : cycloneii_io
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
	padio => ww_X(3),
	combout => \X~combout\(3));

-- Location: LCCOMB_X32_Y1_N12
\Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = ((\Y~combout\(3) $ (\X~combout\(3) $ (!\Add0~9\)))) # (GND)
-- \Add0~12\ = CARRY((\Y~combout\(3) & ((\X~combout\(3)) # (!\Add0~9\))) # (!\Y~combout\(3) & (\X~combout\(3) & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(3),
	datab => \X~combout\(3),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X32_Y1_N26
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Y~combout\(3) & ((\X~combout\(3) & (!\Add2~5\)) # (!\X~combout\(3) & ((\Add2~5\) # (GND))))) # (!\Y~combout\(3) & ((\X~combout\(3) & (\Add2~5\ & VCC)) # (!\X~combout\(3) & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\Y~combout\(3) & ((!\Add2~5\) # (!\X~combout\(3)))) # (!\Y~combout\(3) & (!\X~combout\(3) & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(3),
	datab => \X~combout\(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X32_Y1_N18
\Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Cin~combout\ & ((\Add2~6_combout\))) # (!\Cin~combout\ & (\Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \Cin~combout\,
	datad => \Add2~6_combout\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X32_Y1_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~12\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X32_Y1_N28
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = \Add2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~7\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X32_Y1_N0
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Cin~combout\ & ((\Add2~8_combout\))) # (!\Cin~combout\ & (\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~combout\,
	datac => \Add0~14_combout\,
	datad => \Add2~8_combout\,
	combout => \Add0~16_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[3]~I\ : cycloneii_io
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
	padio => ww_Y(3),
	combout => \Y~combout\(3));

-- Location: LCCOMB_X32_Y1_N2
\Overflow~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Overflow~0_combout\ = \Y~combout\(3) $ (\Add0~16_combout\ $ (\X~combout\(3) $ (\Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(3),
	datab => \Add0~16_combout\,
	datac => \X~combout\(3),
	datad => \Add0~13_combout\,
	combout => \Overflow~0_combout\);

-- Location: LCCOMB_X31_Y1_N18
\A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A~0_combout\ = (\Add0~7_combout\ & ((\Cin~combout\ & (!\Add2~4_combout\)) # (!\Cin~combout\ & ((!\Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~7_combout\,
	datad => \Cin~combout\,
	combout => \A~0_combout\);

-- Location: LCCOMB_X31_Y1_N20
\B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B~0_combout\ = ((\Cin~combout\ & ((\Add2~4_combout\))) # (!\Cin~combout\ & (\Add0~8_combout\))) # (!\Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Cin~combout\,
	datac => \Add0~8_combout\,
	datad => \Add2~4_combout\,
	combout => \B~0_combout\);

-- Location: LCCOMB_X31_Y1_N6
\C~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C~0_combout\ = (\Add0~7_combout\) # ((\Cin~combout\ & (\Add2~4_combout\)) # (!\Cin~combout\ & ((\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~7_combout\,
	datad => \Cin~combout\,
	combout => \C~0_combout\);

-- Location: LCCOMB_X29_Y1_N24
\D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~0_combout\ = ((!\Add0~4_combout\ & \Add0~7_combout\)) # (!\Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~4_combout\,
	datad => \Add0~7_combout\,
	combout => \D~0_combout\);

-- Location: LCCOMB_X30_Y1_N4
\Rseg[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[0]~3_combout\ = (\Add0~10_combout\ & (\Add0~4_combout\ & (\Add0~16_combout\ $ (!\Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~13_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~4_combout\,
	combout => \Rseg[0]~3_combout\);

-- Location: LCCOMB_X31_Y1_N24
\Rseg[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[6]~0_combout\ = (\Add0~7_combout\) # ((\Add0~13_combout\) # (\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add0~13_combout\,
	datac => \Add0~10_combout\,
	combout => \Rseg[6]~0_combout\);

-- Location: LCCOMB_X30_Y1_N0
\Rseg[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[6]~1_combout\ = ((\Rseg[6]~0_combout\) # (\Add0~4_combout\)) # (!\Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Rseg[6]~0_combout\,
	datad => \Add0~4_combout\,
	combout => \Rseg[6]~1_combout\);

-- Location: LCCOMB_X30_Y1_N6
\comb~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~16_combout\ = (\Rseg[6]~1_combout\ & ((\Add0~7_combout\ & ((!\Rseg[0]~3_combout\))) # (!\Add0~7_combout\ & (\Rseg[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[0]~2_combout\,
	datab => \Rseg[0]~3_combout\,
	datac => \Add0~7_combout\,
	datad => \Rseg[6]~1_combout\,
	combout => \comb~16_combout\);

-- Location: LCCOMB_X30_Y1_N24
\comb~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~17_combout\ = (\Rseg[6]~1_combout\ & ((\Add0~7_combout\ & ((\Rseg[0]~3_combout\))) # (!\Add0~7_combout\ & (!\Rseg[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[0]~2_combout\,
	datab => \Rseg[0]~3_combout\,
	datac => \Add0~7_combout\,
	datad => \Rseg[6]~1_combout\,
	combout => \comb~17_combout\);

-- Location: LCCOMB_X30_Y1_N18
\Rseg[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[0]$latch~combout\ = (!\comb~16_combout\ & ((\comb~17_combout\) # (\Rseg[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~16_combout\,
	datac => \comb~17_combout\,
	datad => \Rseg[0]$latch~combout\,
	combout => \Rseg[0]$latch~combout\);

-- Location: LCCOMB_X29_Y1_N26
\Equal30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal30~0_combout\ = (!\Add0~10_combout\ & (\Add0~4_combout\ & (!\Add0~13_combout\ & \Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~13_combout\,
	datad => \Add0~7_combout\,
	combout => \Equal30~0_combout\);

-- Location: LCCOMB_X29_Y1_N28
\Rseg[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[6]~4_combout\ = (!\Add0~7_combout\ & ((\Add0~16_combout\ & ((\Equal30~0_combout\) # (\Add0~13_combout\))) # (!\Add0~16_combout\ & ((!\Add0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Equal30~0_combout\,
	datac => \Add0~13_combout\,
	datad => \Add0~7_combout\,
	combout => \Rseg[6]~4_combout\);

-- Location: LCCOMB_X29_Y1_N16
\Rseg[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[1]~6_combout\ = (\Rseg[1]~5_combout\ & (\Add0~4_combout\ & (\Rseg[6]~4_combout\))) # (!\Rseg[1]~5_combout\ & ((\Add0~7_combout\) # ((\Add0~4_combout\ & \Rseg[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[1]~5_combout\,
	datab => \Add0~4_combout\,
	datac => \Rseg[6]~4_combout\,
	datad => \Add0~7_combout\,
	combout => \Rseg[1]~6_combout\);

-- Location: LCCOMB_X29_Y1_N12
\comb~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~18_combout\ = (\Rseg[6]~1_combout\ & ((\Add0~10_combout\ & (!\Rseg[1]~7_combout\)) # (!\Add0~10_combout\ & ((!\Rseg[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[1]~7_combout\,
	datab => \Rseg[6]~1_combout\,
	datac => \Rseg[1]~6_combout\,
	datad => \Add0~10_combout\,
	combout => \comb~18_combout\);

-- Location: LCCOMB_X29_Y1_N22
\comb~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~19_combout\ = (\Rseg[6]~1_combout\ & ((\Add0~10_combout\ & (\Rseg[1]~7_combout\)) # (!\Add0~10_combout\ & ((\Rseg[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[1]~7_combout\,
	datab => \Rseg[6]~1_combout\,
	datac => \Rseg[1]~6_combout\,
	datad => \Add0~10_combout\,
	combout => \comb~19_combout\);

-- Location: LCCOMB_X29_Y1_N4
\Rseg[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[1]$latch~combout\ = (!\comb~18_combout\ & ((\Rseg[1]$latch~combout\) # (\comb~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~18_combout\,
	datac => \Rseg[1]$latch~combout\,
	datad => \comb~19_combout\,
	combout => \Rseg[1]$latch~combout\);

-- Location: LCCOMB_X30_Y1_N10
\Rseg[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[2]~8_combout\ = (\Add0~16_combout\ & (!\Add0~13_combout\ & ((!\Add0~7_combout\) # (!\Add0~10_combout\)))) # (!\Add0~16_combout\ & (\Add0~13_combout\ & ((\Add0~10_combout\) # (\Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~7_combout\,
	datad => \Add0~13_combout\,
	combout => \Rseg[2]~8_combout\);

-- Location: LCCOMB_X30_Y1_N22
\comb~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~20_combout\ = (\Rseg[6]~1_combout\ & ((\Add0~4_combout\ & ((\Rseg[2]~8_combout\))) # (!\Add0~4_combout\ & (!\Rseg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[2]~9_combout\,
	datab => \Rseg[6]~1_combout\,
	datac => \Rseg[2]~8_combout\,
	datad => \Add0~4_combout\,
	combout => \comb~20_combout\);

-- Location: LCCOMB_X30_Y1_N8
\comb~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~21_combout\ = (\Rseg[6]~1_combout\ & ((\Add0~4_combout\ & ((!\Rseg[2]~8_combout\))) # (!\Add0~4_combout\ & (\Rseg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[2]~9_combout\,
	datab => \Rseg[6]~1_combout\,
	datac => \Rseg[2]~8_combout\,
	datad => \Add0~4_combout\,
	combout => \comb~21_combout\);

-- Location: LCCOMB_X30_Y1_N28
\Rseg[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[2]$latch~combout\ = (!\comb~20_combout\ & ((\comb~21_combout\) # (\Rseg[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~20_combout\,
	datac => \comb~21_combout\,
	datad => \Rseg[2]$latch~combout\,
	combout => \Rseg[2]$latch~combout\);

-- Location: LCCOMB_X30_Y1_N2
\Rseg[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[3]~10_combout\ = (\Add0~16_combout\ & ((\Add0~10_combout\ & (\Add0~7_combout\ $ (\Add0~13_combout\))) # (!\Add0~10_combout\ & (!\Add0~7_combout\ & !\Add0~13_combout\)))) # (!\Add0~16_combout\ & ((\Add0~10_combout\ & (!\Add0~7_combout\ & 
-- !\Add0~13_combout\)) # (!\Add0~10_combout\ & (\Add0~7_combout\ & \Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~7_combout\,
	datad => \Add0~13_combout\,
	combout => \Rseg[3]~10_combout\);

-- Location: LCCOMB_X30_Y1_N20
\Rseg[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[3]~11_combout\ = (\Add0~4_combout\ & (\Add0~7_combout\ $ (((!\Add0~10_combout\))))) # (!\Add0~4_combout\ & (((\Rseg[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Rseg[3]~10_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~4_combout\,
	combout => \Rseg[3]~11_combout\);

-- Location: LCCOMB_X30_Y1_N16
\comb~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~25_combout\ = (\Rseg[3]~11_combout\ & (((\Rseg[6]~0_combout\) # (\Add0~4_combout\)) # (!\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Rseg[6]~0_combout\,
	datac => \Rseg[3]~11_combout\,
	datad => \Add0~4_combout\,
	combout => \comb~25_combout\);

-- Location: LCCOMB_X30_Y1_N30
\comb~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~24_combout\ = (!\Rseg[3]~11_combout\ & (((\Rseg[6]~0_combout\) # (\Add0~4_combout\)) # (!\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Rseg[6]~0_combout\,
	datac => \Rseg[3]~11_combout\,
	datad => \Add0~4_combout\,
	combout => \comb~24_combout\);

-- Location: LCCOMB_X30_Y1_N14
\Rseg[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[3]$latch~combout\ = (!\comb~24_combout\ & ((\comb~25_combout\) # (\Rseg[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~25_combout\,
	datab => \comb~24_combout\,
	datac => \Rseg[3]$latch~combout\,
	combout => \Rseg[3]$latch~combout\);

-- Location: LCCOMB_X31_Y1_N4
\Rseg[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[4]~13_combout\ = (\Add0~7_combout\ & ((\Add0~10_combout\ & ((!\Add0~16_combout\) # (!\Add0~4_combout\))) # (!\Add0~10_combout\ & (!\Add0~4_combout\ & !\Add0~16_combout\)))) # (!\Add0~7_combout\ & (\Add0~10_combout\ & (!\Add0~4_combout\ & 
-- !\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~16_combout\,
	combout => \Rseg[4]~13_combout\);

-- Location: LCCOMB_X31_Y1_N22
\Rseg[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[4]~14_combout\ = (\Rseg[4]~12_combout\ & (!\Add0~13_combout\ & ((\Rseg[4]~13_combout\) # (!\Equal30~0_combout\)))) # (!\Rseg[4]~12_combout\ & (((\Rseg[4]~13_combout\ & \Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[4]~12_combout\,
	datab => \Equal30~0_combout\,
	datac => \Rseg[4]~13_combout\,
	datad => \Add0~13_combout\,
	combout => \Rseg[4]~14_combout\);

-- Location: LCCOMB_X31_Y1_N16
\comb~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~27_combout\ = (\Rseg[4]~14_combout\ & (((\Add0~4_combout\) # (\Rseg[6]~0_combout\)) # (!\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Rseg[4]~14_combout\,
	datac => \Add0~4_combout\,
	datad => \Rseg[6]~0_combout\,
	combout => \comb~27_combout\);

-- Location: LCCOMB_X31_Y1_N14
\comb~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~26_combout\ = (!\Rseg[4]~14_combout\ & (((\Add0~4_combout\) # (\Rseg[6]~0_combout\)) # (!\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Rseg[4]~14_combout\,
	datac => \Add0~4_combout\,
	datad => \Rseg[6]~0_combout\,
	combout => \comb~26_combout\);

-- Location: LCCOMB_X28_Y1_N0
\Rseg[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[4]$latch~combout\ = (!\comb~26_combout\ & ((\comb~27_combout\) # (\Rseg[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~27_combout\,
	datac => \comb~26_combout\,
	datad => \Rseg[4]$latch~combout\,
	combout => \Rseg[4]$latch~combout\);

-- Location: LCCOMB_X31_Y1_N28
\comb~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~29_combout\ = (\Rseg[5]~18_combout\ & ((\Rseg[6]~0_combout\) # ((\Add0~4_combout\) # (!\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[5]~18_combout\,
	datab => \Rseg[6]~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~16_combout\,
	combout => \comb~29_combout\);

-- Location: LCCOMB_X31_Y1_N2
\comb~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~28_combout\ = (!\Rseg[5]~18_combout\ & ((\Rseg[6]~0_combout\) # ((\Add0~4_combout\) # (!\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[5]~18_combout\,
	datab => \Rseg[6]~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~16_combout\,
	combout => \comb~28_combout\);

-- Location: LCCOMB_X31_Y1_N30
\Rseg[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[5]$latch~combout\ = (!\comb~28_combout\ & ((\comb~29_combout\) # (\Rseg[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~29_combout\,
	datac => \comb~28_combout\,
	datad => \Rseg[5]$latch~combout\,
	combout => \Rseg[5]$latch~combout\);

-- Location: LCCOMB_X32_Y1_N30
\Rseg[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[6]~19_combout\ = (\Cin~combout\ & ((\Add2~8_combout\))) # (!\Cin~combout\ & (\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~combout\,
	datac => \Add0~14_combout\,
	datad => \Add2~8_combout\,
	combout => \Rseg[6]~19_combout\);

-- Location: LCCOMB_X29_Y1_N2
\Rseg[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[6]~20_combout\ = (\Add0~10_combout\ & ((\Rseg[6]~19_combout\ & (\Add0~13_combout\ $ (!\Add0~7_combout\))) # (!\Rseg[6]~19_combout\ & (\Add0~13_combout\ & !\Add0~7_combout\)))) # (!\Add0~10_combout\ & ((\Add0~13_combout\ $ (\Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Rseg[6]~19_combout\,
	datac => \Add0~13_combout\,
	datad => \Add0~7_combout\,
	combout => \Rseg[6]~20_combout\);

-- Location: LCCOMB_X29_Y1_N20
\Rseg[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[6]~21_combout\ = (\Add0~10_combout\ & (((\Rseg[6]~20_combout\)))) # (!\Add0~10_combout\ & ((\Add0~16_combout\ & (\Equal30~0_combout\)) # (!\Add0~16_combout\ & ((!\Rseg[6]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Equal30~0_combout\,
	datac => \Rseg[6]~20_combout\,
	datad => \Add0~16_combout\,
	combout => \Rseg[6]~21_combout\);

-- Location: LCCOMB_X29_Y1_N18
\comb~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~23_combout\ = (\Rseg[6]~1_combout\ & ((\Rseg[6]~22_combout\) # ((\Rseg[6]~21_combout\ & \Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[6]~22_combout\,
	datab => \Rseg[6]~1_combout\,
	datac => \Rseg[6]~21_combout\,
	datad => \Add0~4_combout\,
	combout => \comb~23_combout\);

-- Location: LCCOMB_X29_Y1_N0
\comb~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~22_combout\ = (!\Rseg[6]~22_combout\ & (\Rseg[6]~1_combout\ & ((!\Add0~4_combout\) # (!\Rseg[6]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rseg[6]~22_combout\,
	datab => \Rseg[6]~1_combout\,
	datac => \Rseg[6]~21_combout\,
	datad => \Add0~4_combout\,
	combout => \comb~22_combout\);

-- Location: LCCOMB_X29_Y1_N14
\Rseg[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rseg[6]$latch~combout\ = (!\comb~22_combout\ & ((\comb~23_combout\) # (\Rseg[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~23_combout\,
	datac => \Rseg[6]$latch~combout\,
	datad => \comb~22_combout\,
	combout => \Rseg[6]$latch~combout\);

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[0]~I\ : cycloneii_io
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
	datain => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[1]~I\ : cycloneii_io
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
	datain => \Add0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[2]~I\ : cycloneii_io
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
	datain => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[3]~I\ : cycloneii_io
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
	datain => \Add0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cout~I\ : cycloneii_io
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
	datain => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cout);

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Overflow~I\ : cycloneii_io
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
	datain => \Overflow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Overflow);

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A~I\ : cycloneii_io
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
	datain => \A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A);

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B~I\ : cycloneii_io
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
	datain => \B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B);

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C~I\ : cycloneii_io
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
	datain => \C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D~I\ : cycloneii_io
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
	datain => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Rseg[0]~I\ : cycloneii_io
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
	datain => \Rseg[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Rseg(0));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Rseg[1]~I\ : cycloneii_io
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
	datain => \Rseg[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Rseg(1));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Rseg[2]~I\ : cycloneii_io
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
	datain => \Rseg[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Rseg(2));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Rseg[3]~I\ : cycloneii_io
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
	datain => \Rseg[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Rseg(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Rseg[4]~I\ : cycloneii_io
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
	datain => \Rseg[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Rseg(4));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Rseg[5]~I\ : cycloneii_io
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
	datain => \Rseg[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Rseg(5));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Rseg[6]~I\ : cycloneii_io
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
	datain => \Rseg[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Rseg(6));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(0));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(1));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[2]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[3]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[4]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(4));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[5]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(5));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(6));
END structure;


