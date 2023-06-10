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

-- DATE "05/12/2023 11:57:34"

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

ENTITY 	manualAdder IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	H : OUT std_logic_vector(6 DOWNTO 0);
	L : OUT std_logic_vector(6 DOWNTO 0)
	);
END manualAdder;

-- Design Ports Information


ARCHITECTURE structure OF manualAdder IS
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
SIGNAL ww_H : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_L : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \d2|Q~regout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \d4|not_Q~regout\ : std_logic;
SIGNAL \d5|not_Q~regout\ : std_logic;
SIGNAL \d6|Q~regout\ : std_logic;
SIGNAL \d5|Q~regout\ : std_logic;
SIGNAL \d3|Q~regout\ : std_logic;
SIGNAL \d1|Q~regout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \d1|not_Q~regout\ : std_logic;
SIGNAL \d2|not_Q~regout\ : std_logic;
SIGNAL \d3|not_Q~regout\ : std_logic;
SIGNAL \d4|Q~regout\ : std_logic;
SIGNAL \out1|h1[0]~1_combout\ : std_logic;
SIGNAL \out1|h1[0]~2_combout\ : std_logic;
SIGNAL \out1|h1[3]~0_combout\ : std_logic;
SIGNAL \out1|comb~7_combout\ : std_logic;
SIGNAL \out1|comb~8_combout\ : std_logic;
SIGNAL \out1|comb~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \out1|comb~5_combout\ : std_logic;
SIGNAL \out1|comb~6_combout\ : std_logic;
SIGNAL \out1|n1|Mux6~0_combout\ : std_logic;
SIGNAL \out1|n1|Mux5~0_combout\ : std_logic;
SIGNAL \out1|n1|Mux4~0_combout\ : std_logic;
SIGNAL \out1|n1|Mux3~0_combout\ : std_logic;
SIGNAL \out1|n1|Mux2~0_combout\ : std_logic;
SIGNAL \out1|n1|Mux1~0_combout\ : std_logic;
SIGNAL \out1|n1|Mux0~0_combout\ : std_logic;
SIGNAL \out1|t1[2]~3_combout\ : std_logic;
SIGNAL \out1|t1[2]~2_combout\ : std_logic;
SIGNAL \out1|t1[2]~4_combout\ : std_logic;
SIGNAL \out1|t1[3]~5_combout\ : std_logic;
SIGNAL \out1|t1[3]~6_combout\ : std_logic;
SIGNAL \out1|t1[3]~7_combout\ : std_logic;
SIGNAL \out1|t1[1]~8_combout\ : std_logic;
SIGNAL \out1|n2|Mux6~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux5~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux4~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux3~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux2~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux1~0_combout\ : std_logic;
SIGNAL \out1|n2|Mux0~0_combout\ : std_logic;
SIGNAL \out1|h1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out1|t1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \d5|ALT_INV_not_Q~regout\ : std_logic;
SIGNAL \d4|ALT_INV_not_Q~regout\ : std_logic;
SIGNAL \d3|ALT_INV_not_Q~regout\ : std_logic;
SIGNAL \d2|ALT_INV_not_Q~regout\ : std_logic;
SIGNAL \d1|ALT_INV_not_Q~regout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \out1|n2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \out1|n1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \out1|n1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \out1|n1|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
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
\out1|n2|ALT_INV_Mux0~0_combout\ <= NOT \out1|n2|Mux0~0_combout\;
\out1|n2|ALT_INV_Mux1~0_combout\ <= NOT \out1|n2|Mux1~0_combout\;
\out1|n2|ALT_INV_Mux2~0_combout\ <= NOT \out1|n2|Mux2~0_combout\;
\out1|n2|ALT_INV_Mux3~0_combout\ <= NOT \out1|n2|Mux3~0_combout\;
\out1|n2|ALT_INV_Mux4~0_combout\ <= NOT \out1|n2|Mux4~0_combout\;
\out1|n2|ALT_INV_Mux5~0_combout\ <= NOT \out1|n2|Mux5~0_combout\;
\out1|n1|ALT_INV_Mux2~0_combout\ <= NOT \out1|n1|Mux2~0_combout\;
\out1|n1|ALT_INV_Mux4~0_combout\ <= NOT \out1|n1|Mux4~0_combout\;
\out1|n1|ALT_INV_Mux5~0_combout\ <= NOT \out1|n1|Mux5~0_combout\;

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

