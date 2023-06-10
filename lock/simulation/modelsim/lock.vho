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

-- DATE "06/09/2023 00:00:23"

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

ENTITY 	lock IS
    PORT (
	code : IN std_logic_vector(3 DOWNTO 0);
	mode : IN std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	unlock : BUFFER std_logic;
	alarm : BUFFER std_logic;
	err : BUFFER std_logic
	);
END lock;

-- Design Ports Information


ARCHITECTURE structure OF lock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_code : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_unlock : std_logic;
SIGNAL ww_alarm : std_logic;
SIGNAL ww_err : std_logic;
SIGNAL \pwd[1][1]~regout\ : std_logic;
SIGNAL \pwd[3][1]~regout\ : std_logic;
SIGNAL \pwd[1][0]~regout\ : std_logic;
SIGNAL \pwd[3][0]~regout\ : std_logic;
SIGNAL \pwd[1][2]~regout\ : std_logic;
SIGNAL \pwd[3][2]~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \ad~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \pwd[0][2]~2_combout\ : std_logic;
SIGNAL \pwd[0][3]~regout\ : std_logic;
SIGNAL \us~2\ : std_logic;
SIGNAL \us~0_combout\ : std_logic;
SIGNAL \err~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \pwd[0][0]~regout\ : std_logic;
SIGNAL \us~1\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \alarm~1_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \pwd[2][2]~3_combout\ : std_logic;
SIGNAL \pwd[2][0]~regout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \pwd[1][2]~1_combout\ : std_logic;
SIGNAL \Mux23~0\ : std_logic;
SIGNAL \pwd[3][2]~0_combout\ : std_logic;
SIGNAL \Mux23~1\ : std_logic;
SIGNAL \pwd[2][1]~regout\ : std_logic;
SIGNAL \pwd[0][1]~regout\ : std_logic;
SIGNAL \Mux22~0\ : std_logic;
SIGNAL \Mux22~1\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \pwd[2][2]~regout\ : std_logic;
SIGNAL \pwd[0][2]~regout\ : std_logic;
SIGNAL \Mux21~0\ : std_logic;
SIGNAL \Mux21~1\ : std_logic;
SIGNAL \pwd[2][3]~regout\ : std_logic;
SIGNAL \pwd[3][3]~regout\ : std_logic;
SIGNAL \pwd[1][3]~regout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \ad~1_combout\ : std_logic;
SIGNAL \us~6_combout\ : std_logic;
SIGNAL \ad~regout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \unlock~3_combout\ : std_logic;
SIGNAL \alarm~0_combout\ : std_logic;
SIGNAL \alarm~reg0_regout\ : std_logic;
SIGNAL \us~3_combout\ : std_logic;
SIGNAL \us~4_combout\ : std_logic;
SIGNAL \us~regout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \cnt[0]~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \cnt[0]~2_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \state[0]~5_combout\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \unlock~2_combout\ : std_logic;
SIGNAL \unlock~5_combout\ : std_logic;
SIGNAL \unlock~reg0_regout\ : std_logic;
SIGNAL \err~1_combout\ : std_logic;
SIGNAL \err~2_combout\ : std_logic;
SIGNAL \err~reg0_regout\ : std_logic;
SIGNAL state : std_logic_vector(2 DOWNTO 0);
SIGNAL \mode~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL cnt : std_logic_vector(1 DOWNTO 0);
SIGNAL \code~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_code <= code;
ww_mode <= mode;
ww_clk <= clk;
ww_rst <= rst;
unlock <= ww_unlock;
alarm <= ww_alarm;
err <= ww_err;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mode(0),
	combout => \mode~combout\(0));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mode(1),
	combout => \mode~combout\(1));

-- Location: LC_X2_Y2_N8
\Equal2~0\ : maxii_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (((\mode~combout\(0) & !\mode~combout\(1))))

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
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\code[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_code(3),
	combout => \code~combout\(3));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\code[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_code(2),
	combout => \code~combout\(2));

