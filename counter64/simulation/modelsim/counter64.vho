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

-- DATE "06/07/2023 15:34:11"

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
	reset : IN std_logic;
	enable : IN std_logic;
	count : OUT std_logic_vector(5 DOWNTO 0)
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_count : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \temp_next[0]~14_combout\ : std_logic;
SIGNAL \temp_next[0]~1\ : std_logic;
SIGNAL \temp_next[0]~1COUT1_16\ : std_logic;
SIGNAL \temp_next[1]~3\ : std_logic;
SIGNAL \temp_next[1]~3COUT1_17\ : std_logic;
SIGNAL \gen:2:U1|Q~regout\ : std_logic;
SIGNAL \temp_next[2]~5\ : std_logic;
SIGNAL \temp_next[2]~5COUT1_18\ : std_logic;
SIGNAL \gen:3:U1|Q~regout\ : std_logic;
SIGNAL \temp_next[3]~7\ : std_logic;
SIGNAL \temp_next[0]~12\ : std_logic;
SIGNAL \gen:4:U1|Q~regout\ : std_logic;
SIGNAL \temp_next[4]~9\ : std_logic;
SIGNAL \temp_next[4]~9COUT1_19\ : std_logic;
SIGNAL \gen:5:U1|Q~regout\ : std_logic;
SIGNAL \temp_next[0]~13\ : std_logic;
SIGNAL \gen:1:U1|Q~regout\ : std_logic;
SIGNAL \gen:0:U1|Q~regout\ : std_logic;
SIGNAL temp_next : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: LC_X6_Y1_N7
\temp_next[0]~14\ : maxii_lcell
-- Equation(s):
-- \temp_next[0]~14_combout\ = (\enable~combout\) # (((\reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datac => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_next[0]~14_combout\);