-- Location: LC_X3_Y2_N5
\d2|Q\ : maxii_lcell
-- Equation(s):
-- \d2|Q~regout\ = DFFEAS((((!\d2|not_Q~regout\))), !GLOBAL(\d1|not_Q~regout\), !\reset~combout\, , , , , , )

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
	clk => \d1|ALT_INV_not_Q~regout\,
	datad => \d2|not_Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d2|Q~regout\);

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

-- Location: LC_X5_Y2_N8
\d4|not_Q\ : maxii_lcell
-- Equation(s):
-- \d4|not_Q~regout\ = DFFEAS((((!\d4|not_Q~regout\))), !\d3|not_Q~regout\, !\reset~combout\, , , , , , )

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
	clk => \d3|ALT_INV_not_Q~regout\,
	datad => \d4|not_Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d4|not_Q~regout\);

-- Location: LC_X4_Y2_N2
\d5|not_Q\ : maxii_lcell
-- Equation(s):
-- \d5|not_Q~regout\ = DFFEAS((((!\d5|not_Q~regout\))), !\d4|not_Q~regout\, !\reset~combout\, , , , , , )

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
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d5|not_Q~regout\);

-- Location: LC_X4_Y2_N6
\d6|Q\ : maxii_lcell
-- Equation(s):
-- \d6|Q~regout\ = DFFEAS((((!\d6|Q~regout\))), !\d5|not_Q~regout\, !\reset~combout\, , , , , , )

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
	clk => \d5|ALT_INV_not_Q~regout\,
	datac => \d6|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d6|Q~regout\);

-- Location: LC_X4_Y2_N8
\d5|Q\ : maxii_lcell
-- Equation(s):
-- \d5|Q~regout\ = DFFEAS((((!\d5|not_Q~regout\))), !\d4|not_Q~regout\, !\reset~combout\, , , , , , )

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
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d5|Q~regout\);

-- Location: LC_X3_Y2_N6
\d3|Q\ : maxii_lcell
-- Equation(s):
-- \d3|Q~regout\ = DFFEAS((((!\d3|not_Q~regout\))), !GLOBAL(\d2|not_Q~regout\), !\reset~combout\, , , , , , )

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
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d3|Q~regout\);

-- Location: LC_X5_Y2_N4
\d1|Q\ : maxii_lcell
-- Equation(s):
-- \d1|Q~regout\ = DFFEAS((((!\d1|not_Q~regout\))), GLOBAL(\clk~combout\), !\reset~combout\, , , , , , )

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
	clk => \clk~combout\,
	datac => \d1|not_Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|Q~regout\);

-- Location: LC_X4_Y2_N0
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (\d4|Q~regout\ & (\d5|Q~regout\ & (\d3|Q~regout\ & !\d1|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d5|Q~regout\,
	datac => \d3|Q~regout\,
	datad => \d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X4_Y2_N1
reset : maxii_lcell
-- Equation(s):
-- \reset~combout\ = (\rst~combout\) # ((!\d2|Q~regout\ & (\d6|Q~regout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2|Q~regout\,
	datab => \rst~combout\,
	datac => \d6|Q~regout\,
	datad => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \reset~combout\);

-- Location: LC_X5_Y2_N7
\d1|not_Q\ : maxii_lcell
-- Equation(s):
-- \d1|not_Q~regout\ = DFFEAS((((!\d1|not_Q~regout\))), GLOBAL(\clk~combout\), !\reset~combout\, , , , , , )

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
	clk => \clk~combout\,
	datac => \d1|not_Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d1|not_Q~regout\);

-- Location: LC_X6_Y2_N2
\d2|not_Q\ : maxii_lcell
-- Equation(s):
-- \d2|not_Q~regout\ = DFFEAS((((!\d2|not_Q~regout\))), !GLOBAL(\d1|not_Q~regout\), !\reset~combout\, , , , , , )

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
	clk => \d1|ALT_INV_not_Q~regout\,
	datad => \d2|not_Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d2|not_Q~regout\);

-- Location: LC_X6_Y2_N4
\d3|not_Q\ : maxii_lcell
-- Equation(s):
-- \d3|not_Q~regout\ = DFFEAS((((!\d3|not_Q~regout\))), !GLOBAL(\d2|not_Q~regout\), !\reset~combout\, , , , , , )

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
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d3|not_Q~regout\);

