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

-- DATE "06/09/2023 01:35:28"

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

ENTITY 	counter64 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	resume : IN std_logic;
	H : BUFFER std_logic_vector(6 DOWNTO 0);
	L : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END counter64;

-- Design Ports Information


ARCHITECTURE structure OF counter64 IS
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
SIGNAL ww_resume : std_logic;
SIGNAL ww_H : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_L : std_logic_vector(6 DOWNTO 0);
SIGNAL \resume~combout\ : std_logic;
SIGNAL \r~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \d1|Add0~20_combout\ : std_logic;
SIGNAL \d1|Add0~77\ : std_logic;
SIGNAL \d1|Add0~77COUT1_109\ : std_logic;
SIGNAL \d1|Add0~70_combout\ : std_logic;
SIGNAL \d1|Add0~72\ : std_logic;
SIGNAL \d1|Add0~72COUT1_110\ : std_logic;
SIGNAL \d1|Add0~65_combout\ : std_logic;
SIGNAL \d1|Add0~67\ : std_logic;
SIGNAL \d1|Add0~67COUT1_111\ : std_logic;
SIGNAL \d1|Add0~55_combout\ : std_logic;
SIGNAL \d1|Add0~57\ : std_logic;
SIGNAL \d1|Add0~57COUT1_112\ : std_logic;
SIGNAL \d1|Add0~45_combout\ : std_logic;
SIGNAL \d1|Add0~47\ : std_logic;
SIGNAL \d1|Add0~50_combout\ : std_logic;
SIGNAL \d1|Add0~52\ : std_logic;
SIGNAL \d1|Add0~52COUT1_113\ : std_logic;
SIGNAL \d1|Add0~40_combout\ : std_logic;
SIGNAL \d1|Add0~42\ : std_logic;
SIGNAL \d1|Add0~42COUT1_114\ : std_logic;
SIGNAL \d1|Add0~35_combout\ : std_logic;
SIGNAL \d1|Add0~37\ : std_logic;
SIGNAL \d1|Add0~37COUT1_115\ : std_logic;
SIGNAL \d1|Add0~30_combout\ : std_logic;
SIGNAL \d1|Add0~32\ : std_logic;
SIGNAL \d1|Add0~32COUT1_116\ : std_logic;
SIGNAL \d1|Add0~25_combout\ : std_logic;
SIGNAL \d1|Add0~22\ : std_logic;
SIGNAL \d1|Add0~22COUT1_101\ : std_logic;
SIGNAL \d1|Add0~15_combout\ : std_logic;
SIGNAL \d1|Add0~17\ : std_logic;
SIGNAL \d1|Add0~17COUT1_102\ : std_logic;
SIGNAL \d1|Add0~10_combout\ : std_logic;
SIGNAL \d1|Add0~12\ : std_logic;
SIGNAL \d1|Add0~12COUT1_103\ : std_logic;
SIGNAL \d1|Add0~5_combout\ : std_logic;
SIGNAL \d1|Add0~7\ : std_logic;
SIGNAL \d1|Add0~7COUT1_104\ : std_logic;
SIGNAL \d1|Add0~0_combout\ : std_logic;
SIGNAL \d1|Add0~2\ : std_logic;
SIGNAL \d1|Add0~80_combout\ : std_logic;
SIGNAL \d1|Add0~82\ : std_logic;
SIGNAL \d1|Add0~82COUT1_105\ : std_logic;
SIGNAL \d1|Add0~95_combout\ : std_logic;
SIGNAL \d1|Add0~97\ : std_logic;
SIGNAL \d1|Add0~97COUT1_106\ : std_logic;
SIGNAL \d1|Add0~90_combout\ : std_logic;
SIGNAL \d1|Add0~92\ : std_logic;
SIGNAL \d1|Add0~92COUT1_107\ : std_logic;
SIGNAL \d1|Add0~85_combout\ : std_logic;
SIGNAL \d1|Add0~87\ : std_logic;
SIGNAL \d1|Add0~87COUT1_108\ : std_logic;
SIGNAL \d1|Add0~60_combout\ : std_logic;
SIGNAL \d1|Add0~62\ : std_logic;
SIGNAL \d1|Add0~75_combout\ : std_logic;
SIGNAL \d1|Equal0~4\ : std_logic;
SIGNAL \d1|Equal0~0\ : std_logic;
SIGNAL \d1|Equal0~5\ : std_logic;
SIGNAL \d1|Equal0~2\ : std_logic;
SIGNAL \d1|Equal0~1\ : std_logic;
SIGNAL \d1|Equal0~3_combout\ : std_logic;
SIGNAL \d1|Equal0~6_combout\ : std_logic;
SIGNAL \d1|not_Q~regout\ : std_logic;
SIGNAL \d2|not_Q~regout\ : std_logic;
SIGNAL \d3|not_Q~regout\ : std_logic;
SIGNAL \d4|not_Q~regout\ : std_logic;
SIGNAL \d4|Q~regout\ : std_logic;
SIGNAL \d3|Q~regout\ : std_logic;
SIGNAL \d5|not_Q~regout\ : std_logic;
SIGNAL \d6|Q~regout\ : std_logic;
SIGNAL \d5|Q~regout\ : std_logic;
SIGNAL \out1|n1|Mux6~0_combout\ : std_logic;
SIGNAL \out1|h1[0]~6_combout\ : std_logic;
SIGNAL \d2|Q~regout\ : std_logic;
SIGNAL \out1|LessThan5~1_combout\ : std_logic;
SIGNAL \out1|h1[0]~8_combout\ : std_logic;
SIGNAL \out1|LessThan4~0_combout\ : std_logic;
SIGNAL \out1|LessThan0~0_combout\ : std_logic;
SIGNAL \out1|LessThan5~0_combout\ : std_logic;
SIGNAL \out1|h1[1]~7_combout\ : std_logic;
SIGNAL \out1|temp[3]~13_combout\ : std_logic;
SIGNAL \out1|temp[1]~12_combout\ : std_logic;
SIGNAL \out1|h1[0]~4_combout\ : std_logic;
SIGNAL \out1|h1[0]~5_combout\ : std_logic;
SIGNAL \out1|n1|Mux5~0_combout\ : std_logic;
SIGNAL \out1|n1|Mux4~0_combout\ : std_logic;
SIGNAL \out1|n1|Mux3~0_combout\ : std_logic;
SIGNAL \out1|n1|Mux2~3_combout\ : std_logic;
SIGNAL \out1|n1|Mux2~6_combout\ : std_logic;
SIGNAL \out1|n1|Mux1~3_combout\ : std_logic;
SIGNAL \out1|n1|Mux1~9_combout\ : std_logic;
SIGNAL \out1|n1|Mux0~0_combout\ : std_logic;
SIGNAL \out1|temp[2]~2_combout\ : std_logic;
SIGNAL \out1|temp[2]~3_combout\ : std_logic;
SIGNAL \out1|temp[2]~14_combout\ : std_logic;
SIGNAL \out1|temp[3]~7_combout\ : std_logic;
SIGNAL \out1|temp[3]~6_combout\ : std_logic;
SIGNAL \out1|temp[3]~15_combout\ : std_logic;
SIGNAL \out1|temp[1]~11_combout\ : std_logic;
SIGNAL \out1|temp[1]~10_combout\ : std_logic;
SIGNAL \out1|temp[1]~16_combout\ : std_logic;
SIGNAL \d1|Q~regout\ : std_logic;
SIGNAL \out1|n2|Mux6~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux5~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux4~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux3~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux2~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux1~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux0~0_combout\ : std_logic;
SIGNAL \d1|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \d5|ALT_INV_not_Q~regout\ : std_logic;
SIGNAL \d4|ALT_INV_not_Q~regout\ : std_logic;
SIGNAL \d3|ALT_INV_not_Q~regout\ : std_logic;
SIGNAL \d2|ALT_INV_not_Q~regout\ : std_logic;
SIGNAL \d1|ALT_INV_not_Q~regout\ : std_logic;
SIGNAL \out1|n1|ALT_INV_Mux2~6_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \out1|n1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \out1|n1|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_resume <= resume;
H <= ww_H;
L <= ww_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\d5|ALT_INV_not_Q~regout\ <= NOT \d5|not_Q~regout\;
\d4|ALT_INV_not_Q~regout\ <= NOT \d4|not_Q~regout\;
\d3|ALT_INV_not_Q~regout\ <= NOT \d3|not_Q~regout\;
\d2|ALT_INV_not_Q~regout\ <= NOT \d2|not_Q~regout\;
\d1|ALT_INV_not_Q~regout\ <= NOT \d1|not_Q~regout\;
\out1|n1|ALT_INV_Mux2~6_combout\ <= NOT \out1|n1|Mux2~6_combout\;
\out1|n2|ALT_INV_Mux0~0_combout\ <= NOT \out1|n2|Mux0~0_combout\;
\out1|n2|ALT_INV_Mux1~0_combout\ <= NOT \out1|n2|Mux1~0_combout\;
\out1|n2|ALT_INV_Mux2~0_combout\ <= NOT \out1|n2|Mux2~0_combout\;
\out1|n2|ALT_INV_Mux3~0_combout\ <= NOT \out1|n2|Mux3~0_combout\;
\out1|n2|ALT_INV_Mux4~0_combout\ <= NOT \out1|n2|Mux4~0_combout\;
\out1|n2|ALT_INV_Mux5~0_combout\ <= NOT \out1|n2|Mux5~0_combout\;
\out1|n1|ALT_INV_Mux4~0_combout\ <= NOT \out1|n1|Mux4~0_combout\;
\out1|n1|ALT_INV_Mux5~0_combout\ <= NOT \out1|n1|Mux5~0_combout\;

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\resume~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_resume,
	combout => \resume~combout\);

