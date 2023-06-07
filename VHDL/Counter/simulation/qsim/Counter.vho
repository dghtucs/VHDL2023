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

-- DATE "05/12/2023 14:56:20"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Stopwatch IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	pau : IN std_logic;
	H : BUFFER std_logic_vector(6 DOWNTO 0);
	L : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Stopwatch;

-- Design Ports Information


ARCHITECTURE structure OF Stopwatch IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_pau : std_logic;
SIGNAL ww_H : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_L : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \pau~combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_177\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_178\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_173\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_174\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_175\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_161\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_162\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_163\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~132COUT1_165\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_164\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_166\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_167\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~137COUT1_168\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_169\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_170\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~142COUT1_171\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~152COUT1_172\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~157\ : std_logic;
SIGNAL \Add0~157COUT1_176\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_181\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_179\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_180\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_182\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102COUT1_183\ : std_logic;
SIGNAL \Add0~107COUT1_184\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Equal0~9\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Equal0~8\ : std_logic;
SIGNAL \Equal1~0\ : std_logic;
SIGNAL \Equal1~1\ : std_logic;
SIGNAL \clk_in~0_combout\ : std_logic;
SIGNAL \clk_in~regout\ : std_logic;
SIGNAL \Count|cnt|CL|labe10:0:Di|Q~regout\ : std_logic;
SIGNAL \Count|cnt|CL|labe10:2:Di|Q~regout\ : std_logic;
SIGNAL \Count|cnt|CL|labe10:3:Di|Q~regout\ : std_logic;
SIGNAL \Count|cnt|CL|labe10:1:Di|Q~regout\ : std_logic;
SIGNAL \Count|cnt|Dv|Q~regout\ : std_logic;
SIGNAL \Count|cnt|CH|labe10:0:Di|Q~regout\ : std_logic;
SIGNAL \Count|cnt|CH|labe10:1:Di|Q~regout\ : std_logic;
SIGNAL \Count|cnt|CH|labe10:2:Di|Q~regout\ : std_logic;
SIGNAL \Count|digL|Mux6~0_combout\ : std_logic;
SIGNAL \Count|digL|Mux5~0_combout\ : std_logic;
SIGNAL \Count|digL|Mux4~0_combout\ : std_logic;
SIGNAL \Count|digL|Mux3~0_combout\ : std_logic;
SIGNAL \Count|digL|Mux2~0_combout\ : std_logic;
SIGNAL \Count|digL|Mux1~0_combout\ : std_logic;
SIGNAL \Count|digL|Mux0~0_combout\ : std_logic;
SIGNAL \Count|digH|Mux6~0_combout\ : std_logic;
SIGNAL \Count|digH|Mux5~0_combout\ : std_logic;
SIGNAL \Count|digH|Mux4~0_combout\ : std_logic;
SIGNAL \Count|digH|Mux3~0_combout\ : std_logic;
SIGNAL \Count|digH|Mux2~0_combout\ : std_logic;
SIGNAL \Count|digH|Mux1~0_combout\ : std_logic;
SIGNAL \Count|digH|Mux0~0_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_pau~combout\ : std_logic;
SIGNAL \Count|digH|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Count|digH|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Count|digH|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Count|digH|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Count|digH|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Count|digH|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Count|digL|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Count|digL|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Count|digL|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_pau <= pau;
H <= ww_H;
L <= ww_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pau~combout\ <= NOT \pau~combout\;
\Count|digH|ALT_INV_Mux0~0_combout\ <= NOT \Count|digH|Mux0~0_combout\;
\Count|digH|ALT_INV_Mux1~0_combout\ <= NOT \Count|digH|Mux1~0_combout\;
\Count|digH|ALT_INV_Mux2~0_combout\ <= NOT \Count|digH|Mux2~0_combout\;
\Count|digH|ALT_INV_Mux3~0_combout\ <= NOT \Count|digH|Mux3~0_combout\;
\Count|digH|ALT_INV_Mux4~0_combout\ <= NOT \Count|digH|Mux4~0_combout\;
\Count|digH|ALT_INV_Mux5~0_combout\ <= NOT \Count|digH|Mux5~0_combout\;
\Count|digL|ALT_INV_Mux2~0_combout\ <= NOT \Count|digL|Mux2~0_combout\;
\Count|digL|ALT_INV_Mux4~0_combout\ <= NOT \Count|digL|Mux4~0_combout\;
\Count|digL|ALT_INV_Mux5~0_combout\ <= NOT \Count|digL|Mux5~0_combout\;

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X6_Y4_N5
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = cnt(21) $ ((((\Add0~62\))))
-- \Add0~67\ = CARRY(((!\Add0~62\)) # (!cnt(21)))
-- \Add0~67COUT1_177\ = CARRY(((!\Add0~62\)) # (!cnt(21)))

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
	dataa => cnt(21),
	cin => \Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_177\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pau~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pau,
	combout => \pau~combout\);

-- Location: LC_X5_Y3_N5
\cnt[21]\ : maxii_lcell
-- Equation(s):
-- cnt(21) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~65_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(21));

