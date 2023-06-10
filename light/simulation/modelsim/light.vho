-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "06/09/2023 16:25:44"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	light IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	car_timer : OUT STD.STANDARD.integer range 0 TO 9;
	ped_timer : OUT STD.STANDARD.integer range 0 TO 3
	);
END light;

-- Design Ports Information


ARCHITECTURE structure OF light IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_car_timer : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ped_timer : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_197\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_198\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_199\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Add0~164_combout\ : std_logic;
SIGNAL \Add0~166\ : std_logic;
SIGNAL \Add0~158_combout\ : std_logic;
SIGNAL \Add0~160\ : std_logic;
SIGNAL \Add0~160COUT1_177\ : std_logic;
SIGNAL \Add0~152_combout\ : std_logic;
SIGNAL \Add0~154\ : std_logic;
SIGNAL \Add0~154COUT1_178\ : std_logic;
SIGNAL \Add0~146_combout\ : std_logic;
SIGNAL \Add0~148\ : std_logic;
SIGNAL \Add0~148COUT1_179\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~142COUT1_180\ : std_logic;
SIGNAL \Add0~170_combout\ : std_logic;
SIGNAL \Add0~172\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~44COUT1_181\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~38COUT1_182\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_183\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~50COUT1_184\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~26COUT1_185\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~20COUT1_186\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~8COUT1_187\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_189\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_190\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_191\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~56COUT1_188\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_192\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_193\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_194\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_195\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \cnt[0]~0_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_196\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_200\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \car_count[0]~0_combout\ : std_logic;
SIGNAL \car_count[0]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \ped_count[0]~1_combout\ : std_logic;
SIGNAL \ped_count[0]~0_combout\ : std_logic;
SIGNAL \ped_count[0]~2_combout\ : std_logic;
SIGNAL \car_count~1_combout\ : std_logic;
SIGNAL \current_state~regout\ : std_logic;
SIGNAL \car_timer~0_combout\ : std_logic;
SIGNAL \car_timer~1_combout\ : std_logic;
SIGNAL \car_timer~2_combout\ : std_logic;
SIGNAL \car_timer~3_combout\ : std_logic;
SIGNAL \ped_timer~0_combout\ : std_logic;
SIGNAL \ped_timer~1_combout\ : std_logic;
SIGNAL car_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ped_count : std_logic_vector(1 DOWNTO 0);
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_current_state~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
car_timer <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_car_timer));
ped_timer <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_ped_timer));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_current_state~regout\ <= NOT \current_state~regout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X6_Y2_N0
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = cnt(26) $ ((((!\Add0~107\))))
-- \Add0~102\ = CARRY((cnt(26) & ((!\Add0~107\))))
-- \Add0~102COUT1_197\ = CARRY((cnt(26) & ((!\Add0~107\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(26),
	cin => \Add0~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_197\);

-- Location: LC_X6_Y1_N5
\cnt[26]\ : maxii_lcell
-- Equation(s):
-- cnt(26) = DFFEAS((\cnt[0]~0_combout\ & (\LessThan0~9_combout\ & ((\Add0~100_combout\)))) # (!\cnt[0]~0_combout\ & (((cnt(26))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~9_combout\,
	datab => cnt(26),
	datac => \Add0~100_combout\,
	datad => \cnt[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(26));

-- Location: LC_X6_Y2_N1
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = (cnt(27) $ (((!\Add0~107\ & \Add0~102\) # (\Add0~107\ & \Add0~102COUT1_197\))))
-- \Add0~97\ = CARRY(((!\Add0~102\) # (!cnt(27))))
-- \Add0~97COUT1_198\ = CARRY(((!\Add0~102COUT1_197\) # (!cnt(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(27),
	cin => \Add0~107\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_197\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_198\);

-- Location: LC_X6_Y1_N0
\cnt[27]\ : maxii_lcell
-- Equation(s):
-- cnt(27) = DFFEAS((\cnt[0]~0_combout\ & (((\LessThan0~9_combout\ & \Add0~95_combout\)))) # (!\cnt[0]~0_combout\ & (cnt(27))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(27),
	datab => \LessThan0~9_combout\,
	datac => \cnt[0]~0_combout\,
	datad => \Add0~95_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(27));

-- Location: LC_X6_Y2_N2
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = (cnt(28) $ ((!(!\Add0~107\ & \Add0~97\) # (\Add0~107\ & \Add0~97COUT1_198\))))
-- \Add0~92\ = CARRY(((cnt(28) & !\Add0~97\)))
-- \Add0~92COUT1_199\ = CARRY(((cnt(28) & !\Add0~97COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(28),
	cin => \Add0~107\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_199\);

-- Location: LC_X6_Y1_N8
\cnt[28]\ : maxii_lcell
-- Equation(s):
-- cnt(28) = DFFEAS((\cnt[0]~0_combout\ & (\LessThan0~9_combout\ & ((\Add0~90_combout\)))) # (!\cnt[0]~0_combout\ & (((cnt(28))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~9_combout\,
	datab => cnt(28),
	datac => \Add0~90_combout\,
	datad => \cnt[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(28));

-- Location: LC_X6_Y2_N3
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = (cnt(29) $ (((!\Add0~107\ & \Add0~92\) # (\Add0~107\ & \Add0~92COUT1_199\))))
-- \Add0~87\ = CARRY(((!\Add0~92\) # (!cnt(29))))
-- \Add0~87COUT1_200\ = CARRY(((!\Add0~92COUT1_199\) # (!cnt(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(29),
	cin => \Add0~107\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_199\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_200\);

-- Location: LC_X5_Y1_N9
\cnt[29]\ : maxii_lcell
-- Equation(s):
-- cnt(29) = DFFEAS((\cnt[0]~0_combout\ & (((\Add0~85_combout\ & \LessThan0~9_combout\)))) # (!\cnt[0]~0_combout\ & (cnt(29))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(29),
	datab => \cnt[0]~0_combout\,
	datac => \Add0~85_combout\,
	datad => \LessThan0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(29));

-- Location: LC_X5_Y1_N5
\LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \LessThan0~5_combout\ = (!cnt(27) & (!cnt(29) & (!cnt(30) & !cnt(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datab => cnt(29),
	datac => cnt(30),
	datad => cnt(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5_combout\);

-- Location: LC_X6_Y1_N3
\LessThan0~8\ : maxii_lcell
-- Equation(s):
-- \LessThan0~8_combout\ = ((\LessThan0~7_combout\ & ((\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~7_combout\,
	datad => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~8_combout\);

-- Location: LC_X3_Y2_N4
\Add0~164\ : maxii_lcell
-- Equation(s):
-- \Add0~164_combout\ = ((!cnt(0)))
-- \Add0~166\ = CARRY(((cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~164_combout\,
	cout => \Add0~166\);

-- Location: LC_X4_Y1_N4
\cnt[0]\ : maxii_lcell
-- Equation(s):
-- cnt(0) = DFFEAS((\Add0~164_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~4_combout\,
	datac => cnt(31),
	datad => \Add0~164_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LC_X3_Y2_N5
\Add0~158\ : maxii_lcell
-- Equation(s):
-- \Add0~158_combout\ = (cnt(1) $ ((\Add0~166\)))
-- \Add0~160\ = CARRY(((!\Add0~166\) # (!cnt(1))))
-- \Add0~160COUT1_177\ = CARRY(((!\Add0~166\) # (!cnt(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	cin => \Add0~166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~158_combout\,
	cout0 => \Add0~160\,
	cout1 => \Add0~160COUT1_177\);

-- Location: LC_X3_Y2_N2
\cnt[1]\ : maxii_lcell
-- Equation(s):
-- cnt(1) = DFFEAS((\Add0~158_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~158_combout\,
	datab => cnt(31),
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~4_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LC_X3_Y2_N6
\Add0~152\ : maxii_lcell
-- Equation(s):
-- \Add0~152_combout\ = (cnt(2) $ ((!(!\Add0~166\ & \Add0~160\) # (\Add0~166\ & \Add0~160COUT1_177\))))
-- \Add0~154\ = CARRY(((cnt(2) & !\Add0~160\)))
-- \Add0~154COUT1_178\ = CARRY(((cnt(2) & !\Add0~160COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	cin => \Add0~166\,
	cin0 => \Add0~160\,
	cin1 => \Add0~160COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~152_combout\,
	cout0 => \Add0~154\,
	cout1 => \Add0~154COUT1_178\);

-- Location: LC_X3_Y2_N1
\cnt[2]\ : maxii_lcell
-- Equation(s):
-- cnt(2) = DFFEAS((\Add0~152_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(31),
	datab => \LessThan0~8_combout\,
	datac => \Add0~152_combout\,
	datad => \LessThan0~4_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LC_X3_Y2_N7
\Add0~146\ : maxii_lcell
-- Equation(s):
-- \Add0~146_combout\ = (cnt(3) $ (((!\Add0~166\ & \Add0~154\) # (\Add0~166\ & \Add0~154COUT1_178\))))
-- \Add0~148\ = CARRY(((!\Add0~154\) # (!cnt(3))))
-- \Add0~148COUT1_179\ = CARRY(((!\Add0~154COUT1_178\) # (!cnt(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	cin => \Add0~166\,
	cin0 => \Add0~154\,
	cin1 => \Add0~154COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~146_combout\,
	cout0 => \Add0~148\,
	cout1 => \Add0~148COUT1_179\);

-- Location: LC_X3_Y1_N8
\cnt[3]\ : maxii_lcell
-- Equation(s):
-- cnt(3) = DFFEAS((\Add0~146_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~4_combout\,
	datac => cnt(31),
	datad => \Add0~146_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LC_X3_Y2_N8
\Add0~140\ : maxii_lcell
-- Equation(s):
-- \Add0~140_combout\ = cnt(4) $ ((((!(!\Add0~166\ & \Add0~148\) # (\Add0~166\ & \Add0~148COUT1_179\)))))
-- \Add0~142\ = CARRY((cnt(4) & ((!\Add0~148\))))
-- \Add0~142COUT1_180\ = CARRY((cnt(4) & ((!\Add0~148COUT1_179\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	cin => \Add0~166\,
	cin0 => \Add0~148\,
	cin1 => \Add0~148COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_180\);

-- Location: LC_X3_Y2_N3
\cnt[4]\ : maxii_lcell
-- Equation(s):
-- cnt(4) = DFFEAS((\Add0~140_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~140_combout\,
	datab => cnt(31),
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~4_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(4));

-- Location: LC_X3_Y2_N9
\Add0~170\ : maxii_lcell
-- Equation(s):
-- \Add0~170_combout\ = (cnt(5) $ (((!\Add0~166\ & \Add0~142\) # (\Add0~166\ & \Add0~142COUT1_180\))))
-- \Add0~172\ = CARRY(((!\Add0~142COUT1_180\) # (!cnt(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	cin => \Add0~166\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~170_combout\,
	cout => \Add0~172\);

-- Location: LC_X2_Y1_N6
\cnt[5]\ : maxii_lcell
-- Equation(s):
-- cnt(5) = DFFEAS((\Add0~170_combout\ & ((cnt(31)) # ((\LessThan0~4_combout\ & \LessThan0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(31),
	datab => \LessThan0~4_combout\,
	datac => \Add0~170_combout\,
	datad => \LessThan0~8_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(5));

-- Location: LC_X4_Y2_N0
\Add0~42\ : maxii_lcell
-- Equation(s):
-- \Add0~42_combout\ = (cnt(6) $ ((!\Add0~172\)))
-- \Add0~44\ = CARRY(((cnt(6) & !\Add0~172\)))
-- \Add0~44COUT1_181\ = CARRY(((cnt(6) & !\Add0~172\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	cin => \Add0~172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~42_combout\,
	cout0 => \Add0~44\,
	cout1 => \Add0~44COUT1_181\);

-- Location: LC_X4_Y1_N0
\cnt[6]\ : maxii_lcell
-- Equation(s):
-- cnt(6) = DFFEAS((\Add0~42_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~4_combout\,
	datac => cnt(31),
	datad => \Add0~42_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(6));

-- Location: LC_X4_Y2_N1
\Add0~36\ : maxii_lcell
-- Equation(s):
-- \Add0~36_combout\ = (cnt(7) $ (((!\Add0~172\ & \Add0~44\) # (\Add0~172\ & \Add0~44COUT1_181\))))
-- \Add0~38\ = CARRY(((!\Add0~44\) # (!cnt(7))))
-- \Add0~38COUT1_182\ = CARRY(((!\Add0~44COUT1_181\) # (!cnt(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	cin => \Add0~172\,
	cin0 => \Add0~44\,
	cin1 => \Add0~44COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~36_combout\,
	cout0 => \Add0~38\,
	cout1 => \Add0~38COUT1_182\);

-- Location: LC_X2_Y1_N0
\cnt[7]\ : maxii_lcell
-- Equation(s):
-- cnt(7) = DFFEAS((\Add0~36_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(31),
	datab => \LessThan0~8_combout\,
	datac => \LessThan0~4_combout\,
	datad => \Add0~36_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(7));

-- Location: LC_X4_Y2_N2
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (cnt(8) $ ((!(!\Add0~172\ & \Add0~38\) # (\Add0~172\ & \Add0~38COUT1_182\))))
-- \Add0~32\ = CARRY(((cnt(8) & !\Add0~38\)))
-- \Add0~32COUT1_183\ = CARRY(((cnt(8) & !\Add0~38COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	cin => \Add0~172\,
	cin0 => \Add0~38\,
	cin1 => \Add0~38COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_183\);

-- Location: LC_X2_Y1_N1
\cnt[8]\ : maxii_lcell
-- Equation(s):
-- cnt(8) = DFFEAS((\Add0~30_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(31),
	datab => \LessThan0~8_combout\,
	datac => \LessThan0~4_combout\,
	datad => \Add0~30_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(8));

-- Location: LC_X4_Y2_N3
\Add0~48\ : maxii_lcell
-- Equation(s):
-- \Add0~48_combout\ = cnt(9) $ (((((!\Add0~172\ & \Add0~32\) # (\Add0~172\ & \Add0~32COUT1_183\)))))
-- \Add0~50\ = CARRY(((!\Add0~32\)) # (!cnt(9)))
-- \Add0~50COUT1_184\ = CARRY(((!\Add0~32COUT1_183\)) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	cin => \Add0~172\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~48_combout\,
	cout0 => \Add0~50\,
	cout1 => \Add0~50COUT1_184\);

-- Location: LC_X4_Y1_N3
\cnt[9]\ : maxii_lcell
-- Equation(s):
-- cnt(9) = DFFEAS((\Add0~48_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(31),
	datab => \LessThan0~8_combout\,
	datac => \Add0~48_combout\,
	datad => \LessThan0~4_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(9));

-- Location: LC_X4_Y2_N4
\Add0~12\ : maxii_lcell
-- Equation(s):
-- \Add0~12_combout\ = (cnt(10) $ ((!(!\Add0~172\ & \Add0~50\) # (\Add0~172\ & \Add0~50COUT1_184\))))
-- \Add0~14\ = CARRY(((cnt(10) & !\Add0~50COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	cin => \Add0~172\,
	cin0 => \Add0~50\,
	cin1 => \Add0~50COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~12_combout\,
	cout => \Add0~14\);

-- Location: LC_X3_Y1_N7
\cnt[10]\ : maxii_lcell
-- Equation(s):
-- cnt(10) = DFFEAS((\Add0~12_combout\ & ((cnt(31)) # ((\LessThan0~4_combout\ & \LessThan0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(31),
	datab => \LessThan0~4_combout\,
	datac => \Add0~12_combout\,
	datad => \LessThan0~8_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(10));

-- Location: LC_X4_Y2_N5
\Add0~24\ : maxii_lcell
-- Equation(s):
-- \Add0~24_combout\ = cnt(11) $ ((((\Add0~14\))))
-- \Add0~26\ = CARRY(((!\Add0~14\)) # (!cnt(11)))
-- \Add0~26COUT1_185\ = CARRY(((!\Add0~14\)) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	cin => \Add0~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~24_combout\,
	cout0 => \Add0~26\,
	cout1 => \Add0~26COUT1_185\);

-- Location: LC_X3_Y1_N0
\cnt[11]\ : maxii_lcell
-- Equation(s):
-- cnt(11) = DFFEAS((\Add0~24_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~4_combout\,
	datac => cnt(31),
	datad => \Add0~24_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(11));

-- Location: LC_X4_Y2_N6
\Add0~18\ : maxii_lcell
-- Equation(s):
-- \Add0~18_combout\ = cnt(12) $ ((((!(!\Add0~14\ & \Add0~26\) # (\Add0~14\ & \Add0~26COUT1_185\)))))
-- \Add0~20\ = CARRY((cnt(12) & ((!\Add0~26\))))
-- \Add0~20COUT1_186\ = CARRY((cnt(12) & ((!\Add0~26COUT1_185\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(12),
	cin => \Add0~14\,
	cin0 => \Add0~26\,
	cin1 => \Add0~26COUT1_185\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~18_combout\,
	cout0 => \Add0~20\,
	cout1 => \Add0~20COUT1_186\);

-- Location: LC_X3_Y1_N6
\cnt[12]\ : maxii_lcell
-- Equation(s):
-- cnt(12) = DFFEAS((\Add0~18_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~18_combout\,
	datab => \LessThan0~8_combout\,
	datac => cnt(31),
	datad => \LessThan0~4_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(12));

-- Location: LC_X4_Y2_N7
\Add0~6\ : maxii_lcell
-- Equation(s):
-- \Add0~6_combout\ = (cnt(13) $ (((!\Add0~14\ & \Add0~20\) # (\Add0~14\ & \Add0~20COUT1_186\))))
-- \Add0~8\ = CARRY(((!\Add0~20\) # (!cnt(13))))
-- \Add0~8COUT1_187\ = CARRY(((!\Add0~20COUT1_186\) # (!cnt(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	cin => \Add0~14\,
	cin0 => \Add0~20\,
	cin1 => \Add0~20COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~6_combout\,
	cout0 => \Add0~8\,
	cout1 => \Add0~8COUT1_187\);

-- Location: LC_X3_Y1_N1
\cnt[13]\ : maxii_lcell
-- Equation(s):
-- cnt(13) = DFFEAS((\Add0~6_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~4_combout\,
	datac => cnt(31),
	datad => \Add0~6_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(13));

-- Location: LC_X4_Y2_N8
\Add0~54\ : maxii_lcell
-- Equation(s):
-- \Add0~54_combout\ = (cnt(14) $ ((!(!\Add0~14\ & \Add0~8\) # (\Add0~14\ & \Add0~8COUT1_187\))))
-- \Add0~56\ = CARRY(((cnt(14) & !\Add0~8\)))
-- \Add0~56COUT1_188\ = CARRY(((cnt(14) & !\Add0~8COUT1_187\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	cin => \Add0~14\,
	cin0 => \Add0~8\,
	cin1 => \Add0~8COUT1_187\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~54_combout\,
	cout0 => \Add0~56\,
	cout1 => \Add0~56COUT1_188\);

-- Location: LC_X2_Y1_N7
\cnt[14]\ : maxii_lcell
-- Equation(s):
-- cnt(14) = DFFEAS((\Add0~54_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(31),
	datab => \LessThan0~8_combout\,
	datac => \LessThan0~4_combout\,
	datad => \Add0~54_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(14));

-- Location: LC_X5_Y2_N0
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = cnt(16) $ ((((!\Add0~2\))))
-- \Add0~77\ = CARRY((cnt(16) & ((!\Add0~2\))))
-- \Add0~77COUT1_189\ = CARRY((cnt(16) & ((!\Add0~2\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	cin => \Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_189\);

-- Location: LC_X6_Y1_N4
\cnt[16]\ : maxii_lcell
-- Equation(s):
-- cnt(16) = DFFEAS((\cnt[0]~0_combout\ & (((\Add0~75_combout\ & \LessThan0~9_combout\)))) # (!\cnt[0]~0_combout\ & (cnt(16))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(16),
	datab => \Add0~75_combout\,
	datac => \LessThan0~9_combout\,
	datad => \cnt[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(16));

-- Location: LC_X5_Y2_N1
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = (cnt(17) $ (((!\Add0~2\ & \Add0~77\) # (\Add0~2\ & \Add0~77COUT1_189\))))
-- \Add0~72\ = CARRY(((!\Add0~77\) # (!cnt(17))))
-- \Add0~72COUT1_190\ = CARRY(((!\Add0~77COUT1_189\) # (!cnt(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	cin => \Add0~2\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_189\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_190\);

-- Location: LC_X6_Y1_N2
\cnt[17]\ : maxii_lcell
-- Equation(s):
-- cnt(17) = DFFEAS((\cnt[0]~0_combout\ & (\LessThan0~9_combout\ & ((\Add0~70_combout\)))) # (!\cnt[0]~0_combout\ & (((cnt(17))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~9_combout\,
	datab => cnt(17),
	datac => \Add0~70_combout\,
	datad => \cnt[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(17));

-- Location: LC_X5_Y2_N2
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = cnt(18) $ ((((!(!\Add0~2\ & \Add0~72\) # (\Add0~2\ & \Add0~72COUT1_190\)))))
-- \Add0~67\ = CARRY((cnt(18) & ((!\Add0~72\))))
-- \Add0~67COUT1_191\ = CARRY((cnt(18) & ((!\Add0~72COUT1_190\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(18),
	cin => \Add0~2\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_191\);

-- Location: LC_X6_Y1_N7
\cnt[18]\ : maxii_lcell
-- Equation(s):
-- cnt(18) = DFFEAS((\cnt[0]~0_combout\ & (((\LessThan0~9_combout\ & \Add0~65_combout\)))) # (!\cnt[0]~0_combout\ & (cnt(18))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(18),
	datab => \LessThan0~9_combout\,
	datac => \Add0~65_combout\,
	datad => \cnt[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(18));

-- Location: LC_X5_Y2_N3
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (cnt(19) $ (((!\Add0~2\ & \Add0~67\) # (\Add0~2\ & \Add0~67COUT1_191\))))
-- \Add0~62\ = CARRY(((!\Add0~67\) # (!cnt(19))))
-- \Add0~62COUT1_192\ = CARRY(((!\Add0~67COUT1_191\) # (!cnt(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	cin => \Add0~2\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_191\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_192\);

-- Location: LC_X6_Y1_N9
\cnt[19]\ : maxii_lcell
-- Equation(s):
-- cnt(19) = DFFEAS((\cnt[0]~0_combout\ & (\LessThan0~9_combout\ & ((\Add0~60_combout\)))) # (!\cnt[0]~0_combout\ & (((cnt(19))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~9_combout\,
	datab => cnt(19),
	datac => \Add0~60_combout\,
	datad => \cnt[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(19));

-- Location: LC_X6_Y1_N6
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (cnt(16) & (cnt(19) & (cnt(18) & cnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datab => cnt(19),
	datac => cnt(18),
	datad => cnt(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X3_Y1_N9
\LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (((!cnt(8) & !cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => cnt(8),
	datad => cnt(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X3_Y1_N3
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = ((!cnt(13) & ((!cnt(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	datad => cnt(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X3_Y1_N4
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (!cnt(12) & (!cnt(10) & (!cnt(11) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(12),
	datab => cnt(10),
	datac => cnt(11),
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X4_Y1_N1
\LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~1_combout\ & (((!cnt(6) & \LessThan0~2_combout\)) # (!cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datab => cnt(6),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~3_combout\);

-- Location: LC_X4_Y1_N2
\LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \LessThan0~4_combout\ = ((\LessThan0~3_combout\) # ((!cnt(15) & !cnt(14)))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff1f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datab => cnt(14),
	datac => \Equal0~0_combout\,
	datad => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~4_combout\);

-- Location: LC_X4_Y2_N9
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (cnt(15) $ (((!\Add0~14\ & \Add0~56\) # (\Add0~14\ & \Add0~56COUT1_188\))))
-- \Add0~2\ = CARRY(((!\Add0~56COUT1_188\) # (!cnt(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(15),
	cin => \Add0~14\,
	cin0 => \Add0~56\,
	cin1 => \Add0~56COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout => \Add0~2\);

-- Location: LC_X3_Y1_N2
\cnt[15]\ : maxii_lcell
-- Equation(s):
-- cnt(15) = DFFEAS((\Add0~0_combout\ & ((cnt(31)) # ((\LessThan0~8_combout\ & \LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~4_combout\,
	datac => cnt(31),
	datad => \Add0~0_combout\,
	aclr => GND,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(15));

-- Location: LC_X5_Y2_N4
\Add0~130\ : maxii_lcell
-- Equation(s):
-- \Add0~130_combout\ = (cnt(20) $ ((!(!\Add0~2\ & \Add0~62\) # (\Add0~2\ & \Add0~62COUT1_192\))))
-- \Add0~132\ = CARRY(((cnt(20) & !\Add0~62COUT1_192\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	cin => \Add0~2\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout => \Add0~132\);

-- Location: LC_X5_Y1_N0
\cnt[20]\ : maxii_lcell
-- Equation(s):
-- cnt(20) = DFFEAS((\cnt[0]~0_combout\ & (\LessThan0~9_combout\ & ((\Add0~130_combout\)))) # (!\cnt[0]~0_combout\ & (((cnt(20))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~9_combout\,
	datab => \cnt[0]~0_combout\,
	datac => cnt(20),
	datad => \Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(20));

-- Location: LC_X5_Y2_N5
\Add0~125\ : maxii_lcell
-- Equation(s):
-- \Add0~125_combout\ = (cnt(21) $ ((\Add0~132\)))
-- \Add0~127\ = CARRY(((!\Add0~132\) # (!cnt(21))))
-- \Add0~127COUT1_193\ = CARRY(((!\Add0~132\) # (!cnt(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(21),
	cin => \Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_193\);

-- Location: LC_X5_Y1_N1
\cnt[21]\ : maxii_lcell
-- Equation(s):
-- cnt(21) = DFFEAS((\cnt[0]~0_combout\ & (\LessThan0~9_combout\ & (\Add0~125_combout\))) # (!\cnt[0]~0_combout\ & (((cnt(21))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b380",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~9_combout\,
	datab => \cnt[0]~0_combout\,
	datac => \Add0~125_combout\,
	datad => cnt(21),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(21));

-- Location: LC_X5_Y2_N6
\Add0~120\ : maxii_lcell
-- Equation(s):
-- \Add0~120_combout\ = cnt(22) $ ((((!(!\Add0~132\ & \Add0~127\) # (\Add0~132\ & \Add0~127COUT1_193\)))))
-- \Add0~122\ = CARRY((cnt(22) & ((!\Add0~127\))))
-- \Add0~122COUT1_194\ = CARRY((cnt(22) & ((!\Add0~127COUT1_193\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	cin => \Add0~132\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_193\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_194\);

-- Location: LC_X5_Y1_N8
\cnt[22]\ : maxii_lcell
-- Equation(s):
-- cnt(22) = DFFEAS((\cnt[0]~0_combout\ & (\Add0~120_combout\ & (\LessThan0~9_combout\))) # (!\cnt[0]~0_combout\ & (((cnt(22))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b380",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~120_combout\,
	datab => \cnt[0]~0_combout\,
	datac => \LessThan0~9_combout\,
	datad => cnt(22),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(22));

-- Location: LC_X5_Y2_N7
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = (cnt(23) $ (((!\Add0~132\ & \Add0~122\) # (\Add0~132\ & \Add0~122COUT1_194\))))
-- \Add0~117\ = CARRY(((!\Add0~122\) # (!cnt(23))))
-- \Add0~117COUT1_195\ = CARRY(((!\Add0~122COUT1_194\) # (!cnt(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(23),
	cin => \Add0~132\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_195\);

-- Location: LC_X5_Y1_N7
\cnt[23]\ : maxii_lcell
-- Equation(s):
-- cnt(23) = DFFEAS((\cnt[0]~0_combout\ & (\LessThan0~9_combout\ & ((\Add0~115_combout\)))) # (!\cnt[0]~0_combout\ & (((cnt(23))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~9_combout\,
	datab => cnt(23),
	datac => \cnt[0]~0_combout\,
	datad => \Add0~115_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(23));

-- Location: LC_X5_Y2_N8
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = cnt(24) $ ((((!(!\Add0~132\ & \Add0~117\) # (\Add0~132\ & \Add0~117COUT1_195\)))))
-- \Add0~112\ = CARRY((cnt(24) & ((!\Add0~117\))))
-- \Add0~112COUT1_196\ = CARRY((cnt(24) & ((!\Add0~117COUT1_195\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	cin => \Add0~132\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_195\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_196\);

-- Location: LC_X5_Y1_N4
\cnt[24]\ : maxii_lcell
-- Equation(s):
-- cnt(24) = DFFEAS((\cnt[0]~0_combout\ & (((\LessThan0~9_combout\ & \Add0~110_combout\)))) # (!\cnt[0]~0_combout\ & (cnt(24))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(24),
	datab => \LessThan0~9_combout\,
	datac => \cnt[0]~0_combout\,
	datad => \Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(24));

-- Location: LC_X5_Y1_N2
\LessThan0~6\ : maxii_lcell
-- Equation(s):
-- \LessThan0~6_combout\ = (!cnt(24) & (!cnt(23) & (!cnt(25) & !cnt(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datab => cnt(23),
	datac => cnt(25),
	datad => cnt(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~6_combout\);

-- Location: LC_X5_Y1_N3
\LessThan0~7\ : maxii_lcell
-- Equation(s):
-- \LessThan0~7_combout\ = (!cnt(22) & (!cnt(21) & (!cnt(20) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(21),
	datac => cnt(20),
	datad => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~7_combout\);

-- Location: LC_X4_Y1_N7
\LessThan0~9\ : maxii_lcell
-- Equation(s):
-- \LessThan0~9_combout\ = (cnt(31)) # ((\LessThan0~5_combout\ & (\LessThan0~7_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(31),
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~9_combout\);

-- Location: LC_X3_Y1_N5
\Equal0~3\ : maxii_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (((cnt(5)) # (!cnt(6))) # (!cnt(14))) # (!cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datab => cnt(14),
	datac => cnt(5),
	datad => cnt(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X4_Y1_N5
\Equal0~2\ : maxii_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (cnt(0)) # ((cnt(8)) # ((cnt(31)) # (cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(8),
	datac => cnt(31),
	datad => cnt(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X3_Y2_N0
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (cnt(4)) # ((cnt(2)) # ((cnt(1)) # (cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X4_Y1_N8
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\) # (((\Equal0~2_combout\) # (\Equal0~1_combout\)) # (!\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \LessThan0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X4_Y1_N9
\Equal0~5\ : maxii_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (((\Equal0~4_combout\) # (!\LessThan0~7_combout\)) # (!\LessThan0~5_combout\)) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~7_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X4_Y1_N6
\cnt[0]~0\ : maxii_lcell
-- Equation(s):
-- \cnt[0]~0_combout\ = ((!\reset~combout\ & ((\LessThan0~9_combout\) # (!\Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \LessThan0~9_combout\,
	datad => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt[0]~0_combout\);

-- Location: LC_X5_Y2_N9
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = cnt(25) $ (((((!\Add0~132\ & \Add0~112\) # (\Add0~132\ & \Add0~112COUT1_196\)))))
-- \Add0~107\ = CARRY(((!\Add0~112COUT1_196\)) # (!cnt(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	cin => \Add0~132\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout => \Add0~107\);

-- Location: LC_X5_Y1_N6
\cnt[25]\ : maxii_lcell
-- Equation(s):
-- cnt(25) = DFFEAS((\cnt[0]~0_combout\ & (((\Add0~105_combout\ & \LessThan0~9_combout\)))) # (!\cnt[0]~0_combout\ & (cnt(25))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(25),
	datab => \cnt[0]~0_combout\,
	datac => \Add0~105_combout\,
	datad => \LessThan0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(25));

-- Location: LC_X6_Y2_N4
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (cnt(30) $ ((!(!\Add0~107\ & \Add0~87\) # (\Add0~107\ & \Add0~87COUT1_200\))))
-- \Add0~82\ = CARRY(((cnt(30) & !\Add0~87COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(30),
	cin => \Add0~107\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout => \Add0~82\);

-- Location: LC_X6_Y2_N9
\cnt[30]\ : maxii_lcell
-- Equation(s):
-- cnt(30) = DFFEAS((\cnt[0]~0_combout\ & (\Add0~80_combout\ & ((\LessThan0~9_combout\)))) # (!\cnt[0]~0_combout\ & (((cnt(30))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~80_combout\,
	datab => cnt(30),
	datac => \LessThan0~9_combout\,
	datad => \cnt[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(30));

-- Location: LC_X6_Y2_N5
\Add0~135\ : maxii_lcell
-- Equation(s):
-- \Add0~135_combout\ = ((\Add0~82\ $ (cnt(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => cnt(31),
	cin => \Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\);

-- Location: LC_X6_Y2_N8
\cnt[31]\ : maxii_lcell
-- Equation(s):
-- cnt(31) = DFFEAS((\reset~combout\ & (cnt(31))) # (!\reset~combout\ & (((\Add0~135_combout\ & \LessThan0~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => cnt(31),
	datac => \Add0~135_combout\,
	datad => \LessThan0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(31));

-- Location: LC_X7_Y1_N3
\car_count[0]~0\ : maxii_lcell
-- Equation(s):
-- \car_count[0]~0_combout\ = (!cnt(31) & (!\Equal0~5_combout\ & ((!\LessThan0~4_combout\) # (!\LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0015",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(31),
	datab => \LessThan0~8_combout\,
	datac => \LessThan0~4_combout\,
	datad => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \car_count[0]~0_combout\);

-- Location: LC_X7_Y1_N4
\car_count[0]~2\ : maxii_lcell
-- Equation(s):
-- \car_count[0]~2_combout\ = (\car_count[0]~0_combout\ & ((\current_state~regout\ & (\car_count~1_combout\)) # (!\current_state~regout\ & ((!\ped_count[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8b00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \car_count~1_combout\,
	datab => \current_state~regout\,
	datac => \ped_count[0]~0_combout\,
	datad => \car_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \car_count[0]~2_combout\);

-- Location: LC_X7_Y1_N5
\car_count[0]\ : maxii_lcell
-- Equation(s):
-- car_count(0) = DFFEAS((car_count(0) & ((\current_state~regout\) # ((!\car_count[0]~2_combout\)))) # (!car_count(0) & (((\car_count[0]~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , VCC, GLOBAL(\reset~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => car_count(0),
	datab => \current_state~regout\,
	datac => VCC,
	datad => \car_count[0]~2_combout\,
	aclr => GND,
	aload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => car_count(0));

-- Location: LC_X7_Y1_N1
\car_count[1]\ : maxii_lcell
-- Equation(s):
-- car_count(1) = DFFEAS((\car_count[0]~2_combout\ & (!\current_state~regout\ & (car_count(1) $ (!car_count(0))))) # (!\car_count[0]~2_combout\ & (car_count(1))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a1a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => car_count(1),
	datab => \current_state~regout\,
	datac => \car_count[0]~2_combout\,
	datad => car_count(0),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => car_count(1));

-- Location: LC_X2_Y2_N9
\Add1~0\ : maxii_lcell
-- Equation(s):
-- \Add1~0_combout\ = (((!car_count(1) & !car_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => car_count(1),
	datad => car_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\);

-- Location: LC_X7_Y1_N0
\car_count[2]\ : maxii_lcell
-- Equation(s):
-- car_count(2) = DFFEAS((\car_count[0]~2_combout\ & (!\current_state~regout\ & (car_count(2) $ (\Add1~0_combout\)))) # (!\car_count[0]~2_combout\ & (car_count(2))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1a2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => car_count(2),
	datab => \current_state~regout\,
	datac => \car_count[0]~2_combout\,
	datad => \Add1~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => car_count(2));

-- Location: LC_X2_Y2_N0
\ped_count[0]~1\ : maxii_lcell
-- Equation(s):
-- \ped_count[0]~1_combout\ = (!car_count(1) & (((!car_count(2) & !car_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => car_count(1),
	datac => car_count(2),
	datad => car_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ped_count[0]~1_combout\);

-- Location: LC_X7_Y1_N2
\car_count[3]\ : maxii_lcell
-- Equation(s):
-- car_count(3) = DFFEAS((\car_count[0]~2_combout\ & ((\current_state~regout\) # (\ped_count[0]~1_combout\ $ (car_count[3])))) # (!\car_count[0]~2_combout\ & (((car_count[3])))), GLOBAL(\clk~combout\), VCC, , , VCC, GLOBAL(\reset~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "def0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ped_count[0]~1_combout\,
	datab => \current_state~regout\,
	datac => VCC,
	datad => \car_count[0]~2_combout\,
	aclr => GND,
	aload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => car_count(3));

-- Location: LC_X2_Y2_N8
\ped_count[0]~0\ : maxii_lcell
-- Equation(s):
-- \ped_count[0]~0_combout\ = (!car_count(1) & (!car_count(3) & (!car_count(2) & !car_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => car_count(1),
	datab => car_count(3),
	datac => car_count(2),
	datad => car_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ped_count[0]~0_combout\);

-- Location: LC_X7_Y1_N8
\ped_count[0]~2\ : maxii_lcell
-- Equation(s):
-- \ped_count[0]~2_combout\ = (\car_count[0]~0_combout\ & ((\current_state~regout\ & (!\car_count~1_combout\)) # (!\current_state~regout\ & ((\ped_count[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \car_count~1_combout\,
	datab => \current_state~regout\,
	datac => \ped_count[0]~0_combout\,
	datad => \car_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ped_count[0]~2_combout\);

-- Location: LC_X7_Y1_N6
\ped_count[0]\ : maxii_lcell
-- Equation(s):
-- ped_count(0) = DFFEAS((ped_count(0) & (((!\ped_count[0]~2_combout\) # (!\current_state~regout\)))) # (!ped_count(0) & (((\ped_count[0]~2_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5faa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => ped_count(0),
	datac => \current_state~regout\,
	datad => \ped_count[0]~2_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ped_count(0));

-- Location: LC_X7_Y1_N9
\ped_count[1]\ : maxii_lcell
-- Equation(s):
-- ped_count(1) = DFFEAS((\ped_count[0]~2_combout\ & ((ped_count(0) $ (!ped_count(1))) # (!\current_state~regout\))) # (!\ped_count[0]~2_combout\ & (((ped_count(1))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b7f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => ped_count(0),
	datab => \current_state~regout\,
	datac => ped_count(1),
	datad => \ped_count[0]~2_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ped_count(1));

-- Location: LC_X6_Y1_N1
\car_count~1\ : maxii_lcell
-- Equation(s):
-- \car_count~1_combout\ = (((!ped_count(0) & !ped_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => ped_count(0),
	datad => ped_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \car_count~1_combout\);

-- Location: LC_X7_Y1_N7
current_state : maxii_lcell
-- Equation(s):
-- \current_state~regout\ = DFFEAS((\current_state~regout\ & (((!\car_count[0]~0_combout\)) # (!\car_count~1_combout\))) # (!\current_state~regout\ & (((\ped_count[0]~0_combout\ & \car_count[0]~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), 
-- , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \car_count~1_combout\,
	datab => \current_state~regout\,
	datac => \ped_count[0]~0_combout\,
	datad => \car_count[0]~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state~regout\);

-- Location: LC_X2_Y2_N2
\car_timer~0\ : maxii_lcell
-- Equation(s):
-- \car_timer~0_combout\ = ((!\current_state~regout\ & ((car_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \current_state~regout\,
	datad => car_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \car_timer~0_combout\);

-- Location: LC_X2_Y2_N4
\car_timer~1\ : maxii_lcell
-- Equation(s):
-- \car_timer~1_combout\ = (((car_count(1) & !\current_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => car_count(1),
	datad => \current_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \car_timer~1_combout\);

-- Location: LC_X2_Y2_N7
\car_timer~2\ : maxii_lcell
-- Equation(s):
-- \car_timer~2_combout\ = (((car_count(2) & !\current_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => car_count(2),
	datad => \current_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \car_timer~2_combout\);

-- Location: LC_X2_Y2_N6
\car_timer~3\ : maxii_lcell
-- Equation(s):
-- \car_timer~3_combout\ = ((car_count(3) & ((!\current_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => car_count(3),
	datad => \current_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \car_timer~3_combout\);

-- Location: LC_X2_Y2_N1
\ped_timer~0\ : maxii_lcell
-- Equation(s):
-- \ped_timer~0_combout\ = (((ped_count(0) & \current_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => ped_count(0),
	datad => \current_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ped_timer~0_combout\);

-- Location: LC_X2_Y2_N5
\ped_timer~1\ : maxii_lcell
-- Equation(s):
-- \ped_timer~1_combout\ = ((\current_state~regout\ & ((ped_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \current_state~regout\,
	datad => ped_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ped_timer~1_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_current_state~regout\,
	oe => VCC,
	padio => ww_LED1);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \current_state~regout\,
	oe => VCC,
	padio => ww_LED2);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\car_timer[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \car_timer~0_combout\,
	oe => VCC,
	padio => ww_car_timer(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\car_timer[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \car_timer~1_combout\,
	oe => VCC,
	padio => ww_car_timer(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\car_timer[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \car_timer~2_combout\,
	oe => VCC,
	padio => ww_car_timer(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\car_timer[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \car_timer~3_combout\,
	oe => VCC,
	padio => ww_car_timer(3));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ped_timer[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ped_timer~0_combout\,
	oe => VCC,
	padio => ww_ped_timer(0));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ped_timer[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ped_timer~1_combout\,
	oe => VCC,
	padio => ww_ped_timer(1));
END structure;