-- Location: LC_X3_Y3_N2
r : maxii_lcell
-- Equation(s):
-- \r~regout\ = DFFEAS((((!\r~regout\))), \resume~combout\, VCC, , , , , , )

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
	clk => \resume~combout\,
	datad => \r~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r~regout\);

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

-- Location: LC_X2_Y3_N2
clock : maxii_lcell
-- Equation(s):
-- \clock~combout\ = LCELL((((\r~regout\ & \clk~combout\))))

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
	datac => \r~regout\,
	datad => \clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock~combout\);

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

-- Location: LC_X5_Y3_N0
\d1|Add0~20\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~20_combout\ = (!\d1|counter\(0))
-- \d1|Add0~22\ = CARRY((\d1|counter\(0)))
-- \d1|Add0~22COUT1_101\ = CARRY((\d1|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d1|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~20_combout\,
	cout0 => \d1|Add0~22\,
	cout1 => \d1|Add0~22COUT1_101\);

-- Location: LC_X6_Y3_N0
\d1|Add0~75\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~75_combout\ = \d1|counter\(10) $ ((((!\d1|Add0~62\))))
-- \d1|Add0~77\ = CARRY((\d1|counter\(10) & ((!\d1|Add0~62\))))
-- \d1|Add0~77COUT1_109\ = CARRY((\d1|counter\(10) & ((!\d1|Add0~62\))))

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
	dataa => \d1|counter\(10),
	cin => \d1|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~75_combout\,
	cout0 => \d1|Add0~77\,
	cout1 => \d1|Add0~77COUT1_109\);