-- Location: LC_X6_Y4_N6
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = (cnt(22) $ ((!(!\Add0~62\ & \Add0~67\) # (\Add0~62\ & \Add0~67COUT1_177\))))
-- \Add0~72\ = CARRY(((cnt(22) & !\Add0~67\)))
-- \Add0~72COUT1_178\ = CARRY(((cnt(22) & !\Add0~67COUT1_177\)))

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
	datab => cnt(22),
	cin => \Add0~62\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_178\);

-- Location: LC_X5_Y3_N7
\cnt[22]\ : maxii_lcell
-- Equation(s):
-- cnt(22) = DFFEAS((((\Add0~70_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~70_combout\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(22));

-- Location: LC_X6_Y4_N7
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = cnt(23) $ (((((!\Add0~62\ & \Add0~72\) # (\Add0~62\ & \Add0~72COUT1_178\)))))
-- \Add0~77\ = CARRY(((!\Add0~72\)) # (!cnt(23)))
-- \Add0~77COUT1_179\ = CARRY(((!\Add0~72COUT1_178\)) # (!cnt(23)))

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
	dataa => cnt(23),
	cin => \Add0~62\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_179\);

-- Location: LC_X5_Y3_N6
\cnt[23]\ : maxii_lcell
-- Equation(s):
-- cnt(23) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~75_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(23));

-- Location: LC_X6_Y4_N0
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = (cnt(16) $ ((!\Add0~147\)))
-- \Add0~42\ = CARRY(((cnt(16) & !\Add0~147\)))
-- \Add0~42COUT1_173\ = CARRY(((cnt(16) & !\Add0~147\)))

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
	datab => cnt(16),
	cin => \Add0~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_173\);

-- Location: LC_X3_Y4_N3
\cnt[16]\ : maxii_lcell
-- Equation(s):
-- cnt(16) = DFFEAS((\Add0~40_combout\ & (((!\Equal0~9\) # (!\Equal0~8\)) # (!\Equal0~7_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~7_combout\,
	datab => \Equal0~8\,
	datac => \Add0~40_combout\,
	datad => \Equal0~9\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(16));

-- Location: LC_X6_Y4_N1
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = (cnt(17) $ (((!\Add0~147\ & \Add0~42\) # (\Add0~147\ & \Add0~42COUT1_173\))))
-- \Add0~47\ = CARRY(((!\Add0~42\) # (!cnt(17))))
-- \Add0~47COUT1_174\ = CARRY(((!\Add0~42COUT1_173\) # (!cnt(17))))

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
	cin => \Add0~147\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_174\);

-- Location: LC_X3_Y4_N8
\cnt[17]\ : maxii_lcell
-- Equation(s):
-- cnt(17) = DFFEAS((\Add0~45_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~8\)) # (!\Equal0~9\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~9\,
	datab => \Equal0~8\,
	datac => \Equal0~7_combout\,
	datad => \Add0~45_combout\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(17));

-- Location: LC_X6_Y4_N2
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = (cnt(18) $ ((!(!\Add0~147\ & \Add0~47\) # (\Add0~147\ & \Add0~47COUT1_174\))))
-- \Add0~52\ = CARRY(((cnt(18) & !\Add0~47\)))
-- \Add0~52COUT1_175\ = CARRY(((cnt(18) & !\Add0~47COUT1_174\)))

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
	datab => cnt(18),
	cin => \Add0~147\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_175\);

-- Location: LC_X2_Y4_N4
\cnt[18]\ : maxii_lcell
-- Equation(s):
-- cnt(18) = DFFEAS((\Add0~50_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~9\)) # (!\Equal0~8\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~50_combout\,
	datab => \Equal0~8\,
	datac => \Equal0~9\,
	datad => \Equal0~7_combout\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(18));

-- Location: LC_X6_Y4_N3
\Add0~155\ : maxii_lcell
-- Equation(s):
-- \Add0~155_combout\ = (cnt(19) $ (((!\Add0~147\ & \Add0~52\) # (\Add0~147\ & \Add0~52COUT1_175\))))
-- \Add0~157\ = CARRY(((!\Add0~52\) # (!cnt(19))))
-- \Add0~157COUT1_176\ = CARRY(((!\Add0~52COUT1_175\) # (!cnt(19))))

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
	cin => \Add0~147\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155_combout\,
	cout0 => \Add0~157\,
	cout1 => \Add0~157COUT1_176\);

-- Location: LC_X2_Y4_N3
\cnt[19]\ : maxii_lcell
-- Equation(s):
-- cnt(19) = DFFEAS((\Add0~155_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~9\)) # (!\Equal0~8\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~155_combout\,
	datab => \Equal0~8\,
	datac => \Equal0~9\,
	datad => \Equal0~7_combout\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(19));

-- Location: LC_X4_Y4_N4
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = ((!cnt(0)))
-- \Add0~7\ = CARRY(((cnt(0))))

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
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X3_Y4_N6
\cnt[0]\ : maxii_lcell
-- Equation(s):
-- cnt(0) = DFFEAS((\Add0~5_combout\ & (((!\Equal0~9\) # (!\Equal0~8\)) # (!\Equal0~7_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~7_combout\,
	datab => \Equal0~8\,
	datac => \Add0~5_combout\,
	datad => \Equal0~9\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LC_X5_Y4_N5
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = (cnt(11) $ ((\Add0~32\)))
-- \Add0~37\ = CARRY(((!\Add0~32\) # (!cnt(11))))
-- \Add0~37COUT1_169\ = CARRY(((!\Add0~32\) # (!cnt(11))))

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
	datab => cnt(11),
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_169\);

-- Location: LC_X2_Y4_N1
\cnt[11]\ : maxii_lcell
-- Equation(s):
-- cnt(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~35_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(11));

-- Location: LC_X4_Y4_N5
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (cnt(1) $ ((\Add0~7\)))
-- \Add0~2\ = CARRY(((!\Add0~7\) # (!cnt(1))))
-- \Add0~2COUT1_161\ = CARRY(((!\Add0~7\) # (!cnt(1))))

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
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_161\);

-- Location: LC_X4_Y4_N0
\cnt[1]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (!cnt(3) & (!cnt(0) & (!cnt[1] & !cnt(2))))
-- cnt(1) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(3),
	datab => cnt(0),
	datac => \Add0~0_combout\,
	datad => cnt(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => cnt(1));

-- Location: LC_X4_Y4_N6
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = (cnt(2) $ ((!(!\Add0~7\ & \Add0~2\) # (\Add0~7\ & \Add0~2COUT1_161\))))
-- \Add0~12\ = CARRY(((cnt(2) & !\Add0~2\)))
-- \Add0~12COUT1_162\ = CARRY(((cnt(2) & !\Add0~2COUT1_161\)))

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
	cin => \Add0~7\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_162\);

-- Location: LC_X4_Y4_N1
\cnt[2]\ : maxii_lcell
-- Equation(s):
-- cnt(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~10_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LC_X4_Y4_N7
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = cnt(3) $ (((((!\Add0~7\ & \Add0~12\) # (\Add0~7\ & \Add0~12COUT1_162\)))))
-- \Add0~17\ = CARRY(((!\Add0~12\)) # (!cnt(3)))
-- \Add0~17COUT1_163\ = CARRY(((!\Add0~12COUT1_162\)) # (!cnt(3)))

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
	dataa => cnt(3),
	cin => \Add0~7\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_163\);

-- Location: LC_X4_Y4_N3
\cnt[3]\ : maxii_lcell
-- Equation(s):
-- cnt(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~15_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LC_X4_Y4_N8
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (cnt(4) $ ((!(!\Add0~7\ & \Add0~17\) # (\Add0~7\ & \Add0~17COUT1_163\))))
-- \Add0~22\ = CARRY(((cnt(4) & !\Add0~17\)))
-- \Add0~22COUT1_164\ = CARRY(((cnt(4) & !\Add0~17COUT1_163\)))

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
	datab => cnt(4),
	cin => \Add0~7\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_164\);

-- Location: LC_X5_Y4_N0
\Add0~130\ : maxii_lcell
-- Equation(s):
-- \Add0~130_combout\ = (cnt(6) $ ((!\Add0~122\)))
-- \Add0~132\ = CARRY(((cnt(6) & !\Add0~122\)))
-- \Add0~132COUT1_165\ = CARRY(((cnt(6) & !\Add0~122\)))

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
	cin => \Add0~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout0 => \Add0~132\,
	cout1 => \Add0~132COUT1_165\);

-- Location: LC_X5_Y4_N1
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (cnt(7) $ (((!\Add0~122\ & \Add0~132\) # (\Add0~122\ & \Add0~132COUT1_165\))))
-- \Add0~27\ = CARRY(((!\Add0~132\) # (!cnt(7))))
-- \Add0~27COUT1_166\ = CARRY(((!\Add0~132COUT1_165\) # (!cnt(7))))

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
	cin => \Add0~122\,
	cin0 => \Add0~132\,
	cin1 => \Add0~132COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_166\);

-- Location: LC_X2_Y4_N9
\cnt[7]\ : maxii_lcell
-- Equation(s):
-- cnt(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~25_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(7));

-- Location: LC_X3_Y4_N7
\cnt[4]\ : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (!cnt(11) & (!cnt(10) & (!cnt[4] & !cnt(7))))
-- cnt(4) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(11),
	datab => cnt(10),
	datac => \Add0~20_combout\,
	datad => cnt(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => cnt(4));

-- Location: LC_X4_Y4_N9
\Add0~120\ : maxii_lcell
-- Equation(s):
-- \Add0~120_combout\ = cnt(5) $ (((((!\Add0~7\ & \Add0~22\) # (\Add0~7\ & \Add0~22COUT1_164\)))))
-- \Add0~122\ = CARRY(((!\Add0~22COUT1_164\)) # (!cnt(5)))

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
	dataa => cnt(5),
	cin => \Add0~7\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout => \Add0~122\);

-- Location: LC_X5_Y4_N2
\Add0~125\ : maxii_lcell
-- Equation(s):
-- \Add0~125_combout\ = (cnt(8) $ ((!(!\Add0~122\ & \Add0~27\) # (\Add0~122\ & \Add0~27COUT1_166\))))
-- \Add0~127\ = CARRY(((cnt(8) & !\Add0~27\)))
-- \Add0~127COUT1_167\ = CARRY(((cnt(8) & !\Add0~27COUT1_166\)))

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
	cin => \Add0~122\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_167\);

-- Location: LC_X5_Y4_N3
\Add0~135\ : maxii_lcell
-- Equation(s):
-- \Add0~135_combout\ = (cnt(9) $ (((!\Add0~122\ & \Add0~127\) # (\Add0~122\ & \Add0~127COUT1_167\))))
-- \Add0~137\ = CARRY(((!\Add0~127\) # (!cnt(9))))
-- \Add0~137COUT1_168\ = CARRY(((!\Add0~127COUT1_167\) # (!cnt(9))))

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
	datab => cnt(9),
	cin => \Add0~122\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\,
	cout0 => \Add0~137\,
	cout1 => \Add0~137COUT1_168\);

-- Location: LC_X3_Y4_N9
\cnt[9]\ : maxii_lcell
-- Equation(s):
-- cnt(9) = DFFEAS((\Add0~135_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~8\)) # (!\Equal0~9\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~9\,
	datab => \Equal0~8\,
	datac => \Equal0~7_combout\,
	datad => \Add0~135_combout\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(9));

-- Location: LC_X5_Y4_N4
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (cnt(10) $ ((!(!\Add0~122\ & \Add0~137\) # (\Add0~122\ & \Add0~137COUT1_168\))))
-- \Add0~32\ = CARRY(((cnt(10) & !\Add0~137COUT1_168\)))

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
	cin => \Add0~122\,
	cin0 => \Add0~137\,
	cin1 => \Add0~137COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X2_Y4_N7
\cnt[10]\ : maxii_lcell
-- Equation(s):
-- cnt(10) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~30_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(10));

-- Location: LC_X5_Y4_N6
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = (cnt(12) $ ((!(!\Add0~32\ & \Add0~37\) # (\Add0~32\ & \Add0~37COUT1_169\))))
-- \Add0~57\ = CARRY(((cnt(12) & !\Add0~37\)))
-- \Add0~57COUT1_170\ = CARRY(((cnt(12) & !\Add0~37COUT1_169\)))

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
	datab => cnt(12),
	cin => \Add0~32\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_170\);

-- Location: LC_X3_Y4_N0
\cnt[12]\ : maxii_lcell
-- Equation(s):
-- \Equal0~2\ = (cnt(17) & (cnt(18) & (!cnt[12] & cnt(16))))
-- cnt(12) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(17),
	datab => cnt(18),
	datac => \Add0~55_combout\,
	datad => cnt(16),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => cnt(12));

-- Location: LC_X5_Y4_N7
\Add0~140\ : maxii_lcell
-- Equation(s):
-- \Add0~140_combout\ = (cnt(13) $ (((!\Add0~32\ & \Add0~57\) # (\Add0~32\ & \Add0~57COUT1_170\))))
-- \Add0~142\ = CARRY(((!\Add0~57\) # (!cnt(13))))
-- \Add0~142COUT1_171\ = CARRY(((!\Add0~57COUT1_170\) # (!cnt(13))))

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
	cin => \Add0~32\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_171\);

-- Location: LC_X2_Y4_N6
\cnt[13]\ : maxii_lcell
-- Equation(s):
-- \Equal1~1\ = (!cnt(14) & (!cnt(19) & (cnt[13] & cnt(15))))
-- cnt(13) = DFFEAS(\Equal1~1\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(14),
	datab => cnt(19),
	datac => \Add0~140_combout\,
	datad => cnt(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1\,
	regout => cnt(13));

-- Location: LC_X5_Y4_N8
\Add0~150\ : maxii_lcell
-- Equation(s):
-- \Add0~150_combout\ = cnt(14) $ ((((!(!\Add0~32\ & \Add0~142\) # (\Add0~32\ & \Add0~142COUT1_171\)))))
-- \Add0~152\ = CARRY((cnt(14) & ((!\Add0~142\))))
-- \Add0~152COUT1_172\ = CARRY((cnt(14) & ((!\Add0~142COUT1_171\))))

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
	dataa => cnt(14),
	cin => \Add0~32\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout0 => \Add0~152\,
	cout1 => \Add0~152COUT1_172\);

-- Location: LC_X5_Y4_N9
\Add0~145\ : maxii_lcell
-- Equation(s):
-- \Add0~145_combout\ = (cnt(15) $ (((!\Add0~32\ & \Add0~152\) # (\Add0~32\ & \Add0~152COUT1_172\))))
-- \Add0~147\ = CARRY(((!\Add0~152COUT1_172\) # (!cnt(15))))

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
	cin => \Add0~32\,
	cin0 => \Add0~152\,
	cin1 => \Add0~152COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout => \Add0~147\);

-- Location: LC_X2_Y4_N0
\cnt[15]\ : maxii_lcell
-- Equation(s):
-- \Equal0~9\ = (cnt(14) & (!cnt(13) & (!cnt[15] & cnt(19))))
-- cnt(15) = DFFEAS(\Equal0~9\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(14),
	datab => cnt(13),
	datac => \Add0~145_combout\,
	datad => cnt(19),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9\,
	regout => cnt(15));

-- Location: LC_X6_Y4_N4
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (cnt(20) $ ((!(!\Add0~147\ & \Add0~157\) # (\Add0~147\ & \Add0~157COUT1_176\))))
-- \Add0~62\ = CARRY(((cnt(20) & !\Add0~157COUT1_176\)))

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
	cin => \Add0~147\,
	cin0 => \Add0~157\,
	cin1 => \Add0~157COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout => \Add0~62\);

-- Location: LC_X4_Y3_N4
\cnt[20]\ : maxii_lcell
-- Equation(s):
-- \Equal0~3\ = (!cnt(23) & (!cnt(21) & (!cnt[20] & !cnt(22))))
-- cnt(20) = DFFEAS(\Equal0~3\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(23),
	datab => cnt(21),
	datac => \Add0~60_combout\,
	datad => cnt(22),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => cnt(20));

-- Location: LC_X7_Y4_N0
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = cnt(26) $ ((((!\Add0~87\))))
-- \Add0~92\ = CARRY((cnt(26) & ((!\Add0~87\))))
-- \Add0~92COUT1_181\ = CARRY((cnt(26) & ((!\Add0~87\))))

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
	cin => \Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_181\);

-- Location: LC_X7_Y4_N7
\cnt[26]\ : maxii_lcell
-- Equation(s):
-- cnt(26) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~90_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(26));

-- Location: LC_X7_Y4_N1
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = cnt(27) $ (((((!\Add0~87\ & \Add0~92\) # (\Add0~87\ & \Add0~92COUT1_181\)))))
-- \Add0~97\ = CARRY(((!\Add0~92\)) # (!cnt(27)))
-- \Add0~97COUT1_182\ = CARRY(((!\Add0~92COUT1_181\)) # (!cnt(27)))

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
	dataa => cnt(27),
	cin => \Add0~87\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_182\);

-- Location: LC_X7_Y4_N6
\cnt[27]\ : maxii_lcell
-- Equation(s):
-- cnt(27) = DFFEAS((((\Add0~95_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~95_combout\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(27));

-- Location: LC_X6_Y4_N8
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = cnt(24) $ ((((!(!\Add0~62\ & \Add0~77\) # (\Add0~62\ & \Add0~77COUT1_179\)))))
-- \Add0~82\ = CARRY((cnt(24) & ((!\Add0~77\))))
-- \Add0~82COUT1_180\ = CARRY((cnt(24) & ((!\Add0~77COUT1_179\))))

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
	cin => \Add0~62\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_180\);

-- Location: LC_X6_Y3_N6
\cnt[24]\ : maxii_lcell
-- Equation(s):
-- \Equal0~5\ = (!cnt(25) & (!cnt(27) & (!cnt[24] & !cnt(26))))
-- cnt(24) = DFFEAS(\Equal0~5\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(25),
	datab => cnt(27),
	datac => \Add0~80_combout\,
	datad => cnt(26),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => cnt(24));

-- Location: LC_X6_Y4_N9
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = cnt(25) $ (((((!\Add0~62\ & \Add0~82\) # (\Add0~62\ & \Add0~82COUT1_180\)))))
-- \Add0~87\ = CARRY(((!\Add0~82COUT1_180\)) # (!cnt(25)))

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
	cin => \Add0~62\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout => \Add0~87\);

-- Location: LC_X6_Y3_N7
\cnt[25]\ : maxii_lcell
-- Equation(s):
-- cnt(25) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~85_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(25));

-- Location: LC_X7_Y4_N2
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = (cnt(28) $ ((!(!\Add0~87\ & \Add0~97\) # (\Add0~87\ & \Add0~97COUT1_182\))))
-- \Add0~102\ = CARRY(((cnt(28) & !\Add0~97\)))
-- \Add0~102COUT1_183\ = CARRY(((cnt(28) & !\Add0~97COUT1_182\)))

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
	cin => \Add0~87\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_183\);

-- Location: LC_X7_Y4_N3
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = (cnt(29) $ (((!\Add0~87\ & \Add0~102\) # (\Add0~87\ & \Add0~102COUT1_183\))))
-- \Add0~107\ = CARRY(((!\Add0~102\) # (!cnt(29))))
-- \Add0~107COUT1_184\ = CARRY(((!\Add0~102COUT1_183\) # (!cnt(29))))

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
	cin => \Add0~87\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_184\);

-- Location: LC_X7_Y4_N4
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = (cnt(30) $ ((!(!\Add0~87\ & \Add0~107\) # (\Add0~87\ & \Add0~107COUT1_184\))))
-- \Add0~112\ = CARRY(((cnt(30) & !\Add0~107COUT1_184\)))

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
	cin => \Add0~87\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X7_Y4_N5
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = ((\Add0~112\ $ (cnt(31))))

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
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\);

-- Location: LC_X7_Y4_N8
\cnt[31]\ : maxii_lcell
-- Equation(s):
-- cnt(31) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~115_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(31));

-- Location: LC_X7_Y4_N9
\cnt[28]\ : maxii_lcell
-- Equation(s):
-- \Equal0~6\ = (!cnt(30) & (!cnt(29) & (!cnt[28] & !cnt(31))))
-- cnt(28) = DFFEAS(\Equal0~6\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(30),
	datab => cnt(29),
	datac => \Add0~100_combout\,
	datad => cnt(31),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => cnt(28));

-- Location: LC_X7_Y3_N2
\cnt[29]\ : maxii_lcell
-- Equation(s):
-- cnt(29) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~105_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(29));

-- Location: LC_X7_Y3_N4
\cnt[30]\ : maxii_lcell
-- Equation(s):
-- cnt(30) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~110_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(30));

-- Location: LC_X3_Y4_N2
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0\ & (\Equal0~1\ & (\Equal0~3\ & \Equal0~2\)))

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
	dataa => \Equal0~0\,
	datab => \Equal0~1\,
	datac => \Equal0~3\,
	datad => \Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X3_Y4_N4
\Equal0~7\ : maxii_lcell
-- Equation(s):
-- \Equal0~7_combout\ = ((\Equal0~6\ & (\Equal0~5\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~6\,
	datac => \Equal0~5\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X3_Y4_N5
\cnt[14]\ : maxii_lcell
-- Equation(s):
-- cnt(14) = DFFEAS((\Add0~150_combout\ & (((!\Equal0~9\) # (!\Equal0~8\)) # (!\Equal0~7_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~7_combout\,
	datab => \Equal0~8\,
	datac => \Add0~150_combout\,
	datad => \Equal0~9\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(14));

-- Location: LC_X4_Y4_N2
\cnt[6]\ : maxii_lcell
-- Equation(s):
-- cnt(6) = DFFEAS((\Add0~130_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~8\)) # (!\Equal0~9\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~9\,
	datab => \Equal0~8\,
	datac => \Add0~130_combout\,
	datad => \Equal0~7_combout\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(6));

-- Location: LC_X2_Y4_N5
\cnt[8]\ : maxii_lcell
-- Equation(s):
-- \Equal0~8\ = (!cnt(5) & (cnt(6) & (!cnt[8] & cnt(9))))
-- cnt(8) = DFFEAS(\Equal0~8\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(5),
	datab => cnt(6),
	datac => \Add0~125_combout\,
	datad => cnt(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8\,
	regout => cnt(8));

-- Location: LC_X3_Y4_N1
\cnt[5]\ : maxii_lcell
-- Equation(s):
-- \Equal1~0\ = (cnt(8) & (!cnt(6) & (cnt[5] & !cnt(9))))
-- cnt(5) = DFFEAS(\Equal1~0\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, \Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(8),
	datab => cnt(6),
	datac => \Add0~120_combout\,
	datad => cnt(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0\,
	regout => cnt(5));

-- Location: LC_X2_Y4_N8
\clk_in~0\ : maxii_lcell
-- Equation(s):
-- \clk_in~0_combout\ = (\clk_in~regout\ & (((!\Equal0~7_combout\) # (!\Equal1~1\)) # (!\Equal1~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0\,
	datab => \clk_in~regout\,
	datac => \Equal1~1\,
	datad => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_in~0_combout\);

-- Location: LC_X2_Y4_N2
clk_in : maxii_lcell
-- Equation(s):
-- \clk_in~regout\ = DFFEAS((\clk_in~0_combout\) # ((\Equal0~8\ & (\Equal0~7_combout\ & \Equal0~9\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , !\pau~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~8\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~9\,
	datad => \clk_in~0_combout\,
	aclr => \rst~combout\,
	ena => \ALT_INV_pau~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_in~regout\);

-- Location: LC_X4_Y2_N8
\Count|cnt|CL|labe10:0:Di|Q\ : maxii_lcell
-- Equation(s):
-- \Count|cnt|CL|labe10:0:Di|Q~regout\ = DFFEAS((((!\Count|cnt|CL|labe10:0:Di|Q~regout\))), GLOBAL(\clk_in~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~regout\,
	datad => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Count|cnt|CL|labe10:0:Di|Q~regout\);

-- Location: LC_X4_Y2_N9
\Count|cnt|CL|labe10:2:Di|Q\ : maxii_lcell
-- Equation(s):
-- \Count|cnt|CL|labe10:2:Di|Q~regout\ = DFFEAS(\Count|cnt|CL|labe10:2:Di|Q~regout\ $ (((\Count|cnt|CL|labe10:0:Di|Q~regout\ & ((\Count|cnt|CL|labe10:1:Di|Q~regout\))))), GLOBAL(\clk_in~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~regout\,
	dataa => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	datab => \Count|cnt|CL|labe10:2:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Count|cnt|CL|labe10:2:Di|Q~regout\);

-- Location: LC_X4_Y2_N0
\Count|cnt|CL|labe10:3:Di|Q\ : maxii_lcell
-- Equation(s):
-- \Count|cnt|CL|labe10:3:Di|Q~regout\ = DFFEAS((\Count|cnt|CL|labe10:0:Di|Q~regout\ & (\Count|cnt|CL|labe10:1:Di|Q~regout\ & (!\Count|cnt|CL|labe10:3:Di|Q~regout\ & \Count|cnt|CL|labe10:2:Di|Q~regout\))) # (!\Count|cnt|CL|labe10:0:Di|Q~regout\ & 
-- (((\Count|cnt|CL|labe10:3:Di|Q~regout\)))), GLOBAL(\clk_in~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5850",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~regout\,
	dataa => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	datab => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	datac => \Count|cnt|CL|labe10:3:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:2:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Count|cnt|CL|labe10:3:Di|Q~regout\);

-- Location: LC_X4_Y2_N1
\Count|cnt|CL|labe10:1:Di|Q\ : maxii_lcell
-- Equation(s):
-- \Count|cnt|CL|labe10:1:Di|Q~regout\ = DFFEAS((\Count|cnt|CL|labe10:0:Di|Q~regout\ & (((!\Count|cnt|CL|labe10:3:Di|Q~regout\ & !\Count|cnt|CL|labe10:1:Di|Q~regout\)))) # (!\Count|cnt|CL|labe10:0:Di|Q~regout\ & (((\Count|cnt|CL|labe10:1:Di|Q~regout\)))), 
-- GLOBAL(\clk_in~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "550a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~regout\,
	dataa => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	datac => \Count|cnt|CL|labe10:3:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Count|cnt|CL|labe10:1:Di|Q~regout\);

-- Location: LC_X4_Y2_N7
\Count|cnt|Dv|Q\ : maxii_lcell
-- Equation(s):
-- \Count|cnt|Dv|Q~regout\ = DFFEAS((!\Count|cnt|CL|labe10:0:Di|Q~regout\ & (!\Count|cnt|CL|labe10:1:Di|Q~regout\ & (\Count|cnt|CL|labe10:3:Di|Q~regout\ & !\Count|cnt|CL|labe10:2:Di|Q~regout\))), GLOBAL(\clk_in~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~regout\,
	dataa => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	datab => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	datac => \Count|cnt|CL|labe10:3:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:2:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Count|cnt|Dv|Q~regout\);

-- Location: LC_X4_Y2_N2
\Count|cnt|CH|labe10:0:Di|Q\ : maxii_lcell
-- Equation(s):
-- \Count|cnt|CH|labe10:0:Di|Q~regout\ = DFFEAS((((!\Count|cnt|CH|labe10:0:Di|Q~regout\))), GLOBAL(\clk_in~regout\), !GLOBAL(\rst~combout\), , \Count|cnt|Dv|Q~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~regout\,
	datad => \Count|cnt|CH|labe10:0:Di|Q~regout\,
	aclr => \rst~combout\,
	ena => \Count|cnt|Dv|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Count|cnt|CH|labe10:0:Di|Q~regout\);

-- Location: LC_X4_Y2_N3
\Count|cnt|CH|labe10:1:Di|Q\ : maxii_lcell
-- Equation(s):
-- \Count|cnt|CH|labe10:1:Di|Q~regout\ = DFFEAS(((!\Count|cnt|CH|labe10:2:Di|Q~regout\ & (\Count|cnt|CH|labe10:0:Di|Q~regout\ $ (\Count|cnt|CH|labe10:1:Di|Q~regout\)))), GLOBAL(\clk_in~regout\), !GLOBAL(\rst~combout\), , \Count|cnt|Dv|Q~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~regout\,
	datab => \Count|cnt|CH|labe10:0:Di|Q~regout\,
	datac => \Count|cnt|CH|labe10:2:Di|Q~regout\,
	datad => \Count|cnt|CH|labe10:1:Di|Q~regout\,
	aclr => \rst~combout\,
	ena => \Count|cnt|Dv|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Count|cnt|CH|labe10:1:Di|Q~regout\);

-- Location: LC_X4_Y2_N5
\Count|cnt|CH|labe10:2:Di|Q\ : maxii_lcell
-- Equation(s):
-- \Count|cnt|CH|labe10:2:Di|Q~regout\ = DFFEAS((\Count|cnt|CH|labe10:0:Di|Q~regout\ & ((\Count|cnt|Dv|Q~regout\ & ((\Count|cnt|CH|labe10:1:Di|Q~regout\))) # (!\Count|cnt|Dv|Q~regout\ & (\Count|cnt|CH|labe10:2:Di|Q~regout\)))) # 
-- (!\Count|cnt|CH|labe10:0:Di|Q~regout\ & (\Count|cnt|CH|labe10:2:Di|Q~regout\)), GLOBAL(\clk_in~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~regout\,
	dataa => \Count|cnt|CH|labe10:2:Di|Q~regout\,
	datab => \Count|cnt|CH|labe10:0:Di|Q~regout\,
	datac => \Count|cnt|Dv|Q~regout\,
	datad => \Count|cnt|CH|labe10:1:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Count|cnt|CH|labe10:2:Di|Q~regout\);

-- Location: LC_X2_Y2_N5
\Count|digL|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Count|digL|Mux6~0_combout\ = ((\Count|cnt|CH|labe10:2:Di|Q~regout\ & ((!\Count|cnt|CH|labe10:1:Di|Q~regout\) # (!\Count|cnt|CH|labe10:0:Di|Q~regout\))) # (!\Count|cnt|CH|labe10:2:Di|Q~regout\ & ((\Count|cnt|CH|labe10:1:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Count|cnt|CH|labe10:2:Di|Q~regout\,
	datac => \Count|cnt|CH|labe10:0:Di|Q~regout\,
	datad => \Count|cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digL|Mux6~0_combout\);

-- Location: LC_X2_Y2_N4
\Count|digL|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Count|digL|Mux5~0_combout\ = ((\Count|cnt|CH|labe10:2:Di|Q~regout\ & (\Count|cnt|CH|labe10:0:Di|Q~regout\ & \Count|cnt|CH|labe10:1:Di|Q~regout\)) # (!\Count|cnt|CH|labe10:2:Di|Q~regout\ & ((\Count|cnt|CH|labe10:0:Di|Q~regout\) # 
-- (\Count|cnt|CH|labe10:1:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Count|cnt|CH|labe10:2:Di|Q~regout\,
	datac => \Count|cnt|CH|labe10:0:Di|Q~regout\,
	datad => \Count|cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digL|Mux5~0_combout\);

-- Location: LC_X2_Y2_N8
\Count|digL|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Count|digL|Mux4~0_combout\ = ((\Count|cnt|CH|labe10:0:Di|Q~regout\) # ((\Count|cnt|CH|labe10:2:Di|Q~regout\ & !\Count|cnt|CH|labe10:1:Di|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Count|cnt|CH|labe10:2:Di|Q~regout\,
	datac => \Count|cnt|CH|labe10:0:Di|Q~regout\,
	datad => \Count|cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digL|Mux4~0_combout\);

-- Location: LC_X2_Y2_N1
\Count|digL|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Count|digL|Mux3~0_combout\ = ((\Count|cnt|CH|labe10:2:Di|Q~regout\ & (\Count|cnt|CH|labe10:0:Di|Q~regout\ $ (\Count|cnt|CH|labe10:1:Di|Q~regout\))) # (!\Count|cnt|CH|labe10:2:Di|Q~regout\ & ((\Count|cnt|CH|labe10:1:Di|Q~regout\) # 
-- (!\Count|cnt|CH|labe10:0:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Count|cnt|CH|labe10:2:Di|Q~regout\,
	datac => \Count|cnt|CH|labe10:0:Di|Q~regout\,
	datad => \Count|cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digL|Mux3~0_combout\);

-- Location: LC_X2_Y2_N9
\Count|digL|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Count|digL|Mux2~0_combout\ = ((!\Count|cnt|CH|labe10:2:Di|Q~regout\ & (!\Count|cnt|CH|labe10:0:Di|Q~regout\ & \Count|cnt|CH|labe10:1:Di|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Count|cnt|CH|labe10:2:Di|Q~regout\,
	datac => \Count|cnt|CH|labe10:0:Di|Q~regout\,
	datad => \Count|cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digL|Mux2~0_combout\);

-- Location: LC_X2_Y2_N6
\Count|digL|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Count|digL|Mux1~0_combout\ = ((\Count|cnt|CH|labe10:0:Di|Q~regout\ $ (!\Count|cnt|CH|labe10:1:Di|Q~regout\)) # (!\Count|cnt|CH|labe10:2:Di|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f33f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Count|cnt|CH|labe10:2:Di|Q~regout\,
	datac => \Count|cnt|CH|labe10:0:Di|Q~regout\,
	datad => \Count|cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digL|Mux1~0_combout\);

-- Location: LC_X2_Y2_N2
\Count|digL|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Count|digL|Mux0~0_combout\ = ((\Count|cnt|CH|labe10:1:Di|Q~regout\) # (\Count|cnt|CH|labe10:2:Di|Q~regout\ $ (!\Count|cnt|CH|labe10:0:Di|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Count|cnt|CH|labe10:2:Di|Q~regout\,
	datac => \Count|cnt|CH|labe10:0:Di|Q~regout\,
	datad => \Count|cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digL|Mux0~0_combout\);

-- Location: LC_X3_Y2_N8
\Count|digH|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Count|digH|Mux6~0_combout\ = (\Count|cnt|CL|labe10:0:Di|Q~regout\ & ((\Count|cnt|CL|labe10:3:Di|Q~regout\) # (\Count|cnt|CL|labe10:1:Di|Q~regout\ $ (\Count|cnt|CL|labe10:2:Di|Q~regout\)))) # (!\Count|cnt|CL|labe10:0:Di|Q~regout\ & 
-- ((\Count|cnt|CL|labe10:1:Di|Q~regout\) # (\Count|cnt|CL|labe10:3:Di|Q~regout\ $ (\Count|cnt|CL|labe10:2:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bede",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Count|cnt|CL|labe10:3:Di|Q~regout\,
	datab => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	datac => \Count|cnt|CL|labe10:2:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digH|Mux6~0_combout\);

-- Location: LC_X3_Y2_N6
\Count|digH|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Count|digH|Mux5~0_combout\ = (\Count|cnt|CL|labe10:1:Di|Q~regout\ & (!\Count|cnt|CL|labe10:3:Di|Q~regout\ & ((\Count|cnt|CL|labe10:0:Di|Q~regout\) # (!\Count|cnt|CL|labe10:2:Di|Q~regout\)))) # (!\Count|cnt|CL|labe10:1:Di|Q~regout\ & 
-- (\Count|cnt|CL|labe10:0:Di|Q~regout\ & (\Count|cnt|CL|labe10:3:Di|Q~regout\ $ (!\Count|cnt|CL|labe10:2:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6504",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Count|cnt|CL|labe10:3:Di|Q~regout\,
	datab => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	datac => \Count|cnt|CL|labe10:2:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digH|Mux5~0_combout\);

-- Location: LC_X3_Y2_N2
\Count|digH|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Count|digH|Mux4~0_combout\ = (\Count|cnt|CL|labe10:1:Di|Q~regout\ & (!\Count|cnt|CL|labe10:3:Di|Q~regout\ & ((\Count|cnt|CL|labe10:0:Di|Q~regout\)))) # (!\Count|cnt|CL|labe10:1:Di|Q~regout\ & ((\Count|cnt|CL|labe10:2:Di|Q~regout\ & 
-- (!\Count|cnt|CL|labe10:3:Di|Q~regout\)) # (!\Count|cnt|CL|labe10:2:Di|Q~regout\ & ((\Count|cnt|CL|labe10:0:Di|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5710",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Count|cnt|CL|labe10:3:Di|Q~regout\,
	datab => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	datac => \Count|cnt|CL|labe10:2:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digH|Mux4~0_combout\);

-- Location: LC_X3_Y2_N5
\Count|digH|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Count|digH|Mux3~0_combout\ = (\Count|cnt|CL|labe10:1:Di|Q~regout\ & ((\Count|cnt|CL|labe10:2:Di|Q~regout\ & ((\Count|cnt|CL|labe10:0:Di|Q~regout\))) # (!\Count|cnt|CL|labe10:2:Di|Q~regout\ & (\Count|cnt|CL|labe10:3:Di|Q~regout\ & 
-- !\Count|cnt|CL|labe10:0:Di|Q~regout\)))) # (!\Count|cnt|CL|labe10:1:Di|Q~regout\ & (!\Count|cnt|CL|labe10:3:Di|Q~regout\ & (\Count|cnt|CL|labe10:2:Di|Q~regout\ $ (\Count|cnt|CL|labe10:0:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c118",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Count|cnt|CL|labe10:3:Di|Q~regout\,
	datab => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	datac => \Count|cnt|CL|labe10:2:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digH|Mux3~0_combout\);

-- Location: LC_X3_Y2_N9
\Count|digH|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Count|digH|Mux2~0_combout\ = (\Count|cnt|CL|labe10:3:Di|Q~regout\ & (\Count|cnt|CL|labe10:2:Di|Q~regout\ & ((\Count|cnt|CL|labe10:1:Di|Q~regout\) # (!\Count|cnt|CL|labe10:0:Di|Q~regout\)))) # (!\Count|cnt|CL|labe10:3:Di|Q~regout\ & 
-- (\Count|cnt|CL|labe10:1:Di|Q~regout\ & (!\Count|cnt|CL|labe10:2:Di|Q~regout\ & !\Count|cnt|CL|labe10:0:Di|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Count|cnt|CL|labe10:3:Di|Q~regout\,
	datab => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	datac => \Count|cnt|CL|labe10:2:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digH|Mux2~0_combout\);

-- Location: LC_X3_Y2_N4
\Count|digH|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Count|digH|Mux1~0_combout\ = (\Count|cnt|CL|labe10:3:Di|Q~regout\ & ((\Count|cnt|CL|labe10:0:Di|Q~regout\ & (\Count|cnt|CL|labe10:1:Di|Q~regout\)) # (!\Count|cnt|CL|labe10:0:Di|Q~regout\ & ((\Count|cnt|CL|labe10:2:Di|Q~regout\))))) # 
-- (!\Count|cnt|CL|labe10:3:Di|Q~regout\ & (\Count|cnt|CL|labe10:2:Di|Q~regout\ & (\Count|cnt|CL|labe10:1:Di|Q~regout\ $ (\Count|cnt|CL|labe10:0:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Count|cnt|CL|labe10:3:Di|Q~regout\,
	datab => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	datac => \Count|cnt|CL|labe10:2:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digH|Mux1~0_combout\);

-- Location: LC_X3_Y2_N7
\Count|digH|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Count|digH|Mux0~0_combout\ = (\Count|cnt|CL|labe10:3:Di|Q~regout\ & (\Count|cnt|CL|labe10:0:Di|Q~regout\ & (\Count|cnt|CL|labe10:1:Di|Q~regout\ $ (\Count|cnt|CL|labe10:2:Di|Q~regout\)))) # (!\Count|cnt|CL|labe10:3:Di|Q~regout\ & 
-- (!\Count|cnt|CL|labe10:1:Di|Q~regout\ & (\Count|cnt|CL|labe10:2:Di|Q~regout\ $ (\Count|cnt|CL|labe10:0:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2910",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Count|cnt|CL|labe10:3:Di|Q~regout\,
	datab => \Count|cnt|CL|labe10:1:Di|Q~regout\,
	datac => \Count|cnt|CL|labe10:2:Di|Q~regout\,
	datad => \Count|cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count|digH|Mux0~0_combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digL|Mux6~0_combout\,
	oe => VCC,
	padio => ww_H(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digL|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_H(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digL|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_H(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digL|Mux3~0_combout\,
	oe => VCC,
	padio => ww_H(3));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digL|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_H(4));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digL|Mux1~0_combout\,
	oe => VCC,
	padio => ww_H(5));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digL|Mux0~0_combout\,
	oe => VCC,
	padio => ww_H(6));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digH|Mux6~0_combout\,
	oe => VCC,
	padio => ww_L(0));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digH|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_L(1));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digH|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_L(2));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digH|ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_L(3));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digH|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_L(4));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digH|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_L(5));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Count|digH|ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_L(6));
END structure;