-- Location: LC_X5_Y1_N1
\temp_next[0]\ : maxii_lcell
-- Equation(s):
-- temp_next(0) = DFFEAS(((!\gen:0:U1|Q~regout\)), GLOBAL(\clk~combout\), VCC, , \temp_next[0]~14_combout\, , , \temp_next[0]~13\, )
-- \temp_next[0]~1\ = CARRY(((\gen:0:U1|Q~regout\)))
-- \temp_next[0]~1COUT1_16\ = CARRY(((\gen:0:U1|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \gen:0:U1|Q~regout\,
	aclr => GND,
	sclr => \temp_next[0]~13\,
	ena => \temp_next[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_next(0),
	cout0 => \temp_next[0]~1\,
	cout1 => \temp_next[0]~1COUT1_16\);

-- Location: LC_X5_Y1_N2
\temp_next[1]\ : maxii_lcell
-- Equation(s):
-- temp_next(1) = DFFEAS((\gen:1:U1|Q~regout\ $ ((\temp_next[0]~1\))), GLOBAL(\clk~combout\), VCC, , \temp_next[0]~14_combout\, , , \temp_next[0]~13\, )
-- \temp_next[1]~3\ = CARRY(((!\temp_next[0]~1\) # (!\gen:1:U1|Q~regout\)))
-- \temp_next[1]~3COUT1_17\ = CARRY(((!\temp_next[0]~1COUT1_16\) # (!\gen:1:U1|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \gen:1:U1|Q~regout\,
	aclr => GND,
	sclr => \temp_next[0]~13\,
	ena => \temp_next[0]~14_combout\,
	cin0 => \temp_next[0]~1\,
	cin1 => \temp_next[0]~1COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_next(1),
	cout0 => \temp_next[1]~3\,
	cout1 => \temp_next[1]~3COUT1_17\);

-- Location: LC_X5_Y1_N3
\temp_next[2]\ : maxii_lcell
-- Equation(s):
-- temp_next(2) = DFFEAS(\gen:2:U1|Q~regout\ $ ((((!\temp_next[1]~3\)))), GLOBAL(\clk~combout\), VCC, , \temp_next[0]~14_combout\, , , \temp_next[0]~13\, )
-- \temp_next[2]~5\ = CARRY((\gen:2:U1|Q~regout\ & ((!\temp_next[1]~3\))))
-- \temp_next[2]~5COUT1_18\ = CARRY((\gen:2:U1|Q~regout\ & ((!\temp_next[1]~3COUT1_17\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \gen:2:U1|Q~regout\,
	aclr => GND,
	sclr => \temp_next[0]~13\,
	ena => \temp_next[0]~14_combout\,
	cin0 => \temp_next[1]~3\,
	cin1 => \temp_next[1]~3COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_next(2),
	cout0 => \temp_next[2]~5\,
	cout1 => \temp_next[2]~5COUT1_18\);

-- Location: LC_X6_Y1_N1
\gen:2:U1|Q\ : maxii_lcell
-- Equation(s):
-- \gen:2:U1|Q~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , temp_next(2), , , VCC)

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
	datac => temp_next(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen:2:U1|Q~regout\);

-- Location: LC_X5_Y1_N4
\temp_next[3]\ : maxii_lcell
-- Equation(s):
-- temp_next(3) = DFFEAS((\gen:3:U1|Q~regout\ $ ((\temp_next[2]~5\))), GLOBAL(\clk~combout\), VCC, , \temp_next[0]~14_combout\, , , \temp_next[0]~13\, )
-- \temp_next[3]~7\ = CARRY(((!\temp_next[2]~5COUT1_18\) # (!\gen:3:U1|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \gen:3:U1|Q~regout\,
	aclr => GND,
	sclr => \temp_next[0]~13\,
	ena => \temp_next[0]~14_combout\,
	cin0 => \temp_next[2]~5\,
	cin1 => \temp_next[2]~5COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_next(3),
	cout => \temp_next[3]~7\);

-- Location: LC_X6_Y1_N3
\gen:3:U1|Q\ : maxii_lcell
-- Equation(s):
-- \gen:3:U1|Q~regout\ = DFFEAS((((temp_next(3)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => temp_next(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen:3:U1|Q~regout\);

-- Location: LC_X5_Y1_N5
\temp_next[4]\ : maxii_lcell
-- Equation(s):
-- temp_next(4) = DFFEAS((\gen:4:U1|Q~regout\ $ ((!\temp_next[3]~7\))), GLOBAL(\clk~combout\), VCC, , \temp_next[0]~14_combout\, , , \temp_next[0]~13\, )
-- \temp_next[4]~9\ = CARRY(((\gen:4:U1|Q~regout\ & !\temp_next[3]~7\)))
-- \temp_next[4]~9COUT1_19\ = CARRY(((\gen:4:U1|Q~regout\ & !\temp_next[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \gen:4:U1|Q~regout\,
	aclr => GND,
	sclr => \temp_next[0]~13\,
	ena => \temp_next[0]~14_combout\,
	cin => \temp_next[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_next(4),
	cout0 => \temp_next[4]~9\,
	cout1 => \temp_next[4]~9COUT1_19\);

-- Location: LC_X6_Y1_N5
\gen:0:U1|Q\ : maxii_lcell
-- Equation(s):
-- \temp_next[0]~12\ = (((!\gen:3:U1|Q~regout\) # (!B1_Q)) # (!\gen:2:U1|Q~regout\)) # (!\gen:1:U1|Q~regout\)
-- \gen:0:U1|Q~regout\ = DFFEAS(\temp_next[0]~12\, GLOBAL(\clk~combout\), VCC, , , temp_next(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \gen:1:U1|Q~regout\,
	datab => \gen:2:U1|Q~regout\,
	datac => temp_next(0),
	datad => \gen:3:U1|Q~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_next[0]~12\,
	regout => \gen:0:U1|Q~regout\);

-- Location: LC_X6_Y1_N6
\gen:4:U1|Q\ : maxii_lcell
-- Equation(s):
-- \temp_next[0]~13\ = (\reset~combout\) # ((\gen:5:U1|Q~regout\ & (B5_Q & !\temp_next[0]~12\)))
-- \gen:4:U1|Q~regout\ = DFFEAS(\temp_next[0]~13\, GLOBAL(\clk~combout\), VCC, , , temp_next(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \gen:5:U1|Q~regout\,
	datac => temp_next(4),
	datad => \temp_next[0]~12\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_next[0]~13\,
	regout => \gen:4:U1|Q~regout\);

-- Location: LC_X5_Y1_N6
\temp_next[5]\ : maxii_lcell
-- Equation(s):
-- temp_next(5) = DFFEAS((\gen:5:U1|Q~regout\ $ (((!\temp_next[3]~7\ & \temp_next[4]~9\) # (\temp_next[3]~7\ & \temp_next[4]~9COUT1_19\)))), GLOBAL(\clk~combout\), VCC, , \temp_next[0]~14_combout\, , , \temp_next[0]~13\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \gen:5:U1|Q~regout\,
	aclr => GND,
	sclr => \temp_next[0]~13\,
	ena => \temp_next[0]~14_combout\,
	cin => \temp_next[3]~7\,
	cin0 => \temp_next[4]~9\,
	cin1 => \temp_next[4]~9COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_next(5));

-- Location: LC_X6_Y1_N2
\gen:5:U1|Q\ : maxii_lcell
-- Equation(s):
-- \gen:5:U1|Q~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , temp_next(5), , , VCC)

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
	datac => temp_next(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen:5:U1|Q~regout\);

-- Location: LC_X6_Y1_N8
\gen:1:U1|Q\ : maxii_lcell
-- Equation(s):
-- \gen:1:U1|Q~regout\ = DFFEAS((((temp_next(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => temp_next(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen:1:U1|Q~regout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \gen:0:U1|Q~regout\,
	oe => VCC,
	padio => ww_count(0));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \gen:1:U1|Q~regout\,
	oe => VCC,
	padio => ww_count(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \gen:2:U1|Q~regout\,
	oe => VCC,
	padio => ww_count(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \gen:3:U1|Q~regout\,
	oe => VCC,
	padio => ww_count(3));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \gen:4:U1|Q~regout\,
	oe => VCC,
	padio => ww_count(4));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \gen:5:U1|Q~regout\,
	oe => VCC,
	padio => ww_count(5));
END structure;