-- Location: LC_X6_Y3_N1
\d1|Add0~70\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~70_combout\ = (\d1|counter\(11) $ (((!\d1|Add0~62\ & \d1|Add0~77\) # (\d1|Add0~62\ & \d1|Add0~77COUT1_109\))))
-- \d1|Add0~72\ = CARRY(((!\d1|Add0~77\) # (!\d1|counter\(11))))
-- \d1|Add0~72COUT1_110\ = CARRY(((!\d1|Add0~77COUT1_109\) # (!\d1|counter\(11))))

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
	datab => \d1|counter\(11),
	cin => \d1|Add0~62\,
	cin0 => \d1|Add0~77\,
	cin1 => \d1|Add0~77COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~70_combout\,
	cout0 => \d1|Add0~72\,
	cout1 => \d1|Add0~72COUT1_110\);

-- Location: LC_X4_Y3_N8
\d1|counter[11]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(11) = DFFEAS(GND, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~70_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \d1|Add0~70_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(11));

-- Location: LC_X6_Y3_N2
\d1|Add0~65\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~65_combout\ = (\d1|counter\(12) $ ((!(!\d1|Add0~62\ & \d1|Add0~72\) # (\d1|Add0~62\ & \d1|Add0~72COUT1_110\))))
-- \d1|Add0~67\ = CARRY(((\d1|counter\(12) & !\d1|Add0~72\)))
-- \d1|Add0~67COUT1_111\ = CARRY(((\d1|counter\(12) & !\d1|Add0~72COUT1_110\)))

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
	datab => \d1|counter\(12),
	cin => \d1|Add0~62\,
	cin0 => \d1|Add0~72\,
	cin1 => \d1|Add0~72COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~65_combout\,
	cout0 => \d1|Add0~67\,
	cout1 => \d1|Add0~67COUT1_111\);

-- Location: LC_X4_Y3_N5
\d1|counter[12]\ : maxii_lcell
-- Equation(s):
-- \d1|Equal0~4\ = (!\d1|counter\(10) & (\d1|counter\(9) & (!B1_counter[12] & !\d1|counter\(11))))
-- \d1|counter\(12) = DFFEAS(\d1|Equal0~4\, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \d1|counter\(10),
	datab => \d1|counter\(9),
	datac => \d1|Add0~65_combout\,
	datad => \d1|counter\(11),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Equal0~4\,
	regout => \d1|counter\(12));

-- Location: LC_X6_Y3_N3
\d1|Add0~55\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~55_combout\ = (\d1|counter\(13) $ (((!\d1|Add0~62\ & \d1|Add0~67\) # (\d1|Add0~62\ & \d1|Add0~67COUT1_111\))))
-- \d1|Add0~57\ = CARRY(((!\d1|Add0~67\) # (!\d1|counter\(13))))
-- \d1|Add0~57COUT1_112\ = CARRY(((!\d1|Add0~67COUT1_111\) # (!\d1|counter\(13))))

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
	datab => \d1|counter\(13),
	cin => \d1|Add0~62\,
	cin0 => \d1|Add0~67\,
	cin1 => \d1|Add0~67COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~55_combout\,
	cout0 => \d1|Add0~57\,
	cout1 => \d1|Add0~57COUT1_112\);

-- Location: LC_X5_Y4_N7
\d1|counter[13]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(13) = DFFEAS(GND, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~55_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \d1|Add0~55_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(13));

-- Location: LC_X6_Y3_N4
\d1|Add0~45\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~45_combout\ = \d1|counter\(14) $ ((((!(!\d1|Add0~62\ & \d1|Add0~57\) # (\d1|Add0~62\ & \d1|Add0~57COUT1_112\)))))
-- \d1|Add0~47\ = CARRY((\d1|counter\(14) & ((!\d1|Add0~57COUT1_112\))))

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
	dataa => \d1|counter\(14),
	cin => \d1|Add0~62\,
	cin0 => \d1|Add0~57\,
	cin1 => \d1|Add0~57COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~45_combout\,
	cout => \d1|Add0~47\);

-- Location: LC_X5_Y4_N5
\d1|counter[14]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(14) = DFFEAS((!\d1|Equal0~6_combout\ & (((\d1|Add0~45_combout\)))), GLOBAL(\clock~combout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \d1|Equal0~6_combout\,
	datad => \d1|Add0~45_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(14));

-- Location: LC_X6_Y3_N5
\d1|Add0~50\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~50_combout\ = (\d1|counter\(15) $ ((\d1|Add0~47\)))
-- \d1|Add0~52\ = CARRY(((!\d1|Add0~47\) # (!\d1|counter\(15))))
-- \d1|Add0~52COUT1_113\ = CARRY(((!\d1|Add0~47\) # (!\d1|counter\(15))))

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
	datab => \d1|counter\(15),
	cin => \d1|Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~50_combout\,
	cout0 => \d1|Add0~52\,
	cout1 => \d1|Add0~52COUT1_113\);

-- Location: LC_X5_Y4_N6
\d1|counter[15]\ : maxii_lcell
-- Equation(s):
-- \d1|Equal0~2\ = (\d1|counter\(14) & (!\d1|counter\(13) & (!B1_counter[15] & \d1|counter\(16))))
-- \d1|counter\(15) = DFFEAS(\d1|Equal0~2\, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~50_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \d1|counter\(14),
	datab => \d1|counter\(13),
	datac => \d1|Add0~50_combout\,
	datad => \d1|counter\(16),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Equal0~2\,
	regout => \d1|counter\(15));

-- Location: LC_X6_Y3_N6
\d1|Add0~40\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~40_combout\ = (\d1|counter\(16) $ ((!(!\d1|Add0~47\ & \d1|Add0~52\) # (\d1|Add0~47\ & \d1|Add0~52COUT1_113\))))
-- \d1|Add0~42\ = CARRY(((\d1|counter\(16) & !\d1|Add0~52\)))
-- \d1|Add0~42COUT1_114\ = CARRY(((\d1|counter\(16) & !\d1|Add0~52COUT1_113\)))

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
	datab => \d1|counter\(16),
	cin => \d1|Add0~47\,
	cin0 => \d1|Add0~52\,
	cin1 => \d1|Add0~52COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~40_combout\,
	cout0 => \d1|Add0~42\,
	cout1 => \d1|Add0~42COUT1_114\);

-- Location: LC_X5_Y4_N4
\d1|counter[16]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(16) = DFFEAS((!\d1|Equal0~6_combout\ & (((\d1|Add0~40_combout\)))), GLOBAL(\clock~combout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \d1|Equal0~6_combout\,
	datad => \d1|Add0~40_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(16));

-- Location: LC_X6_Y3_N7
\d1|Add0~35\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~35_combout\ = \d1|counter\(17) $ (((((!\d1|Add0~47\ & \d1|Add0~42\) # (\d1|Add0~47\ & \d1|Add0~42COUT1_114\)))))
-- \d1|Add0~37\ = CARRY(((!\d1|Add0~42\)) # (!\d1|counter\(17)))
-- \d1|Add0~37COUT1_115\ = CARRY(((!\d1|Add0~42COUT1_114\)) # (!\d1|counter\(17)))

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
	dataa => \d1|counter\(17),
	cin => \d1|Add0~47\,
	cin0 => \d1|Add0~42\,
	cin1 => \d1|Add0~42COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~35_combout\,
	cout0 => \d1|Add0~37\,
	cout1 => \d1|Add0~37COUT1_115\);

-- Location: LC_X5_Y4_N1
\d1|counter[17]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(17) = DFFEAS((((\d1|Add0~35_combout\ & !\d1|Equal0~6_combout\))), GLOBAL(\clock~combout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \d1|Add0~35_combout\,
	datad => \d1|Equal0~6_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(17));

-- Location: LC_X6_Y3_N8
\d1|Add0~30\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~30_combout\ = (\d1|counter\(18) $ ((!(!\d1|Add0~47\ & \d1|Add0~37\) # (\d1|Add0~47\ & \d1|Add0~37COUT1_115\))))
-- \d1|Add0~32\ = CARRY(((\d1|counter\(18) & !\d1|Add0~37\)))
-- \d1|Add0~32COUT1_116\ = CARRY(((\d1|counter\(18) & !\d1|Add0~37COUT1_115\)))

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
	datab => \d1|counter\(18),
	cin => \d1|Add0~47\,
	cin0 => \d1|Add0~37\,
	cin1 => \d1|Add0~37COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~30_combout\,
	cout0 => \d1|Add0~32\,
	cout1 => \d1|Add0~32COUT1_116\);

-- Location: LC_X5_Y4_N0
\d1|counter[18]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(18) = DFFEAS((!\d1|Equal0~6_combout\ & (((\d1|Add0~30_combout\)))), GLOBAL(\clock~combout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \d1|Equal0~6_combout\,
	datad => \d1|Add0~30_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(18));

-- Location: LC_X6_Y3_N9
\d1|Add0~25\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~25_combout\ = (((!\d1|Add0~47\ & \d1|Add0~32\) # (\d1|Add0~47\ & \d1|Add0~32COUT1_116\) $ (\d1|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \d1|counter\(19),
	cin => \d1|Add0~47\,
	cin0 => \d1|Add0~32\,
	cin1 => \d1|Add0~32COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~25_combout\);

-- Location: LC_X4_Y3_N9
\d1|counter[19]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(19) = DFFEAS((((!\d1|Equal0~6_combout\ & \d1|Add0~25_combout\))), GLOBAL(\clock~combout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \d1|Equal0~6_combout\,
	datad => \d1|Add0~25_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(19));

-- Location: LC_X4_Y3_N0
\d1|counter[0]\ : maxii_lcell
-- Equation(s):
-- \d1|Equal0~1\ = (((B1_counter[0] & \d1|counter\(19))))
-- \d1|counter\(0) = DFFEAS(\d1|Equal0~1\, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \d1|Add0~20_combout\,
	datad => \d1|counter\(19),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Equal0~1\,
	regout => \d1|counter\(0));

-- Location: LC_X5_Y3_N1
\d1|Add0~15\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~15_combout\ = (\d1|counter\(1) $ ((\d1|Add0~22\)))
-- \d1|Add0~17\ = CARRY(((!\d1|Add0~22\) # (!\d1|counter\(1))))
-- \d1|Add0~17COUT1_102\ = CARRY(((!\d1|Add0~22COUT1_101\) # (!\d1|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d1|counter\(1),
	cin0 => \d1|Add0~22\,
	cin1 => \d1|Add0~22COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~15_combout\,
	cout0 => \d1|Add0~17\,
	cout1 => \d1|Add0~17COUT1_102\);

-- Location: LC_X4_Y4_N6
\d1|counter[1]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(1) = DFFEAS(GND, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~15_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \d1|Add0~15_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(1));

-- Location: LC_X5_Y3_N2
\d1|Add0~10\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~10_combout\ = (\d1|counter\(2) $ ((!\d1|Add0~17\)))
-- \d1|Add0~12\ = CARRY(((\d1|counter\(2) & !\d1|Add0~17\)))
-- \d1|Add0~12COUT1_103\ = CARRY(((\d1|counter\(2) & !\d1|Add0~17COUT1_102\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d1|counter\(2),
	cin0 => \d1|Add0~17\,
	cin1 => \d1|Add0~17COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~10_combout\,
	cout0 => \d1|Add0~12\,
	cout1 => \d1|Add0~12COUT1_103\);

-- Location: LC_X4_Y4_N7
\d1|counter[2]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(2) = DFFEAS(GND, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~10_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \d1|Add0~10_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(2));

-- Location: LC_X5_Y3_N3
\d1|Add0~5\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~5_combout\ = (\d1|counter\(3) $ ((\d1|Add0~12\)))
-- \d1|Add0~7\ = CARRY(((!\d1|Add0~12\) # (!\d1|counter\(3))))
-- \d1|Add0~7COUT1_104\ = CARRY(((!\d1|Add0~12COUT1_103\) # (!\d1|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d1|counter\(3),
	cin0 => \d1|Add0~12\,
	cin1 => \d1|Add0~12COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~5_combout\,
	cout0 => \d1|Add0~7\,
	cout1 => \d1|Add0~7COUT1_104\);

-- Location: LC_X4_Y4_N5
\d1|counter[3]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(3) = DFFEAS(GND, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~5_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \d1|Add0~5_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(3));

-- Location: LC_X5_Y3_N4
\d1|Add0~0\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~0_combout\ = (\d1|counter\(4) $ ((!\d1|Add0~7\)))
-- \d1|Add0~2\ = CARRY(((\d1|counter\(4) & !\d1|Add0~7COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d1|counter\(4),
	cin0 => \d1|Add0~7\,
	cin1 => \d1|Add0~7COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~0_combout\,
	cout => \d1|Add0~2\);

-- Location: LC_X4_Y4_N0
\d1|counter[4]\ : maxii_lcell
-- Equation(s):
-- \d1|Equal0~0\ = (\d1|counter\(1) & (\d1|counter\(2) & (B1_counter[4] & \d1|counter\(3))))
-- \d1|counter\(4) = DFFEAS(\d1|Equal0~0\, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \d1|counter\(1),
	datab => \d1|counter\(2),
	datac => \d1|Add0~0_combout\,
	datad => \d1|counter\(3),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Equal0~0\,
	regout => \d1|counter\(4));

-- Location: LC_X5_Y3_N5
\d1|Add0~80\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~80_combout\ = (\d1|counter\(5) $ ((\d1|Add0~2\)))
-- \d1|Add0~82\ = CARRY(((!\d1|Add0~2\) # (!\d1|counter\(5))))
-- \d1|Add0~82COUT1_105\ = CARRY(((!\d1|Add0~2\) # (!\d1|counter\(5))))

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
	datab => \d1|counter\(5),
	cin => \d1|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~80_combout\,
	cout0 => \d1|Add0~82\,
	cout1 => \d1|Add0~82COUT1_105\);

-- Location: LC_X4_Y3_N6
\d1|counter[5]\ : maxii_lcell
-- Equation(s):
-- \d1|Equal0~5\ = (!\d1|counter\(8) & (!\d1|counter\(7) & (B1_counter[5] & !\d1|counter\(6))))
-- \d1|counter\(5) = DFFEAS(\d1|Equal0~5\, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \d1|counter\(8),
	datab => \d1|counter\(7),
	datac => \d1|Add0~80_combout\,
	datad => \d1|counter\(6),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Equal0~5\,
	regout => \d1|counter\(5));

-- Location: LC_X5_Y3_N6
\d1|Add0~95\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~95_combout\ = (\d1|counter\(6) $ ((!(!\d1|Add0~2\ & \d1|Add0~82\) # (\d1|Add0~2\ & \d1|Add0~82COUT1_105\))))
-- \d1|Add0~97\ = CARRY(((\d1|counter\(6) & !\d1|Add0~82\)))
-- \d1|Add0~97COUT1_106\ = CARRY(((\d1|counter\(6) & !\d1|Add0~82COUT1_105\)))

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
	datab => \d1|counter\(6),
	cin => \d1|Add0~2\,
	cin0 => \d1|Add0~82\,
	cin1 => \d1|Add0~82COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~95_combout\,
	cout0 => \d1|Add0~97\,
	cout1 => \d1|Add0~97COUT1_106\);

-- Location: LC_X4_Y3_N2
\d1|counter[6]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(6) = DFFEAS((\d1|Add0~95_combout\ & (((!\d1|Equal0~6_combout\)))), GLOBAL(\clock~combout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \d1|Add0~95_combout\,
	datac => \d1|Equal0~6_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(6));

-- Location: LC_X5_Y3_N7
\d1|Add0~90\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~90_combout\ = \d1|counter\(7) $ (((((!\d1|Add0~2\ & \d1|Add0~97\) # (\d1|Add0~2\ & \d1|Add0~97COUT1_106\)))))
-- \d1|Add0~92\ = CARRY(((!\d1|Add0~97\)) # (!\d1|counter\(7)))
-- \d1|Add0~92COUT1_107\ = CARRY(((!\d1|Add0~97COUT1_106\)) # (!\d1|counter\(7)))

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
	dataa => \d1|counter\(7),
	cin => \d1|Add0~2\,
	cin0 => \d1|Add0~97\,
	cin1 => \d1|Add0~97COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~90_combout\,
	cout0 => \d1|Add0~92\,
	cout1 => \d1|Add0~92COUT1_107\);

-- Location: LC_X4_Y3_N1
\d1|counter[7]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(7) = DFFEAS((((\d1|Add0~90_combout\))), GLOBAL(\clock~combout\), !\rst~combout\, , , , , , )

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
	clk => \clock~combout\,
	datad => \d1|Add0~90_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(7));

-- Location: LC_X5_Y3_N8
\d1|Add0~85\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~85_combout\ = (\d1|counter\(8) $ ((!(!\d1|Add0~2\ & \d1|Add0~92\) # (\d1|Add0~2\ & \d1|Add0~92COUT1_107\))))
-- \d1|Add0~87\ = CARRY(((\d1|counter\(8) & !\d1|Add0~92\)))
-- \d1|Add0~87COUT1_108\ = CARRY(((\d1|counter\(8) & !\d1|Add0~92COUT1_107\)))

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
	datab => \d1|counter\(8),
	cin => \d1|Add0~2\,
	cin0 => \d1|Add0~92\,
	cin1 => \d1|Add0~92COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~85_combout\,
	cout0 => \d1|Add0~87\,
	cout1 => \d1|Add0~87COUT1_108\);

-- Location: LC_X4_Y3_N4
\d1|counter[8]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(8) = DFFEAS((((\d1|Add0~85_combout\))), GLOBAL(\clock~combout\), !\rst~combout\, , , , , , )

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
	clk => \clock~combout\,
	datad => \d1|Add0~85_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(8));

-- Location: LC_X5_Y3_N9
\d1|Add0~60\ : maxii_lcell
-- Equation(s):
-- \d1|Add0~60_combout\ = (\d1|counter\(9) $ (((!\d1|Add0~2\ & \d1|Add0~87\) # (\d1|Add0~2\ & \d1|Add0~87COUT1_108\))))
-- \d1|Add0~62\ = CARRY(((!\d1|Add0~87COUT1_108\) # (!\d1|counter\(9))))

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
	datab => \d1|counter\(9),
	cin => \d1|Add0~2\,
	cin0 => \d1|Add0~87\,
	cin1 => \d1|Add0~87COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Add0~60_combout\,
	cout => \d1|Add0~62\);

-- Location: LC_X4_Y3_N7
\d1|counter[9]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(9) = DFFEAS(((\d1|Add0~60_combout\ & (!\d1|Equal0~6_combout\))), GLOBAL(\clock~combout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \d1|Add0~60_combout\,
	datac => \d1|Equal0~6_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(9));

-- Location: LC_X4_Y3_N3
\d1|counter[10]\ : maxii_lcell
-- Equation(s):
-- \d1|counter\(10) = DFFEAS(GND, GLOBAL(\clock~combout\), !\rst~combout\, , , \d1|Add0~75_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \d1|Add0~75_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|counter\(10));

-- Location: LC_X5_Y4_N2
\d1|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \d1|Equal0~3_combout\ = (\d1|Equal0~2\ & (\d1|counter\(17) & (\d1|counter\(18) & \d1|Equal0~1\)))

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
	dataa => \d1|Equal0~2\,
	datab => \d1|counter\(17),
	datac => \d1|counter\(18),
	datad => \d1|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Equal0~3_combout\);

-- Location: LC_X5_Y4_N3
\d1|Equal0~6\ : maxii_lcell
-- Equation(s):
-- \d1|Equal0~6_combout\ = (\d1|Equal0~4\ & (\d1|Equal0~0\ & (\d1|Equal0~5\ & \d1|Equal0~3_combout\)))

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
	dataa => \d1|Equal0~4\,
	datab => \d1|Equal0~0\,
	datac => \d1|Equal0~5\,
	datad => \d1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d1|Equal0~6_combout\);

-- Location: LC_X5_Y4_N9
\d1|not_Q\ : maxii_lcell
-- Equation(s):
-- \d1|not_Q~regout\ = DFFEAS((((!\d1|not_Q~regout\))), GLOBAL(\clock~combout\), !\rst~combout\, , \d1|Equal0~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \d1|not_Q~regout\,
	aclr => \rst~combout\,
	ena => \d1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|not_Q~regout\);

-- Location: LC_X2_Y3_N4
\d2|not_Q\ : maxii_lcell
-- Equation(s):
-- \d2|not_Q~regout\ = DFFEAS((((!\d2|not_Q~regout\))), !GLOBAL(\d1|not_Q~regout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \d1|ALT_INV_not_Q~regout\,
	datac => \d2|not_Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d2|not_Q~regout\);

-- Location: LC_X2_Y3_N7
\d3|not_Q\ : maxii_lcell
-- Equation(s):
-- \d3|not_Q~regout\ = DFFEAS((((!\d3|not_Q~regout\))), !GLOBAL(\d2|not_Q~regout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \d2|ALT_INV_not_Q~regout\,
	datac => \d3|not_Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d3|not_Q~regout\);

-- Location: LC_X3_Y1_N4
\d4|not_Q\ : maxii_lcell
-- Equation(s):
-- \d4|not_Q~regout\ = DFFEAS((((!\d4|not_Q~regout\))), !GLOBAL(\d3|not_Q~regout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \d3|ALT_INV_not_Q~regout\,
	datac => \d4|not_Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d4|not_Q~regout\);

-- Location: LC_X3_Y1_N5
\d4|Q\ : maxii_lcell
-- Equation(s):
-- \d4|Q~regout\ = DFFEAS((((!\d4|not_Q~regout\))), !GLOBAL(\d3|not_Q~regout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \d3|ALT_INV_not_Q~regout\,
	datac => \d4|not_Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d4|Q~regout\);

-- Location: LC_X2_Y3_N6
\d3|Q\ : maxii_lcell
-- Equation(s):
-- \d3|Q~regout\ = DFFEAS((((!\d3|not_Q~regout\))), !GLOBAL(\d2|not_Q~regout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \d2|ALT_INV_not_Q~regout\,
	datac => \d3|not_Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d3|Q~regout\);

-- Location: LC_X4_Y1_N3
\d5|not_Q\ : maxii_lcell
-- Equation(s):
-- \d5|not_Q~regout\ = DFFEAS((((!\d5|not_Q~regout\))), !\d4|not_Q~regout\, !\rst~combout\, , , , , , )

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
	clk => \d4|ALT_INV_not_Q~regout\,
	datad => \d5|not_Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d5|not_Q~regout\);

-- Location: LC_X4_Y1_N2
\d6|Q\ : maxii_lcell
-- Equation(s):
-- \d6|Q~regout\ = DFFEAS((((!\d6|Q~regout\))), !\d5|not_Q~regout\, !\rst~combout\, , , , , , )

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
	clk => \d5|ALT_INV_not_Q~regout\,
	datad => \d6|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d6|Q~regout\);

-- Location: LC_X4_Y1_N8
\d5|Q\ : maxii_lcell
-- Equation(s):
-- \d5|Q~regout\ = DFFEAS((((!\d5|not_Q~regout\))), !\d4|not_Q~regout\, !\rst~combout\, , , , , , )

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
	clk => \d4|ALT_INV_not_Q~regout\,
	datad => \d5|not_Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d5|Q~regout\);

-- Location: LC_X3_Y4_N4
\out1|n1|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux6~0_combout\ = (\d6|Q~regout\) # ((\d5|Q~regout\ & ((\d4|Q~regout\) # (\d3|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux6~0_combout\);

-- Location: LC_X3_Y2_N6
\out1|h1[0]~6\ : maxii_lcell
-- Equation(s):
-- \out1|h1[0]~6_combout\ = (\d6|Q~regout\ & (!\d4|Q~regout\ & ((!\d5|Q~regout\)))) # (!\d6|Q~regout\ & (\d5|Q~regout\ & ((\d4|Q~regout\) # (\d3|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1[0]~6_combout\);

-- Location: LC_X2_Y3_N5
\d2|Q\ : maxii_lcell
-- Equation(s):
-- \d2|Q~regout\ = DFFEAS((((!\d2|not_Q~regout\))), !GLOBAL(\d1|not_Q~regout\), !\rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \d1|ALT_INV_not_Q~regout\,
	datac => \d2|not_Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d2|Q~regout\);

-- Location: LC_X3_Y2_N8
\out1|LessThan5~1\ : maxii_lcell
-- Equation(s):
-- \out1|LessThan5~1_combout\ = (((\d6|Q~regout\ & \d5|Q~regout\)))

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
	datac => \d6|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|LessThan5~1_combout\);

-- Location: LC_X3_Y2_N0
\out1|h1[0]~8\ : maxii_lcell
-- Equation(s):
-- \out1|h1[0]~8_combout\ = ((!\d4|Q~regout\ & (!\d3|Q~regout\ & !\d2|Q~regout\))) # (!\out1|LessThan5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d2|Q~regout\,
	datad => \out1|LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1[0]~8_combout\);

-- Location: LC_X3_Y2_N7
\out1|LessThan4~0\ : maxii_lcell
-- Equation(s):
-- \out1|LessThan4~0_combout\ = (((\d2|Q~regout\) # (\d3|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \d2|Q~regout\,
	datad => \d3|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|LessThan4~0_combout\);

-- Location: LC_X3_Y2_N5
\out1|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \out1|LessThan0~0_combout\ = (!\d6|Q~regout\ & (!\d5|Q~regout\ & ((!\out1|LessThan4~0_combout\) # (!\d4|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0007",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \out1|LessThan4~0_combout\,
	datac => \d6|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|LessThan0~0_combout\);

-- Location: LC_X3_Y2_N2
\out1|LessThan5~0\ : maxii_lcell
-- Equation(s):
-- \out1|LessThan5~0_combout\ = (((!\d5|Q~regout\) # (!\d6|Q~regout\)) # (!\d3|Q~regout\)) # (!\d4|Q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|LessThan5~0_combout\);

-- Location: LC_X3_Y2_N3
\out1|h1[1]~7\ : maxii_lcell
-- Equation(s):
-- \out1|h1[1]~7_combout\ = (\out1|h1[0]~8_combout\ & (\out1|h1[0]~6_combout\ & (!\out1|LessThan0~0_combout\))) # (!\out1|h1[0]~8_combout\ & (((!\out1|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "083b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1[0]~6_combout\,
	datab => \out1|h1[0]~8_combout\,
	datac => \out1|LessThan0~0_combout\,
	datad => \out1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1[1]~7_combout\);

-- Location: LC_X3_Y1_N9
\out1|temp[3]~13\ : maxii_lcell
-- Equation(s):
-- \out1|temp[3]~13_combout\ = (((!\d4|Q~regout\ & !\d5|Q~regout\)))

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
	datac => \d4|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[3]~13_combout\);

-- Location: LC_X3_Y2_N9
\out1|temp[1]~12\ : maxii_lcell
-- Equation(s):
-- \out1|temp[1]~12_combout\ = (\d4|Q~regout\ & (((!\d2|Q~regout\)) # (!\d3|Q~regout\))) # (!\d4|Q~regout\ & (\d3|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e6e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[1]~12_combout\);

-- Location: LC_X3_Y2_N4
\out1|h1[0]~4\ : maxii_lcell
-- Equation(s):
-- \out1|h1[0]~4_combout\ = (\d6|Q~regout\ & (!\d4|Q~regout\ & ((!\d5|Q~regout\)))) # (!\d6|Q~regout\ & (((!\d5|Q~regout\) # (!\out1|temp[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "035f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \out1|temp[1]~12_combout\,
	datac => \d6|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1[0]~4_combout\);

-- Location: LC_X3_Y2_N1
\out1|h1[0]~5\ : maxii_lcell
-- Equation(s):
-- \out1|h1[0]~5_combout\ = (\out1|h1[0]~8_combout\ & (\out1|h1[0]~4_combout\ & (!\out1|LessThan0~0_combout\))) # (!\out1|h1[0]~8_combout\ & (((\out1|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1[0]~4_combout\,
	datab => \out1|h1[0]~8_combout\,
	datac => \out1|LessThan0~0_combout\,
	datad => \out1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1[0]~5_combout\);

-- Location: LC_X3_Y1_N6
\out1|n1|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux5~0_combout\ = (\out1|h1[1]~7_combout\ & ((\out1|temp[3]~13_combout\) # ((\out1|h1[0]~5_combout\) # (!\d6|Q~regout\)))) # (!\out1|h1[1]~7_combout\ & (\out1|h1[0]~5_combout\ & ((\out1|temp[3]~13_combout\) # (!\d6|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1[1]~7_combout\,
	datab => \out1|temp[3]~13_combout\,
	datac => \d6|Q~regout\,
	datad => \out1|h1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux5~0_combout\);

-- Location: LC_X3_Y1_N2
\out1|n1|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux4~0_combout\ = (\out1|h1[0]~5_combout\) # ((!\out1|h1[1]~7_combout\ & (!\out1|temp[3]~13_combout\ & \d6|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1[1]~7_combout\,
	datab => \out1|temp[3]~13_combout\,
	datac => \d6|Q~regout\,
	datad => \out1|h1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux4~0_combout\);

-- Location: LC_X3_Y1_N0
\out1|n1|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux3~0_combout\ = (\out1|h1[1]~7_combout\ & ((\out1|temp[3]~13_combout\) # ((!\out1|h1[0]~5_combout\) # (!\d6|Q~regout\)))) # (!\out1|h1[1]~7_combout\ & (\out1|h1[0]~5_combout\ $ (((\out1|temp[3]~13_combout\) # (!\d6|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9aef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1[1]~7_combout\,
	datab => \out1|temp[3]~13_combout\,
	datac => \d6|Q~regout\,
	datad => \out1|h1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux3~0_combout\);

-- Location: LC_X3_Y4_N5
\out1|n1|Mux2~3\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux2~3_combout\ = ((\d3|Q~regout\ & ((!\d4|Q~regout\) # (!\d2|Q~regout\))) # (!\d3|Q~regout\ & ((\d4|Q~regout\))))

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
	datab => \d3|Q~regout\,
	datac => \d2|Q~regout\,
	datad => \d4|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux2~3_combout\);

-- Location: LC_X3_Y4_N3
\out1|n1|Mux2~6\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux2~6_combout\ = (\out1|n1|Mux2~3_combout\ & (((!\d6|Q~regout\ & \d5|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|n1|Mux2~3_combout\,
	datac => \d6|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux2~6_combout\);

-- Location: LC_X4_Y1_N9
\out1|n1|Mux1~3\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux1~3_combout\ = ((!\d2|Q~regout\ & ((!\d3|Q~regout\))))

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
	datab => \d2|Q~regout\,
	datad => \d3|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux1~3_combout\);

-- Location: LC_X4_Y1_N4
\out1|n1|Mux1~9\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux1~9_combout\ = (((!\d4|Q~regout\ & \out1|n1|Mux1~3_combout\)) # (!\d5|Q~regout\)) # (!\d6|Q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \out1|n1|Mux1~3_combout\,
	datac => \d6|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux1~9_combout\);

-- Location: LC_X3_Y1_N7
\out1|n1|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux0~0_combout\ = (\out1|h1[1]~7_combout\) # (\out1|h1[0]~5_combout\ $ (((\out1|temp[3]~13_combout\) # (!\d6|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1[1]~7_combout\,
	datab => \out1|temp[3]~13_combout\,
	datac => \d6|Q~regout\,
	datad => \out1|h1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux0~0_combout\);

-- Location: LC_X4_Y1_N5
\out1|temp[2]~2\ : maxii_lcell
-- Equation(s):
-- \out1|temp[2]~2_combout\ = (\d4|Q~regout\ & (\d3|Q~regout\ & ((\d2|Q~regout\) # (\d6|Q~regout\)))) # (!\d4|Q~regout\ & (\d3|Q~regout\ $ (((\d2|Q~regout\ & \d6|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bd40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d2|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d3|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[2]~2_combout\);

-- Location: LC_X4_Y1_N7
\out1|temp[2]~3\ : maxii_lcell
-- Equation(s):
-- \out1|temp[2]~3_combout\ = (\d4|Q~regout\ & (!\d3|Q~regout\ & ((!\d6|Q~regout\) # (!\d2|Q~regout\)))) # (!\d4|Q~regout\ & ((\d2|Q~regout\ & (\d6|Q~regout\ & \d3|Q~regout\)) # (!\d2|Q~regout\ & (!\d6|Q~regout\ & !\d3|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "402b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d2|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d3|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[2]~3_combout\);

-- Location: LC_X4_Y1_N6
\out1|temp[2]~14\ : maxii_lcell
-- Equation(s):
-- \out1|temp[2]~14_combout\ = ((\d5|Q~regout\ & ((\out1|temp[2]~3_combout\))) # (!\d5|Q~regout\ & (\out1|temp[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|temp[2]~2_combout\,
	datac => \out1|temp[2]~3_combout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[2]~14_combout\);

-- Location: LC_X3_Y4_N6
\out1|temp[3]~7\ : maxii_lcell
-- Equation(s):
-- \out1|temp[3]~7_combout\ = (\d3|Q~regout\ & (!\d4|Q~regout\ & (\d2|Q~regout\ & !\d5|Q~regout\))) # (!\d3|Q~regout\ & (\d5|Q~regout\ & (\d4|Q~regout\ $ (!\d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d2|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[3]~7_combout\);

-- Location: LC_X3_Y4_N1
\out1|temp[3]~6\ : maxii_lcell
-- Equation(s):
-- \out1|temp[3]~6_combout\ = (\d4|Q~regout\ & (!\d2|Q~regout\ & (\d3|Q~regout\ $ (!\d5|Q~regout\)))) # (!\d4|Q~regout\ & (!\d3|Q~regout\ & (\d2|Q~regout\ & \d5|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1802",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d2|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[3]~6_combout\);

-- Location: LC_X3_Y4_N9
\out1|temp[3]~15\ : maxii_lcell
-- Equation(s):
-- \out1|temp[3]~15_combout\ = ((\d6|Q~regout\ & (\out1|temp[3]~7_combout\)) # (!\d6|Q~regout\ & ((\out1|temp[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|temp[3]~7_combout\,
	datac => \d6|Q~regout\,
	datad => \out1|temp[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[3]~15_combout\);

-- Location: LC_X3_Y4_N7
\out1|temp[1]~11\ : maxii_lcell
-- Equation(s):
-- \out1|temp[1]~11_combout\ = (\d4|Q~regout\ & (\d2|Q~regout\ $ (((!\d3|Q~regout\ & \d5|Q~regout\))))) # (!\d4|Q~regout\ & (!\d2|Q~regout\ & ((\d3|Q~regout\) # (!\d5|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "86a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d2|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[1]~11_combout\);

-- Location: LC_X3_Y4_N8
\out1|temp[1]~10\ : maxii_lcell
-- Equation(s):
-- \out1|temp[1]~10_combout\ = (\d4|Q~regout\ & ((\d3|Q~regout\ & (!\d2|Q~regout\ & !\d5|Q~regout\)) # (!\d3|Q~regout\ & (\d2|Q~regout\ & \d5|Q~regout\)))) # (!\d4|Q~regout\ & (\d2|Q~regout\ $ (((!\d3|Q~regout\ & \d5|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6158",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d2|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[1]~10_combout\);

-- Location: LC_X3_Y4_N2
\out1|temp[1]~16\ : maxii_lcell
-- Equation(s):
-- \out1|temp[1]~16_combout\ = ((\d6|Q~regout\ & (\out1|temp[1]~11_combout\)) # (!\d6|Q~regout\ & ((\out1|temp[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \out1|temp[1]~11_combout\,
	datac => \d6|Q~regout\,
	datad => \out1|temp[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|temp[1]~16_combout\);

-- Location: LC_X5_Y4_N8
\d1|Q\ : maxii_lcell
-- Equation(s):
-- \d1|Q~regout\ = DFFEAS((((!\d1|not_Q~regout\))), GLOBAL(\clock~combout\), !\rst~combout\, , \d1|Equal0~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \d1|not_Q~regout\,
	aclr => \rst~combout\,
	ena => \d1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|Q~regout\);

-- Location: LC_X2_Y2_N2
\out1|n2|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux6~0_combout\ = (\out1|temp[1]~16_combout\ & ((\out1|temp[2]~14_combout\ $ (!\out1|temp[3]~15_combout\)) # (!\d1|Q~regout\))) # (!\out1|temp[1]~16_combout\ & (\out1|temp[2]~14_combout\ $ ((\out1|temp[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96f6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|temp[2]~14_combout\,
	datab => \out1|temp[3]~15_combout\,
	datac => \out1|temp[1]~16_combout\,
	datad => \d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux6~0_combout\);

-- Location: LC_X2_Y2_N3
\out1|n2|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux5~0_combout\ = (!\out1|temp[3]~15_combout\ & ((\out1|temp[2]~14_combout\ & (\out1|temp[1]~16_combout\ & \d1|Q~regout\)) # (!\out1|temp[2]~14_combout\ & ((\out1|temp[1]~16_combout\) # (\d1|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|temp[2]~14_combout\,
	datab => \out1|temp[3]~15_combout\,
	datac => \out1|temp[1]~16_combout\,
	datad => \d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux5~0_combout\);

-- Location: LC_X2_Y2_N4
\out1|n2|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux4~0_combout\ = (\out1|temp[1]~16_combout\ & (((!\out1|temp[3]~15_combout\ & \d1|Q~regout\)))) # (!\out1|temp[1]~16_combout\ & ((\out1|temp[2]~14_combout\ & (!\out1|temp[3]~15_combout\)) # (!\out1|temp[2]~14_combout\ & ((\d1|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3702",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|temp[2]~14_combout\,
	datab => \out1|temp[3]~15_combout\,
	datac => \out1|temp[1]~16_combout\,
	datad => \d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux4~0_combout\);

-- Location: LC_X2_Y2_N9
\out1|n2|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux3~0_combout\ = (\out1|temp[1]~16_combout\ & ((\out1|temp[2]~14_combout\ & ((\d1|Q~regout\))) # (!\out1|temp[2]~14_combout\ & (\out1|temp[3]~15_combout\ & !\d1|Q~regout\)))) # (!\out1|temp[1]~16_combout\ & (!\out1|temp[3]~15_combout\ & 
-- (\out1|temp[2]~14_combout\ $ (\d1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a142",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|temp[2]~14_combout\,
	datab => \out1|temp[3]~15_combout\,
	datac => \out1|temp[1]~16_combout\,
	datad => \d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux3~0_combout\);

-- Location: LC_X2_Y2_N7
\out1|n2|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux2~0_combout\ = (\out1|temp[2]~14_combout\ & (\out1|temp[3]~15_combout\ & ((\out1|temp[1]~16_combout\) # (!\d1|Q~regout\)))) # (!\out1|temp[2]~14_combout\ & (!\out1|temp[3]~15_combout\ & (\out1|temp[1]~16_combout\ & !\d1|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8098",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|temp[2]~14_combout\,
	datab => \out1|temp[3]~15_combout\,
	datac => \out1|temp[1]~16_combout\,
	datad => \d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux2~0_combout\);

-- Location: LC_X2_Y2_N6
\out1|n2|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux1~0_combout\ = (\out1|temp[2]~14_combout\ & ((\out1|temp[3]~15_combout\ & ((\out1|temp[1]~16_combout\) # (!\d1|Q~regout\))) # (!\out1|temp[3]~15_combout\ & (\out1|temp[1]~16_combout\ $ (\d1|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "82a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|temp[2]~14_combout\,
	datab => \out1|temp[3]~15_combout\,
	datac => \out1|temp[1]~16_combout\,
	datad => \d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux1~0_combout\);

-- Location: LC_X2_Y2_N5
\out1|n2|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux0~0_combout\ = (\out1|temp[2]~14_combout\ & (!\out1|temp[1]~16_combout\ & (\out1|temp[3]~15_combout\ $ (!\d1|Q~regout\)))) # (!\out1|temp[2]~14_combout\ & (\d1|Q~regout\ & (\out1|temp[3]~15_combout\ $ (!\out1|temp[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4902",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|temp[2]~14_combout\,
	datab => \out1|temp[3]~15_combout\,
	datac => \out1|temp[1]~16_combout\,
	datad => \d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux0~0_combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|Mux6~0_combout\,
	oe => VCC,
	padio => ww_H(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_H(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_H(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|Mux3~0_combout\,
	oe => VCC,
	padio => ww_H(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|ALT_INV_Mux2~6_combout\,
	oe => VCC,
	padio => ww_H(4));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|Mux1~9_combout\,
	oe => VCC,
	padio => ww_H(5));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|Mux0~0_combout\,
	oe => VCC,
	padio => ww_H(6));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|Mux6~0_combout\,
	oe => VCC,
	padio => ww_L(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_L(1));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_L(2));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_L(3));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_L(4));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_L(5));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_L(6));
END structure;


