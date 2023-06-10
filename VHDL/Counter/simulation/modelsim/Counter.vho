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

-- DATE "06/08/2023 16:56:37"

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

ENTITY 	Counter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	H : BUFFER std_logic_vector(6 DOWNTO 0);
	L : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Counter;

-- Design Ports Information


ARCHITECTURE structure OF Counter IS
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
SIGNAL \rst~combout\ : std_logic;
SIGNAL \cnt|CL|labe10:0:Di|Q~regout\ : std_logic;
SIGNAL \cnt|CL|labe10:1:Di|Q~regout\ : std_logic;
SIGNAL \cnt|CL|labe10:2:Di|Q~regout\ : std_logic;
SIGNAL \cnt|CL|labe10:3:Di|Q~regout\ : std_logic;
SIGNAL \cnt|Dv|Q~regout\ : std_logic;
SIGNAL \cnt|CH|labe10:0:Di|Q~regout\ : std_logic;
SIGNAL \cnt|CH|labe10:1:Di|Q~regout\ : std_logic;
SIGNAL \cnt|CH|labe10:2:Di|Q~regout\ : std_logic;
SIGNAL \digL|Mux6~0_combout\ : std_logic;
SIGNAL \digL|Mux5~0_combout\ : std_logic;
SIGNAL \digL|Mux4~0_combout\ : std_logic;
SIGNAL \digL|Mux3~0_combout\ : std_logic;
SIGNAL \digL|Mux2~0_combout\ : std_logic;
SIGNAL \digL|Mux1~0_combout\ : std_logic;
SIGNAL \digL|Mux0~0_combout\ : std_logic;
SIGNAL \digH|Mux6~0_combout\ : std_logic;
SIGNAL \digH|Mux5~0_combout\ : std_logic;
SIGNAL \digH|Mux4~0_combout\ : std_logic;
SIGNAL \digH|Mux3~0_combout\ : std_logic;
SIGNAL \digH|Mux2~0_combout\ : std_logic;
SIGNAL \digH|Mux1~0_combout\ : std_logic;
SIGNAL \digH|Mux0~0_combout\ : std_logic;
SIGNAL \digH|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \digH|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \digH|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \digH|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \digH|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \digH|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \digL|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \digL|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \digL|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
H <= ww_H;
L <= ww_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\digH|ALT_INV_Mux0~0_combout\ <= NOT \digH|Mux0~0_combout\;
\digH|ALT_INV_Mux1~0_combout\ <= NOT \digH|Mux1~0_combout\;
\digH|ALT_INV_Mux2~0_combout\ <= NOT \digH|Mux2~0_combout\;
\digH|ALT_INV_Mux3~0_combout\ <= NOT \digH|Mux3~0_combout\;
\digH|ALT_INV_Mux4~0_combout\ <= NOT \digH|Mux4~0_combout\;
\digH|ALT_INV_Mux5~0_combout\ <= NOT \digH|Mux5~0_combout\;
\digL|ALT_INV_Mux2~0_combout\ <= NOT \digL|Mux2~0_combout\;
\digL|ALT_INV_Mux4~0_combout\ <= NOT \digL|Mux4~0_combout\;
\digL|ALT_INV_Mux5~0_combout\ <= NOT \digL|Mux5~0_combout\;

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X3_Y3_N7
\cnt|CL|labe10:0:Di|Q\ : maxii_lcell
-- Equation(s):
-- \cnt|CL|labe10:0:Di|Q~regout\ = DFFEAS((((!\cnt|CL|labe10:0:Di|Q~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	datac => \cnt|CL|labe10:0:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|CL|labe10:0:Di|Q~regout\);

-- Location: LC_X3_Y3_N9
\cnt|CL|labe10:1:Di|Q\ : maxii_lcell
-- Equation(s):
-- \cnt|CL|labe10:1:Di|Q~regout\ = DFFEAS(((\cnt|CL|labe10:0:Di|Q~regout\ & (!\cnt|CL|labe10:3:Di|Q~regout\ & !\cnt|CL|labe10:1:Di|Q~regout\)) # (!\cnt|CL|labe10:0:Di|Q~regout\ & ((\cnt|CL|labe10:1:Di|Q~regout\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "330c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|CL|labe10:0:Di|Q~regout\,
	datac => \cnt|CL|labe10:3:Di|Q~regout\,
	datad => \cnt|CL|labe10:1:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|CL|labe10:1:Di|Q~regout\);

-- Location: LC_X3_Y3_N6
\cnt|CL|labe10:2:Di|Q\ : maxii_lcell
-- Equation(s):
-- \cnt|CL|labe10:2:Di|Q~regout\ = DFFEAS(\cnt|CL|labe10:2:Di|Q~regout\ $ ((((\cnt|CL|labe10:0:Di|Q~regout\ & \cnt|CL|labe10:1:Di|Q~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|CL|labe10:2:Di|Q~regout\,
	datac => \cnt|CL|labe10:0:Di|Q~regout\,
	datad => \cnt|CL|labe10:1:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|CL|labe10:2:Di|Q~regout\);

-- Location: LC_X3_Y3_N5
\cnt|CL|labe10:3:Di|Q\ : maxii_lcell
-- Equation(s):
-- \cnt|CL|labe10:3:Di|Q~regout\ = DFFEAS((\cnt|CL|labe10:3:Di|Q~regout\ & (!\cnt|CL|labe10:0:Di|Q~regout\)) # (!\cnt|CL|labe10:3:Di|Q~regout\ & (\cnt|CL|labe10:0:Di|Q~regout\ & (\cnt|CL|labe10:2:Di|Q~regout\ & \cnt|CL|labe10:1:Di|Q~regout\))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|CL|labe10:3:Di|Q~regout\,
	datab => \cnt|CL|labe10:0:Di|Q~regout\,
	datac => \cnt|CL|labe10:2:Di|Q~regout\,
	datad => \cnt|CL|labe10:1:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|CL|labe10:3:Di|Q~regout\);

-- Location: LC_X3_Y3_N2
\cnt|Dv|Q\ : maxii_lcell
-- Equation(s):
-- \cnt|Dv|Q~regout\ = DFFEAS((\cnt|CL|labe10:3:Di|Q~regout\ & (!\cnt|CL|labe10:0:Di|Q~regout\ & (!\cnt|CL|labe10:2:Di|Q~regout\ & !\cnt|CL|labe10:1:Di|Q~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|CL|labe10:3:Di|Q~regout\,
	datab => \cnt|CL|labe10:0:Di|Q~regout\,
	datac => \cnt|CL|labe10:2:Di|Q~regout\,
	datad => \cnt|CL|labe10:1:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|Dv|Q~regout\);

-- Location: LC_X3_Y3_N4
\cnt|CH|labe10:0:Di|Q\ : maxii_lcell
-- Equation(s):
-- \cnt|CH|labe10:0:Di|Q~regout\ = DFFEAS((((!\cnt|CH|labe10:0:Di|Q~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \cnt|Dv|Q~regout\, , , , )

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
	datac => \cnt|CH|labe10:0:Di|Q~regout\,
	aclr => \rst~combout\,
	ena => \cnt|Dv|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|CH|labe10:0:Di|Q~regout\);

-- Location: LC_X3_Y3_N8
\cnt|CH|labe10:1:Di|Q\ : maxii_lcell
-- Equation(s):
-- \cnt|CH|labe10:1:Di|Q~regout\ = DFFEAS(((!\cnt|CH|labe10:2:Di|Q~regout\ & (\cnt|CH|labe10:1:Di|Q~regout\ $ (\cnt|CH|labe10:0:Di|Q~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \cnt|Dv|Q~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|CH|labe10:1:Di|Q~regout\,
	datac => \cnt|CH|labe10:0:Di|Q~regout\,
	datad => \cnt|CH|labe10:2:Di|Q~regout\,
	aclr => \rst~combout\,
	ena => \cnt|Dv|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|CH|labe10:1:Di|Q~regout\);

-- Location: LC_X3_Y3_N3
\cnt|CH|labe10:2:Di|Q\ : maxii_lcell
-- Equation(s):
-- \cnt|CH|labe10:2:Di|Q~regout\ = DFFEAS((\cnt|Dv|Q~regout\ & ((\cnt|CH|labe10:0:Di|Q~regout\ & (\cnt|CH|labe10:1:Di|Q~regout\)) # (!\cnt|CH|labe10:0:Di|Q~regout\ & ((\cnt|CH|labe10:2:Di|Q~regout\))))) # (!\cnt|Dv|Q~regout\ & 
-- (((\cnt|CH|labe10:2:Di|Q~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|CH|labe10:1:Di|Q~regout\,
	datab => \cnt|Dv|Q~regout\,
	datac => \cnt|CH|labe10:0:Di|Q~regout\,
	datad => \cnt|CH|labe10:2:Di|Q~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|CH|labe10:2:Di|Q~regout\);

-- Location: LC_X2_Y3_N5
\digL|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \digL|Mux6~0_combout\ = ((\cnt|CH|labe10:2:Di|Q~regout\ & ((!\cnt|CH|labe10:1:Di|Q~regout\) # (!\cnt|CH|labe10:0:Di|Q~regout\))) # (!\cnt|CH|labe10:2:Di|Q~regout\ & ((\cnt|CH|labe10:1:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt|CH|labe10:0:Di|Q~regout\,
	datac => \cnt|CH|labe10:2:Di|Q~regout\,
	datad => \cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digL|Mux6~0_combout\);

-- Location: LC_X2_Y3_N6
\digL|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \digL|Mux5~0_combout\ = ((\cnt|CH|labe10:0:Di|Q~regout\ & ((\cnt|CH|labe10:1:Di|Q~regout\) # (!\cnt|CH|labe10:2:Di|Q~regout\))) # (!\cnt|CH|labe10:0:Di|Q~regout\ & (!\cnt|CH|labe10:2:Di|Q~regout\ & \cnt|CH|labe10:1:Di|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt|CH|labe10:0:Di|Q~regout\,
	datac => \cnt|CH|labe10:2:Di|Q~regout\,
	datad => \cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digL|Mux5~0_combout\);

-- Location: LC_X2_Y3_N8
\digL|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \digL|Mux4~0_combout\ = ((\cnt|CH|labe10:0:Di|Q~regout\) # ((\cnt|CH|labe10:2:Di|Q~regout\ & !\cnt|CH|labe10:1:Di|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt|CH|labe10:0:Di|Q~regout\,
	datac => \cnt|CH|labe10:2:Di|Q~regout\,
	datad => \cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digL|Mux4~0_combout\);

-- Location: LC_X2_Y3_N7
\digL|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \digL|Mux3~0_combout\ = ((\cnt|CH|labe10:0:Di|Q~regout\ & (\cnt|CH|labe10:2:Di|Q~regout\ $ (\cnt|CH|labe10:1:Di|Q~regout\))) # (!\cnt|CH|labe10:0:Di|Q~regout\ & ((\cnt|CH|labe10:1:Di|Q~regout\) # (!\cnt|CH|labe10:2:Di|Q~regout\))))

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
	datab => \cnt|CH|labe10:0:Di|Q~regout\,
	datac => \cnt|CH|labe10:2:Di|Q~regout\,
	datad => \cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digL|Mux3~0_combout\);

-- Location: LC_X2_Y3_N4
\digL|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \digL|Mux2~0_combout\ = ((!\cnt|CH|labe10:0:Di|Q~regout\ & (!\cnt|CH|labe10:2:Di|Q~regout\ & \cnt|CH|labe10:1:Di|Q~regout\)))

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
	datab => \cnt|CH|labe10:0:Di|Q~regout\,
	datac => \cnt|CH|labe10:2:Di|Q~regout\,
	datad => \cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digL|Mux2~0_combout\);

-- Location: LC_X2_Y3_N2
\digL|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \digL|Mux1~0_combout\ = ((\cnt|CH|labe10:0:Di|Q~regout\ $ (!\cnt|CH|labe10:1:Di|Q~regout\)) # (!\cnt|CH|labe10:2:Di|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt|CH|labe10:0:Di|Q~regout\,
	datac => \cnt|CH|labe10:2:Di|Q~regout\,
	datad => \cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digL|Mux1~0_combout\);

-- Location: LC_X2_Y3_N3
\digL|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \digL|Mux0~0_combout\ = ((\cnt|CH|labe10:1:Di|Q~regout\) # (\cnt|CH|labe10:0:Di|Q~regout\ $ (!\cnt|CH|labe10:2:Di|Q~regout\)))

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
	datab => \cnt|CH|labe10:0:Di|Q~regout\,
	datac => \cnt|CH|labe10:2:Di|Q~regout\,
	datad => \cnt|CH|labe10:1:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digL|Mux0~0_combout\);

-- Location: LC_X2_Y2_N2
\digH|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \digH|Mux6~0_combout\ = (\cnt|CL|labe10:0:Di|Q~regout\ & ((\cnt|CL|labe10:3:Di|Q~regout\) # (\cnt|CL|labe10:1:Di|Q~regout\ $ (\cnt|CL|labe10:2:Di|Q~regout\)))) # (!\cnt|CL|labe10:0:Di|Q~regout\ & ((\cnt|CL|labe10:1:Di|Q~regout\) # 
-- (\cnt|CL|labe10:2:Di|Q~regout\ $ (\cnt|CL|labe10:3:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6be",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|CL|labe10:1:Di|Q~regout\,
	datab => \cnt|CL|labe10:2:Di|Q~regout\,
	datac => \cnt|CL|labe10:3:Di|Q~regout\,
	datad => \cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digH|Mux6~0_combout\);

-- Location: LC_X2_Y2_N3
\digH|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \digH|Mux5~0_combout\ = (\cnt|CL|labe10:1:Di|Q~regout\ & (!\cnt|CL|labe10:3:Di|Q~regout\ & ((\cnt|CL|labe10:0:Di|Q~regout\) # (!\cnt|CL|labe10:2:Di|Q~regout\)))) # (!\cnt|CL|labe10:1:Di|Q~regout\ & (\cnt|CL|labe10:0:Di|Q~regout\ & 
-- (\cnt|CL|labe10:2:Di|Q~regout\ $ (!\cnt|CL|labe10:3:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4b02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|CL|labe10:1:Di|Q~regout\,
	datab => \cnt|CL|labe10:2:Di|Q~regout\,
	datac => \cnt|CL|labe10:3:Di|Q~regout\,
	datad => \cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digH|Mux5~0_combout\);

-- Location: LC_X2_Y2_N4
\digH|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \digH|Mux4~0_combout\ = (\cnt|CL|labe10:1:Di|Q~regout\ & (((!\cnt|CL|labe10:3:Di|Q~regout\ & \cnt|CL|labe10:0:Di|Q~regout\)))) # (!\cnt|CL|labe10:1:Di|Q~regout\ & ((\cnt|CL|labe10:2:Di|Q~regout\ & (!\cnt|CL|labe10:3:Di|Q~regout\)) # 
-- (!\cnt|CL|labe10:2:Di|Q~regout\ & ((\cnt|CL|labe10:0:Di|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|CL|labe10:1:Di|Q~regout\,
	datab => \cnt|CL|labe10:2:Di|Q~regout\,
	datac => \cnt|CL|labe10:3:Di|Q~regout\,
	datad => \cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digH|Mux4~0_combout\);

-- Location: LC_X2_Y2_N9
\digH|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \digH|Mux3~0_combout\ = (\cnt|CL|labe10:1:Di|Q~regout\ & ((\cnt|CL|labe10:2:Di|Q~regout\ & ((\cnt|CL|labe10:0:Di|Q~regout\))) # (!\cnt|CL|labe10:2:Di|Q~regout\ & (\cnt|CL|labe10:3:Di|Q~regout\ & !\cnt|CL|labe10:0:Di|Q~regout\)))) # 
-- (!\cnt|CL|labe10:1:Di|Q~regout\ & (!\cnt|CL|labe10:3:Di|Q~regout\ & (\cnt|CL|labe10:2:Di|Q~regout\ $ (\cnt|CL|labe10:0:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8924",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|CL|labe10:1:Di|Q~regout\,
	datab => \cnt|CL|labe10:2:Di|Q~regout\,
	datac => \cnt|CL|labe10:3:Di|Q~regout\,
	datad => \cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digH|Mux3~0_combout\);

-- Location: LC_X2_Y2_N6
\digH|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \digH|Mux2~0_combout\ = (\cnt|CL|labe10:2:Di|Q~regout\ & (\cnt|CL|labe10:3:Di|Q~regout\ & ((\cnt|CL|labe10:1:Di|Q~regout\) # (!\cnt|CL|labe10:0:Di|Q~regout\)))) # (!\cnt|CL|labe10:2:Di|Q~regout\ & (\cnt|CL|labe10:1:Di|Q~regout\ & 
-- (!\cnt|CL|labe10:3:Di|Q~regout\ & !\cnt|CL|labe10:0:Di|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|CL|labe10:1:Di|Q~regout\,
	datab => \cnt|CL|labe10:2:Di|Q~regout\,
	datac => \cnt|CL|labe10:3:Di|Q~regout\,
	datad => \cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digH|Mux2~0_combout\);

-- Location: LC_X2_Y2_N5
\digH|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \digH|Mux1~0_combout\ = (\cnt|CL|labe10:1:Di|Q~regout\ & ((\cnt|CL|labe10:0:Di|Q~regout\ & ((\cnt|CL|labe10:3:Di|Q~regout\))) # (!\cnt|CL|labe10:0:Di|Q~regout\ & (\cnt|CL|labe10:2:Di|Q~regout\)))) # (!\cnt|CL|labe10:1:Di|Q~regout\ & 
-- (\cnt|CL|labe10:2:Di|Q~regout\ & (\cnt|CL|labe10:3:Di|Q~regout\ $ (\cnt|CL|labe10:0:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|CL|labe10:1:Di|Q~regout\,
	datab => \cnt|CL|labe10:2:Di|Q~regout\,
	datac => \cnt|CL|labe10:3:Di|Q~regout\,
	datad => \cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digH|Mux1~0_combout\);

-- Location: LC_X2_Y2_N7
\digH|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \digH|Mux0~0_combout\ = (\cnt|CL|labe10:2:Di|Q~regout\ & (!\cnt|CL|labe10:1:Di|Q~regout\ & (\cnt|CL|labe10:3:Di|Q~regout\ $ (!\cnt|CL|labe10:0:Di|Q~regout\)))) # (!\cnt|CL|labe10:2:Di|Q~regout\ & (\cnt|CL|labe10:0:Di|Q~regout\ & 
-- (\cnt|CL|labe10:1:Di|Q~regout\ $ (!\cnt|CL|labe10:3:Di|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6104",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|CL|labe10:1:Di|Q~regout\,
	datab => \cnt|CL|labe10:2:Di|Q~regout\,
	datac => \cnt|CL|labe10:3:Di|Q~regout\,
	datad => \cnt|CL|labe10:0:Di|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digH|Mux0~0_combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digL|Mux6~0_combout\,
	oe => VCC,
	padio => ww_H(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digL|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_H(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digL|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_H(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digL|Mux3~0_combout\,
	oe => VCC,
	padio => ww_H(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digL|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_H(4));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digL|Mux1~0_combout\,
	oe => VCC,
	padio => ww_H(5));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digL|Mux0~0_combout\,
	oe => VCC,
	padio => ww_H(6));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digH|Mux6~0_combout\,
	oe => VCC,
	padio => ww_L(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digH|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_L(1));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digH|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_L(2));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digH|ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_L(3));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digH|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_L(4));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digH|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_L(5));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digH|ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_L(6));
END structure;