-- Location: LC_X3_Y2_N9
\ad~0\ : maxii_lcell
-- Equation(s):
-- \ad~0_combout\ = (!state(2) & (((!state(0) & !state(1)))))

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
	dataa => state(2),
	datac => state(0),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad~0_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X3_Y2_N2
\pwd[0][2]~2\ : maxii_lcell
-- Equation(s):
-- \pwd[0][2]~2_combout\ = ((\ad~0_combout\ & (\rst~combout\ & \process_0~1_combout\)))

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
	datab => \ad~0_combout\,
	datac => \rst~combout\,
	datad => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwd[0][2]~2_combout\);

-- Location: LC_X3_Y2_N8
\pwd[0][3]\ : maxii_lcell
-- Equation(s):
-- \pwd[0][3]~regout\ = DFFEAS(((\pwd[0][2]~2_combout\ & ((!\code~combout\(3)))) # (!\pwd[0][2]~2_combout\ & (\pwd[0][3]~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0faa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwd[0][3]~regout\,
	datac => \code~combout\(3),
	datad => \pwd[0][2]~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwd[0][3]~regout\);

-- Location: LC_X2_Y2_N5
\pwd[0][2]\ : maxii_lcell
-- Equation(s):
-- \us~2\ = (\code~combout\(3) & (!\pwd[0][3]~regout\ & (\code~combout\(2) $ (!pwd[0][2])))) # (!\code~combout\(3) & (\pwd[0][3]~regout\ & (\code~combout\(2) $ (!pwd[0][2]))))
-- \pwd[0][2]~regout\ = DFFEAS(\us~2\, GLOBAL(\clk~combout\), VCC, , \pwd[0][2]~2_combout\, \code~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4182",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \code~combout\(3),
	datab => \code~combout\(2),
	datac => \code~combout\(2),
	datad => \pwd[0][3]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \pwd[0][2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \us~2\,
	regout => \pwd[0][2]~regout\);

-- Location: LC_X3_Y3_N6
\us~0\ : maxii_lcell
-- Equation(s):
-- \us~0_combout\ = ((!\mode~combout\(1) & (\rst~combout\ & \mode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datac => \rst~combout\,
	datad => \mode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \us~0_combout\);

-- Location: LC_X2_Y3_N1
\err~0\ : maxii_lcell
-- Equation(s):
-- \err~0_combout\ = (state(2) & (((!state(0)) # (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(1),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err~0_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\code[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_code(1),
	combout => \code~combout\(1));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\code[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_code(0),
	combout => \code~combout\(0));

-- Location: LC_X2_Y2_N9
\Equal5~0\ : maxii_lcell
-- Equation(s):
-- \Equal5~0_combout\ = (\code~combout\(3) & (!\code~combout\(2) & (!\code~combout\(1) & !\code~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(3),
	datab => \code~combout\(2),
	datac => \code~combout\(1),
	datad => \code~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~0_combout\);

-- Location: LC_X2_Y2_N7
\pwd[0][0]\ : maxii_lcell
-- Equation(s):
-- \pwd[0][0]~regout\ = DFFEAS((((\code~combout\(0)))), GLOBAL(\clk~combout\), VCC, , \pwd[0][2]~2_combout\, , , , )

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
	datad => \code~combout\(0),
	aclr => GND,
	ena => \pwd[0][2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwd[0][0]~regout\);

-- Location: LC_X2_Y2_N0
\pwd[0][1]\ : maxii_lcell
-- Equation(s):
-- \us~1\ = (\code~combout\(1) & (pwd[0][1] & (\pwd[0][0]~regout\ $ (!\code~combout\(0))))) # (!\code~combout\(1) & (!pwd[0][1] & (\pwd[0][0]~regout\ $ (!\code~combout\(0)))))
-- \pwd[0][1]~regout\ = DFFEAS(\us~1\, GLOBAL(\clk~combout\), VCC, , \pwd[0][2]~2_combout\, \code~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \code~combout\(1),
	datab => \pwd[0][0]~regout\,
	datac => \code~combout\(1),
	datad => \code~combout\(0),
	aclr => GND,
	sload => VCC,
	ena => \pwd[0][2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \us~1\,
	regout => \pwd[0][1]~regout\);

-- Location: LC_X2_Y2_N2
\process_0~7\ : maxii_lcell
-- Equation(s):
-- \process_0~7_combout\ = (\Equal5~0_combout\) # ((!\alarm~reg0_regout\ & (\us~2\ & \us~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \alarm~reg0_regout\,
	datac => \us~2\,
	datad => \us~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~7_combout\);

-- Location: LC_X3_Y3_N4
\alarm~1\ : maxii_lcell
-- Equation(s):
-- \alarm~1_combout\ = (\err~0_combout\ & (((!\process_0~7_combout\ & \ad~0_combout\)) # (!\process_0~6_combout\))) # (!\err~0_combout\ & (!\process_0~7_combout\ & ((\ad~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \err~0_combout\,
	datab => \process_0~7_combout\,
	datac => \process_0~6_combout\,
	datad => \ad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alarm~1_combout\);

-- Location: LC_X3_Y3_N2
\Mux18~1\ : maxii_lcell
-- Equation(s):
-- \Mux18~1_combout\ = (!state(2) & (((\process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datad => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~1_combout\);

-- Location: LC_X3_Y3_N3
\pwd[2][2]~3\ : maxii_lcell
-- Equation(s):
-- \pwd[2][2]~3_combout\ = (!state(0) & (\rst~combout\ & (state(1) & \Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \rst~combout\,
	datac => state(1),
	datad => \Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwd[2][2]~3_combout\);

-- Location: LC_X2_Y1_N4
\pwd[2][0]\ : maxii_lcell
-- Equation(s):
-- \pwd[2][0]~regout\ = DFFEAS((((\code~combout\(0)))), GLOBAL(\clk~combout\), VCC, , \pwd[2][2]~3_combout\, , , , )

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
	datad => \code~combout\(0),
	aclr => GND,
	ena => \pwd[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwd[2][0]~regout\);

-- Location: LC_X3_Y1_N7
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((state(1) $ (state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X3_Y3_N0
\pwd[1][2]~1\ : maxii_lcell
-- Equation(s):
-- \pwd[1][2]~1_combout\ = (state(0) & (\rst~combout\ & (!state(1) & \Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \rst~combout\,
	datac => state(1),
	datad => \Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwd[1][2]~1_combout\);

-- Location: LC_X3_Y1_N3
\pwd[1][0]\ : maxii_lcell
-- Equation(s):
-- \Mux23~0\ = (state(0) & (((\pwd[0][0]~regout\)) # (!state(1)))) # (!state(0) & (!state(1) & (pwd[1][0])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba32",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(0),
	datab => state(1),
	datac => \code~combout\(0),
	datad => \pwd[0][0]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \pwd[1][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux23~0\,
	regout => \pwd[1][0]~regout\);

-- Location: LC_X3_Y3_N5
\pwd[3][2]~0\ : maxii_lcell
-- Equation(s):
-- \pwd[3][2]~0_combout\ = (state(0) & (\rst~combout\ & (state(1) & \Mux18~1_combout\)))

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
	dataa => state(0),
	datab => \rst~combout\,
	datac => state(1),
	datad => \Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwd[3][2]~0_combout\);

-- Location: LC_X3_Y1_N4
\pwd[3][0]\ : maxii_lcell
-- Equation(s):
-- \Mux23~1\ = (\Add0~0_combout\ & ((\Mux23~0\ & (\pwd[2][0]~regout\)) # (!\Mux23~0\ & ((pwd[3][0]))))) # (!\Add0~0_combout\ & (((\Mux23~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwd[2][0]~regout\,
	datab => \Add0~0_combout\,
	datac => \code~combout\(0),
	datad => \Mux23~0\,
	aclr => GND,
	sload => VCC,
	ena => \pwd[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux23~1\,
	regout => \pwd[3][0]~regout\);

-- Location: LC_X2_Y1_N1
\pwd[2][1]\ : maxii_lcell
-- Equation(s):
-- \pwd[2][1]~regout\ = DFFEAS((((\code~combout\(1)))), GLOBAL(\clk~combout\), VCC, , \pwd[2][2]~3_combout\, , , , )

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
	datad => \code~combout\(1),
	aclr => GND,
	ena => \pwd[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwd[2][1]~regout\);

-- Location: LC_X3_Y1_N2
\pwd[1][1]\ : maxii_lcell
-- Equation(s):
-- \Mux22~0\ = (state(0) & (((\pwd[0][1]~regout\)) # (!state(1)))) # (!state(0) & (!state(1) & (pwd[1][1])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba32",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(0),
	datab => state(1),
	datac => \code~combout\(1),
	datad => \pwd[0][1]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \pwd[1][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux22~0\,
	regout => \pwd[1][1]~regout\);

-- Location: LC_X3_Y1_N5
\pwd[3][1]\ : maxii_lcell
-- Equation(s):
-- \Mux22~1\ = (\Add0~0_combout\ & ((\Mux22~0\ & (\pwd[2][1]~regout\)) # (!\Mux22~0\ & ((pwd[3][1]))))) # (!\Add0~0_combout\ & (((\Mux22~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwd[2][1]~regout\,
	datab => \Add0~0_combout\,
	datac => \code~combout\(1),
	datad => \Mux22~0\,
	aclr => GND,
	sload => VCC,
	ena => \pwd[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux22~1\,
	regout => \pwd[3][1]~regout\);

-- Location: LC_X3_Y1_N6
\process_0~2\ : maxii_lcell
-- Equation(s):
-- \process_0~2_combout\ = (\code~combout\(0) & (\Mux23~1\ & (\code~combout\(1) $ (!\Mux22~1\)))) # (!\code~combout\(0) & (!\Mux23~1\ & (\code~combout\(1) $ (!\Mux22~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(1),
	datac => \Mux23~1\,
	datad => \Mux22~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~2_combout\);

-- Location: LC_X2_Y1_N0
\pwd[2][2]\ : maxii_lcell
-- Equation(s):
-- \pwd[2][2]~regout\ = DFFEAS((((\code~combout\(2)))), GLOBAL(\clk~combout\), VCC, , \pwd[2][2]~3_combout\, , , , )

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
	datad => \code~combout\(2),
	aclr => GND,
	ena => \pwd[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwd[2][2]~regout\);

-- Location: LC_X3_Y1_N8
\pwd[1][2]\ : maxii_lcell
-- Equation(s):
-- \Mux21~0\ = (state(0) & (((\pwd[0][2]~regout\)) # (!state(1)))) # (!state(0) & (!state(1) & (pwd[1][2])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba32",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(0),
	datab => state(1),
	datac => \code~combout\(2),
	datad => \pwd[0][2]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \pwd[1][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux21~0\,
	regout => \pwd[1][2]~regout\);

-- Location: LC_X3_Y1_N9
\pwd[3][2]\ : maxii_lcell
-- Equation(s):
-- \Mux21~1\ = (\Add0~0_combout\ & ((\Mux21~0\ & (\pwd[2][2]~regout\)) # (!\Mux21~0\ & ((pwd[3][2]))))) # (!\Add0~0_combout\ & (((\Mux21~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwd[2][2]~regout\,
	datab => \Add0~0_combout\,
	datac => \code~combout\(2),
	datad => \Mux21~0\,
	aclr => GND,
	sload => VCC,
	ena => \pwd[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux21~1\,
	regout => \pwd[3][2]~regout\);

-- Location: LC_X3_Y2_N3
\pwd[2][3]\ : maxii_lcell
-- Equation(s):
-- \pwd[2][3]~regout\ = DFFEAS(((\pwd[2][2]~3_combout\ & ((!\code~combout\(3)))) # (!\pwd[2][2]~3_combout\ & (\pwd[2][3]~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0faa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwd[2][3]~regout\,
	datac => \code~combout\(3),
	datad => \pwd[2][2]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwd[2][3]~regout\);

-- Location: LC_X3_Y2_N6
\pwd[3][3]\ : maxii_lcell
-- Equation(s):
-- \pwd[3][3]~regout\ = DFFEAS(((\pwd[3][2]~0_combout\ & (!\code~combout\(3))) # (!\pwd[3][2]~0_combout\ & ((\pwd[3][3]~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \code~combout\(3),
	datac => \pwd[3][3]~regout\,
	datad => \pwd[3][2]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwd[3][3]~regout\);

-- Location: LC_X2_Y1_N9
\pwd[1][3]\ : maxii_lcell
-- Equation(s):
-- \pwd[1][3]~regout\ = DFFEAS(((\pwd[1][2]~1_combout\ & ((!\code~combout\(3)))) # (!\pwd[1][2]~1_combout\ & (\pwd[1][3]~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwd[1][3]~regout\,
	datac => \code~combout\(3),
	datad => \pwd[1][2]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwd[1][3]~regout\);

-- Location: LC_X3_Y1_N1
\Mux20~0\ : maxii_lcell
-- Equation(s):
-- \Mux20~0_combout\ = (state(0) & (((!\pwd[0][3]~regout\) # (!state(1))))) # (!state(0) & (!\pwd[1][3]~regout\ & (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0bab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \pwd[1][3]~regout\,
	datac => state(1),
	datad => \pwd[0][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux20~0_combout\);

-- Location: LC_X3_Y1_N0
\Mux20~1\ : maxii_lcell
-- Equation(s):
-- \Mux20~1_combout\ = (\Add0~0_combout\ & ((\Mux20~0_combout\ & (!\pwd[2][3]~regout\)) # (!\Mux20~0_combout\ & ((!\pwd[3][3]~regout\))))) # (!\Add0~0_combout\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwd[2][3]~regout\,
	datab => \pwd[3][3]~regout\,
	datac => \Add0~0_combout\,
	datad => \Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux20~1_combout\);

-- Location: LC_X4_Y1_N8
\process_0~3\ : maxii_lcell
-- Equation(s):
-- \process_0~3_combout\ = (\code~combout\(2) & (\Mux21~1\ & (\code~combout\(3) $ (!\Mux20~1_combout\)))) # (!\code~combout\(2) & (!\Mux21~1\ & (\code~combout\(3) $ (!\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(2),
	datab => \code~combout\(3),
	datac => \Mux21~1\,
	datad => \Mux20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~3_combout\);

-- Location: LC_X4_Y1_N1
\process_0~4\ : maxii_lcell
-- Equation(s):
-- \process_0~4_combout\ = (\us~regout\ & (((\process_0~2_combout\ & \process_0~3_combout\))))

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
	dataa => \us~regout\,
	datac => \process_0~2_combout\,
	datad => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~4_combout\);

-- Location: LC_X3_Y2_N4
\ad~1\ : maxii_lcell
-- Equation(s):
-- \ad~1_combout\ = (((!state(0) & !state(1))))

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
	datac => state(0),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad~1_combout\);

-- Location: LC_X3_Y2_N5
\us~6\ : maxii_lcell
-- Equation(s):
-- \us~6_combout\ = (\us~0_combout\ & ((\err~0_combout\) # ((\ad~1_combout\ & \process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad~1_combout\,
	datab => \process_0~7_combout\,
	datac => \err~0_combout\,
	datad => \us~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \us~6_combout\);

-- Location: LC_X3_Y2_N1
ad : maxii_lcell
-- Equation(s):
-- \ad~regout\ = DFFEAS((\ad~0_combout\ & (((\Equal5~0_combout\)))) # (!\ad~0_combout\ & (\ad~regout\ & ((\Equal5~0_combout\) # (!\process_0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \us~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~4_combout\,
	datab => \ad~regout\,
	datac => \Equal5~0_combout\,
	datad => \ad~0_combout\,
	aclr => GND,
	ena => \us~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad~regout\);

-- Location: LC_X3_Y2_N0
\process_0~5\ : maxii_lcell
-- Equation(s):
-- \process_0~5_combout\ = (((\Equal5~0_combout\ & \ad~regout\)))

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
	datac => \Equal5~0_combout\,
	datad => \ad~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~5_combout\);

-- Location: LC_X4_Y1_N6
\unlock~3\ : maxii_lcell
-- Equation(s):
-- \unlock~3_combout\ = (state(2) & (!state(0) & ((\process_0~5_combout\) # (\process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \process_0~5_combout\,
	datac => state(0),
	datad => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unlock~3_combout\);

-- Location: LC_X3_Y3_N8
\alarm~0\ : maxii_lcell
-- Equation(s):
-- \alarm~0_combout\ = (\alarm~reg0_regout\ & (((!\unlock~3_combout\) # (!state(1))) # (!\us~0_combout\)))

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
	dataa => \us~0_combout\,
	datab => \alarm~reg0_regout\,
	datac => state(1),
	datad => \unlock~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alarm~0_combout\);

-- Location: LC_X3_Y3_N9
\alarm~reg0\ : maxii_lcell
-- Equation(s):
-- \alarm~reg0_regout\ = DFFEAS((\alarm~0_combout\) # ((\us~0_combout\ & (cnt(1) & \alarm~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \us~0_combout\,
	datab => cnt(1),
	datac => \alarm~1_combout\,
	datad => \alarm~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alarm~reg0_regout\);

-- Location: LC_X2_Y2_N1
\us~3\ : maxii_lcell
-- Equation(s):
-- \us~3_combout\ = (\us~2\ & (!\alarm~reg0_regout\ & (\us~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \us~2\,
	datab => \alarm~reg0_regout\,
	datac => \us~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \us~3_combout\);

-- Location: LC_X4_Y1_N0
\us~4\ : maxii_lcell
-- Equation(s):
-- \us~4_combout\ = (((\process_0~2_combout\ & \process_0~3_combout\)) # (!\Equal5~0_combout\)) # (!\ad~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f777",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad~regout\,
	datab => \Equal5~0_combout\,
	datac => \process_0~2_combout\,
	datad => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \us~4_combout\);

-- Location: LC_X4_Y1_N5
us : maxii_lcell
-- Equation(s):
-- \us~regout\ = DFFEAS((\ad~0_combout\ & (\us~3_combout\)) # (!\ad~0_combout\ & (((\us~4_combout\ & \us~regout\)))), GLOBAL(\clk~combout\), VCC, , \us~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \us~3_combout\,
	datab => \us~4_combout\,
	datac => \us~regout\,
	datad => \ad~0_combout\,
	aclr => GND,
	ena => \us~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \us~regout\);

-- Location: LC_X3_Y3_N7
\process_0~6\ : maxii_lcell
-- Equation(s):
-- \process_0~6_combout\ = (\process_0~5_combout\) # ((\us~regout\ & (\process_0~2_combout\ & \process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \us~regout\,
	datab => \process_0~5_combout\,
	datac => \process_0~2_combout\,
	datad => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~6_combout\);

-- Location: LC_X3_Y2_N7
\cnt[0]~1\ : maxii_lcell
-- Equation(s):
-- \cnt[0]~1_combout\ = (state(2) & (state(1) & (!state(0)))) # (!state(2) & (!state(1) & ((state(0)) # (\process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1918",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => state(0),
	datad => \process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt[0]~1_combout\);

-- Location: LC_X4_Y1_N2
\Mux28~0\ : maxii_lcell
-- Equation(s):
-- \Mux28~0_combout\ = (state(2) & ((\process_0~4_combout\) # ((\Equal5~0_combout\ & \ad~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \Equal5~0_combout\,
	datac => \ad~regout\,
	datad => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux28~0_combout\);

-- Location: LC_X4_Y1_N3
\cnt[0]~2\ : maxii_lcell
-- Equation(s):
-- \cnt[0]~2_combout\ = (\us~0_combout\ & ((state(1) & (\cnt[0]~1_combout\)) # (!state(1) & (!\cnt[0]~1_combout\ & !\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8082",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \us~0_combout\,
	datab => state(1),
	datac => \cnt[0]~1_combout\,
	datad => \Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt[0]~2_combout\);

-- Location: LC_X4_Y1_N9
\cnt[0]\ : maxii_lcell
-- Equation(s):
-- cnt(0) = DFFEAS((!cnt(0) & (!cnt(1) & ((!\process_0~6_combout\) # (!state(2))))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0103",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datab => cnt(0),
	datac => cnt(1),
	datad => \process_0~6_combout\,
	aclr => GND,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LC_X4_Y1_N7
\cnt[1]\ : maxii_lcell
-- Equation(s):
-- cnt(1) = DFFEAS((cnt(0) & (!cnt(1) & ((!\process_0~6_combout\) # (!state(2))))), GLOBAL(\clk~combout\), VCC, , \cnt[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "040c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datab => cnt(0),
	datac => cnt(1),
	datad => \process_0~6_combout\,
	aclr => GND,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LC_X4_Y1_N4
\process_0~0\ : maxii_lcell
-- Equation(s):
-- \process_0~0_combout\ = (((!cnt(1) & !cnt(0))))

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
	datac => cnt(1),
	datad => cnt(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~0_combout\);

-- Location: LC_X3_Y3_N1
\process_0~1\ : maxii_lcell
-- Equation(s):
-- \process_0~1_combout\ = (!\mode~combout\(1) & (!\mode~combout\(0) & (\process_0~0_combout\ & !\alarm~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \process_0~0_combout\,
	datad => \alarm~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~1_combout\);

-- Location: LC_X2_Y1_N7
\Mux18~0\ : maxii_lcell
-- Equation(s):
-- \Mux18~0_combout\ = (state(2) & (!\mode~combout\(1) & ((\mode~combout\(0))))) # (!state(2) & ((\process_0~1_combout\) # ((!\mode~combout\(1) & \mode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \mode~combout\(1),
	datac => \process_0~1_combout\,
	datad => \mode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~0_combout\);

-- Location: LC_X2_Y3_N6
\state[0]~5\ : maxii_lcell
-- Equation(s):
-- \state[0]~5_combout\ = (state(0) & ((state(1)) # ((!state(2) & !\process_0~1_combout\)))) # (!state(0) & (((\process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state[0]~5_combout\);

-- Location: LC_X2_Y1_N5
\state[0]\ : maxii_lcell
-- Equation(s):
-- state(0) = DFFEAS((\Mux18~0_combout\ & ((\state[0]~5_combout\) # ((\Mux28~0_combout\ & !state(0))))) # (!\Mux18~0_combout\ & (((state(0))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa58",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux18~0_combout\,
	datab => \Mux28~0_combout\,
	datac => state(0),
	datad => \state[0]~5_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(0));

-- Location: LC_X2_Y2_N6
\state~7\ : maxii_lcell
-- Equation(s):
-- \state~7_combout\ = (\Equal2~0_combout\ & (state(2) & (state(1) $ (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => state(1),
	datac => state(2),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state~7_combout\);

-- Location: LC_X2_Y1_N6
\state[1]\ : maxii_lcell
-- Equation(s):
-- state(1) = DFFEAS((\state~7_combout\ & (((\process_0~6_combout\)))) # (!\state~7_combout\ & ((\unlock~2_combout\) # ((state(1))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe32",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \unlock~2_combout\,
	datab => \state~7_combout\,
	datac => state(1),
	datad => \process_0~6_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(1));

-- Location: LC_X2_Y3_N0
\Mux16~0\ : maxii_lcell
-- Equation(s):
-- \Mux16~0_combout\ = (state(2)) # (((state(1) & state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(1),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux16~0_combout\);

-- Location: LC_X2_Y3_N3
\Mux26~0\ : maxii_lcell
-- Equation(s):
-- \Mux26~0_combout\ = ((\process_0~6_combout\) # ((state(0) & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(1),
	datad => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~0_combout\);

-- Location: LC_X2_Y3_N4
\Mux26~1\ : maxii_lcell
-- Equation(s):
-- \Mux26~1_combout\ = (state(2) & (((\Mux26~0_combout\)))) # (!state(2) & (\process_0~7_combout\ & (\ad~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~7_combout\,
	datab => \ad~1_combout\,
	datac => state(2),
	datad => \Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~1_combout\);

-- Location: LC_X2_Y3_N5
\state[2]\ : maxii_lcell
-- Equation(s):
-- state(2) = DFFEAS((\Equal2~0_combout\ & (((\Mux26~1_combout\)))) # (!\Equal2~0_combout\ & (state(2))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , \Mux16~0_combout\, , , \process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datab => \Equal2~0_combout\,
	datac => \Mux16~0_combout\,
	datad => \Mux26~1_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(2));

-- Location: LC_X2_Y1_N8
\unlock~2\ : maxii_lcell
-- Equation(s):
-- \unlock~2_combout\ = (!state(2) & (((\process_0~1_combout\ & state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => \process_0~1_combout\,
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unlock~2_combout\);

-- Location: LC_X2_Y1_N2
\unlock~5\ : maxii_lcell
-- Equation(s):
-- \unlock~5_combout\ = (!\mode~combout\(1) & (\mode~combout\(0) & (!\process_0~1_combout\ & \unlock~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \process_0~1_combout\,
	datad => \unlock~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unlock~5_combout\);

-- Location: LC_X2_Y1_N3
\unlock~reg0\ : maxii_lcell
-- Equation(s):
-- \unlock~reg0_regout\ = DFFEAS((\unlock~reg0_regout\) # ((state(1) & ((\unlock~2_combout\) # (\unlock~5_combout\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \unlock~2_combout\,
	datab => state(1),
	datac => \unlock~reg0_regout\,
	datad => \unlock~5_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unlock~reg0_regout\);

-- Location: LC_X2_Y3_N9
\err~1\ : maxii_lcell
-- Equation(s):
-- \err~1_combout\ = (\Equal2~0_combout\ & ((state(1) & (!state(0) & state(2))) # (!state(1) & ((state(2)) # (!state(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err~1_combout\);

-- Location: LC_X2_Y3_N7
\err~2\ : maxii_lcell
-- Equation(s):
-- \err~2_combout\ = (\err~1_combout\ & (\err~0_combout\ & ((\err~reg0_regout\) # (!\process_0~6_combout\)))) # (!\err~1_combout\ & (\err~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \err~reg0_regout\,
	datab => \err~1_combout\,
	datac => \err~0_combout\,
	datad => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err~2_combout\);

-- Location: LC_X2_Y3_N8
\err~reg0\ : maxii_lcell
-- Equation(s):
-- \err~reg0_regout\ = DFFEAS((\err~2_combout\) # ((!\process_0~7_combout\ & (\err~1_combout\ & !state(2)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~7_combout\,
	datab => \err~1_combout\,
	datac => state(2),
	datad => \err~2_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \err~reg0_regout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\unlock~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \unlock~reg0_regout\,
	oe => VCC,
	padio => ww_unlock);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alarm~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alarm~reg0_regout\,
	oe => VCC,
	padio => ww_alarm);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\err~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \err~reg0_regout\,
	oe => VCC,
	padio => ww_err);
END structure;