-- Location: LC_X5_Y2_N3
\d4|Q\ : maxii_lcell
-- Equation(s):
-- \d4|Q~regout\ = DFFEAS((((!\d4|not_Q~regout\))), !\d3|not_Q~regout\, !\reset~combout\, , , , , , )

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
	clk => \d3|ALT_INV_not_Q~regout\,
	datad => \d4|not_Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \d4|Q~regout\);

-- Location: LC_X4_Y2_N3
\out1|h1[0]~1\ : maxii_lcell
-- Equation(s):
-- \out1|h1[0]~1_combout\ = (\d4|Q~regout\ & (!\d6|Q~regout\ & (\d5|Q~regout\ $ (!\d2|Q~regout\)))) # (!\d4|Q~regout\ & (\d5|Q~regout\ & ((!\d2|Q~regout\) # (!\d6|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c46",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d5|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1[0]~1_combout\);

-- Location: LC_X4_Y2_N7
\out1|h1[0]~2\ : maxii_lcell
-- Equation(s):
-- \out1|h1[0]~2_combout\ = (\d4|Q~regout\ & ((\d5|Q~regout\ & (\d6|Q~regout\)) # (!\d5|Q~regout\ & (!\d6|Q~regout\ & \d2|Q~regout\)))) # (!\d4|Q~regout\ & ((\d5|Q~regout\ & ((\d2|Q~regout\) # (!\d6|Q~regout\))) # (!\d5|Q~regout\ & (\d6|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d694",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datab => \d5|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1[0]~2_combout\);

-- Location: LC_X2_Y3_N6
\out1|h1[3]~0\ : maxii_lcell
-- Equation(s):
-- \out1|h1[3]~0_combout\ = (((!\d4|Q~regout\) # (!\d3|Q~regout\)) # (!\d6|Q~regout\)) # (!\d5|Q~regout\)

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
	dataa => \d5|Q~regout\,
	datab => \d6|Q~regout\,
	datac => \d3|Q~regout\,
	datad => \d4|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1[3]~0_combout\);

-- Location: LC_X2_Y2_N7
\out1|comb~7\ : maxii_lcell
-- Equation(s):
-- \out1|comb~7_combout\ = (\out1|h1[3]~0_combout\ & (\out1|h1[0]~2_combout\ $ (((!\d3|Q~regout\) # (!\out1|h1[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1[0]~1_combout\,
	datab => \d3|Q~regout\,
	datac => \out1|h1[0]~2_combout\,
	datad => \out1|h1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|comb~7_combout\);

-- Location: LC_X2_Y2_N0
\out1|comb~8\ : maxii_lcell
-- Equation(s):
-- \out1|comb~8_combout\ = (\out1|h1[3]~0_combout\ & (\out1|h1[0]~2_combout\ $ (((\out1|h1[0]~1_combout\ & \d3|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1[0]~1_combout\,
	datab => \d3|Q~regout\,
	datac => \out1|h1[0]~2_combout\,
	datad => \out1|h1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|comb~8_combout\);

-- Location: LC_X2_Y2_N8
\out1|h1[0]\ : maxii_lcell
-- Equation(s):
-- \out1|h1\(0) = ((!\out1|comb~7_combout\ & ((\out1|comb~8_combout\) # (\out1|h1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \out1|comb~7_combout\,
	datac => \out1|comb~8_combout\,
	datad => \out1|h1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1\(0));

-- Location: LC_X3_Y3_N6
\out1|comb~4\ : maxii_lcell
-- Equation(s):
-- \out1|comb~4_combout\ = ((\d6|Q~regout\ & ((\d5|Q~regout\) # (\d4|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d6|Q~regout\,
	datac => \d5|Q~regout\,
	datad => \d4|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|comb~4_combout\);

-- Location: LC_X3_Y3_N5
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (\d3|Q~regout\ & (((\d5|Q~regout\ & \d4|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3|Q~regout\,
	datac => \d5|Q~regout\,
	datad => \d4|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X3_Y3_N9
\out1|h1[2]\ : maxii_lcell
-- Equation(s):
-- \out1|h1\(2) = (\out1|comb~4_combout\ & (((\out1|h1\(2)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|comb~4_combout\,
	datac => \Equal0~0_combout\,
	datad => \out1|h1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1\(2));

-- Location: LC_X3_Y3_N2
\out1|comb~5\ : maxii_lcell
-- Equation(s):
-- \out1|comb~5_combout\ = (\d6|Q~regout\ & ((\d5|Q~regout\ & ((!\d4|Q~regout\) # (!\d3|Q~regout\))) # (!\d5|Q~regout\ & ((\d4|Q~regout\))))) # (!\d6|Q~regout\ & (((!\d3|Q~regout\ & !\d4|Q~regout\)) # (!\d5|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4fd3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3|Q~regout\,
	datab => \d6|Q~regout\,
	datac => \d5|Q~regout\,
	datad => \d4|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|comb~5_combout\);

-- Location: LC_X3_Y3_N4
\out1|comb~6\ : maxii_lcell
-- Equation(s):
-- \out1|comb~6_combout\ = (\d6|Q~regout\ & (((!\d5|Q~regout\ & !\d4|Q~regout\)))) # (!\d6|Q~regout\ & (\d5|Q~regout\ & ((\d3|Q~regout\) # (\d4|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "302c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3|Q~regout\,
	datab => \d6|Q~regout\,
	datac => \d5|Q~regout\,
	datad => \d4|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|comb~6_combout\);

-- Location: LC_X3_Y3_N8
\out1|h1[1]\ : maxii_lcell
-- Equation(s):
-- \out1|h1\(1) = ((!\out1|comb~5_combout\ & ((\out1|comb~6_combout\) # (\out1|h1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \out1|comb~5_combout\,
	datac => \out1|comb~6_combout\,
	datad => \out1|h1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|h1\(1));

-- Location: LC_X2_Y2_N2
\out1|n1|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux6~0_combout\ = ((\out1|h1\(2) & ((!\out1|h1\(1)) # (!\out1|h1\(0)))) # (!\out1|h1\(2) & ((\out1|h1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1\(0),
	datac => \out1|h1\(2),
	datad => \out1|h1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux6~0_combout\);

-- Location: LC_X2_Y2_N3
\out1|n1|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux5~0_combout\ = (\out1|h1\(0) & (((\out1|h1\(1)) # (!\out1|h1\(2))))) # (!\out1|h1\(0) & (((!\out1|h1\(2) & \out1|h1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1\(0),
	datac => \out1|h1\(2),
	datad => \out1|h1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux5~0_combout\);

-- Location: LC_X2_Y2_N4
\out1|n1|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux4~0_combout\ = (\out1|h1\(0)) # (((\out1|h1\(2) & !\out1|h1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1\(0),
	datac => \out1|h1\(2),
	datad => \out1|h1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux4~0_combout\);

-- Location: LC_X2_Y2_N9
\out1|n1|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux3~0_combout\ = (\out1|h1\(0) & ((\out1|h1\(2) $ (\out1|h1\(1))))) # (!\out1|h1\(0) & (((\out1|h1\(1)) # (!\out1|h1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1\(0),
	datac => \out1|h1\(2),
	datad => \out1|h1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux3~0_combout\);

-- Location: LC_X2_Y2_N6
\out1|n1|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux2~0_combout\ = (!\out1|h1\(0) & (((!\out1|h1\(2) & \out1|h1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1\(0),
	datac => \out1|h1\(2),
	datad => \out1|h1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux2~0_combout\);

-- Location: LC_X2_Y2_N1
\out1|n1|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux1~0_combout\ = ((\out1|h1\(0) $ (!\out1|h1\(1))) # (!\out1|h1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1\(0),
	datac => \out1|h1\(2),
	datad => \out1|h1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux1~0_combout\);

-- Location: LC_X2_Y2_N5
\out1|n1|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \out1|n1|Mux0~0_combout\ = ((\out1|h1\(1)) # (\out1|h1\(0) $ (!\out1|h1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|h1\(0),
	datac => \out1|h1\(2),
	datad => \out1|h1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n1|Mux0~0_combout\);

-- Location: LC_X3_Y2_N4
\out1|t1[2]~3\ : maxii_lcell
-- Equation(s):
-- \out1|t1[2]~3_combout\ = (\d5|Q~regout\ & (\d3|Q~regout\ $ (((!\d6|Q~regout\) # (!\d2|Q~regout\))))) # (!\d5|Q~regout\ & (\d3|Q~regout\ & ((\d2|Q~regout\) # (\d6|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "93c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1[2]~3_combout\);

-- Location: LC_X3_Y2_N1
\out1|t1[2]~2\ : maxii_lcell
-- Equation(s):
-- \out1|t1[2]~2_combout\ = (\d5|Q~regout\ & (!\d3|Q~regout\ & (\d2|Q~regout\ $ (\d6|Q~regout\)))) # (!\d5|Q~regout\ & ((\d2|Q~regout\ & ((\d6|Q~regout\))) # (!\d2|Q~regout\ & (\d3|Q~regout\ & !\d6|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "12a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1[2]~2_combout\);

-- Location: LC_X3_Y2_N2
\out1|t1[2]~4\ : maxii_lcell
-- Equation(s):
-- \out1|t1[2]~4_combout\ = (\out1|t1[2]~3_combout\ $ (((!\d4|Q~regout\ & \out1|t1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4|Q~regout\,
	datac => \out1|t1[2]~3_combout\,
	datad => \out1|t1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1[2]~4_combout\);

-- Location: LC_X3_Y2_N3
\out1|t1[2]\ : maxii_lcell
-- Equation(s):
-- \out1|t1\(2) = (GLOBAL(\out1|h1[3]~0_combout\) & (((\out1|t1[2]~4_combout\)))) # (!GLOBAL(\out1|h1[3]~0_combout\) & (\out1|t1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|t1\(2),
	datab => \out1|h1[3]~0_combout\,
	datad => \out1|t1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1\(2));

-- Location: LC_X3_Y2_N0
\out1|t1[3]~5\ : maxii_lcell
-- Equation(s):
-- \out1|t1[3]~5_combout\ = (\d4|Q~regout\ & ((\d2|Q~regout\ & ((\d6|Q~regout\))) # (!\d2|Q~regout\ & (\d3|Q~regout\)))) # (!\d4|Q~regout\ & (!\d3|Q~regout\ & (\d2|Q~regout\ $ (\d6|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e412",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d4|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1[3]~5_combout\);

-- Location: LC_X3_Y2_N7
\out1|t1[3]~6\ : maxii_lcell
-- Equation(s):
-- \out1|t1[3]~6_combout\ = (\d2|Q~regout\ & (\d3|Q~regout\ & (\d6|Q~regout\ & !\d4|Q~regout\))) # (!\d2|Q~regout\ & (!\d3|Q~regout\ & (!\d6|Q~regout\ & \d4|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0180",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \d6|Q~regout\,
	datad => \d4|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1[3]~6_combout\);

-- Location: LC_X3_Y2_N8
\out1|t1[3]~7\ : maxii_lcell
-- Equation(s):
-- \out1|t1[3]~7_combout\ = ((\d5|Q~regout\ & (\out1|t1[3]~5_combout\)) # (!\d5|Q~regout\ & ((\out1|t1[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d5|Q~regout\,
	datac => \out1|t1[3]~5_combout\,
	datad => \out1|t1[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1[3]~7_combout\);

-- Location: LC_X3_Y2_N9
\out1|t1[3]\ : maxii_lcell
-- Equation(s):
-- \out1|t1\(3) = ((GLOBAL(\out1|h1[3]~0_combout\) & ((\out1|t1[3]~7_combout\))) # (!GLOBAL(\out1|h1[3]~0_combout\) & (\out1|t1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \out1|h1[3]~0_combout\,
	datac => \out1|t1\(3),
	datad => \out1|t1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1\(3));

-- Location: LC_X5_Y2_N9
\out1|t1[0]\ : maxii_lcell
-- Equation(s):
-- \out1|t1\(0) = ((GLOBAL(\out1|h1[3]~0_combout\) & (\d1|Q~regout\)) # (!GLOBAL(\out1|h1[3]~0_combout\) & ((\out1|t1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \out1|h1[3]~0_combout\,
	datac => \d1|Q~regout\,
	datad => \out1|t1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1\(0));

-- Location: LC_X4_Y2_N4
\out1|t1[1]~8\ : maxii_lcell
-- Equation(s):
-- \out1|t1[1]~8_combout\ = \d2|Q~regout\ $ (\out1|h1[0]~2_combout\ $ (((!\out1|h1[0]~1_combout\) # (!\d3|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "69a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2|Q~regout\,
	datab => \d3|Q~regout\,
	datac => \out1|h1[0]~2_combout\,
	datad => \out1|h1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1[1]~8_combout\);

-- Location: LC_X4_Y2_N5
\out1|t1[1]\ : maxii_lcell
-- Equation(s):
-- \out1|t1\(1) = ((GLOBAL(\out1|h1[3]~0_combout\) & ((!\out1|t1[1]~8_combout\))) # (!GLOBAL(\out1|h1[3]~0_combout\) & (\out1|t1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \out1|h1[3]~0_combout\,
	datac => \out1|t1\(1),
	datad => \out1|t1[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|t1\(1));

-- Location: LC_X2_Y3_N5
\out1|n2|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux6~0_combout\ = (\out1|t1\(1) & ((\out1|t1\(2) $ (!\out1|t1\(3))) # (!\out1|t1\(0)))) # (!\out1|t1\(1) & (\out1|t1\(2) $ ((\out1|t1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9f66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|t1\(2),
	datab => \out1|t1\(3),
	datac => \out1|t1\(0),
	datad => \out1|t1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux6~0_combout\);

-- Location: LC_X2_Y3_N7
\out1|n2|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux5~0_combout\ = (!\out1|t1\(3) & ((\out1|t1\(2) & (\out1|t1\(0) & \out1|t1\(1))) # (!\out1|t1\(2) & ((\out1|t1\(0)) # (\out1|t1\(1))))))

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
	dataa => \out1|t1\(2),
	datab => \out1|t1\(3),
	datac => \out1|t1\(0),
	datad => \out1|t1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux5~0_combout\);

-- Location: LC_X2_Y3_N1
\out1|n2|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux4~0_combout\ = (\out1|t1\(1) & (((!\out1|t1\(3) & \out1|t1\(0))))) # (!\out1|t1\(1) & ((\out1|t1\(2) & (!\out1|t1\(3))) # (!\out1|t1\(2) & ((\out1|t1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3072",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|t1\(2),
	datab => \out1|t1\(3),
	datac => \out1|t1\(0),
	datad => \out1|t1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux4~0_combout\);

-- Location: LC_X2_Y3_N4
\out1|n2|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux3~0_combout\ = (\out1|t1\(1) & ((\out1|t1\(2) & ((\out1|t1\(0)))) # (!\out1|t1\(2) & (\out1|t1\(3) & !\out1|t1\(0))))) # (!\out1|t1\(1) & (!\out1|t1\(3) & (\out1|t1\(2) $ (\out1|t1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a412",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|t1\(2),
	datab => \out1|t1\(3),
	datac => \out1|t1\(0),
	datad => \out1|t1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux3~0_combout\);

-- Location: LC_X2_Y3_N8
\out1|n2|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux2~0_combout\ = (\out1|t1\(2) & (\out1|t1\(3) & ((\out1|t1\(1)) # (!\out1|t1\(0))))) # (!\out1|t1\(2) & (!\out1|t1\(3) & (!\out1|t1\(0) & \out1|t1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8908",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|t1\(2),
	datab => \out1|t1\(3),
	datac => \out1|t1\(0),
	datad => \out1|t1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux2~0_combout\);

-- Location: LC_X2_Y3_N2
\out1|n2|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux1~0_combout\ = (\out1|t1\(2) & ((\out1|t1\(3) & ((\out1|t1\(1)) # (!\out1|t1\(0)))) # (!\out1|t1\(3) & (\out1|t1\(0) $ (\out1|t1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|t1\(2),
	datab => \out1|t1\(3),
	datac => \out1|t1\(0),
	datad => \out1|t1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux1~0_combout\);

-- Location: LC_X2_Y3_N3
\out1|n2|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \out1|n2|Mux0~0_combout\ = (\out1|t1\(2) & (!\out1|t1\(1) & (\out1|t1\(3) $ (!\out1|t1\(0))))) # (!\out1|t1\(2) & (\out1|t1\(0) & (\out1|t1\(3) $ (!\out1|t1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4092",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out1|t1\(2),
	datab => \out1|t1\(3),
	datac => \out1|t1\(0),
	datad => \out1|t1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out1|n2|Mux0~0_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|Mux6~0_combout\,
	oe => VCC,
	padio => ww_H(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_H(1));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_H(2));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|Mux3~0_combout\,
	oe => VCC,
	padio => ww_H(3));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_H(4));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|Mux1~0_combout\,
	oe => VCC,
	padio => ww_H(5));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n1|Mux0~0_combout\,
	oe => VCC,
	padio => ww_H(6));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|Mux6~0_combout\,
	oe => VCC,
	padio => ww_L(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_L(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_L(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_L(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_L(4));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out1|n2|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_L(5));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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


