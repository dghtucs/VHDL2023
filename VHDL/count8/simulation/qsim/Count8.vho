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

-- DATE "05/09/2023 21:27:07"

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

ENTITY 	Count8 IS
    PORT (
	clk : IN std_logic;
	q : OUT std_logic_vector(9 DOWNTO 0)
	);
END Count8;

-- Design Ports Information


ARCHITECTURE structure OF Count8 IS
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
SIGNAL ww_q : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \tem[1]~1\ : std_logic;
SIGNAL \tem[1]~1COUT1_20\ : std_logic;
SIGNAL \tem[2]~3\ : std_logic;
SIGNAL \tem[2]~3COUT1_21\ : std_logic;
SIGNAL \tem[3]~5\ : std_logic;
SIGNAL \tem[3]~5COUT1_22\ : std_logic;
SIGNAL \tem[4]~7\ : std_logic;
SIGNAL \tem[4]~7COUT1_23\ : std_logic;
SIGNAL \tem[5]~9\ : std_logic;
SIGNAL \tem[6]~11\ : std_logic;
SIGNAL \tem[6]~11COUT1_24\ : std_logic;
SIGNAL \tem[7]~13\ : std_logic;
SIGNAL \tem[7]~13COUT1_25\ : std_logic;
SIGNAL \tem[8]~15\ : std_logic;
SIGNAL \tem[8]~15COUT1_26\ : std_logic;
SIGNAL tem : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk <= clk;
q <= ww_q;
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

-- Location: LC_X7_Y4_N9
\tem[0]\ : maxii_lcell
-- Equation(s):
-- tem(0) = DFFEAS((((!tem(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => tem(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tem(0));

-- Location: LC_X7_Y4_N0
\tem[1]\ : maxii_lcell
-- Equation(s):
-- tem(1) = DFFEAS(tem(1) $ ((tem(0))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \tem[1]~1\ = CARRY((tem(1) & (tem(0))))
-- \tem[1]~1COUT1_20\ = CARRY((tem(1) & (tem(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => tem(1),
	datab => tem(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tem(1),
	cout0 => \tem[1]~1\,
	cout1 => \tem[1]~1COUT1_20\);

-- Location: LC_X7_Y4_N1
\tem[2]\ : maxii_lcell
-- Equation(s):
-- tem(2) = DFFEAS((tem(2) $ ((\tem[1]~1\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \tem[2]~3\ = CARRY(((!\tem[1]~1\) # (!tem(2))))
-- \tem[2]~3COUT1_21\ = CARRY(((!\tem[1]~1COUT1_20\) # (!tem(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => tem(2),
	aclr => GND,
	cin0 => \tem[1]~1\,
	cin1 => \tem[1]~1COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tem(2),
	cout0 => \tem[2]~3\,
	cout1 => \tem[2]~3COUT1_21\);

-- Location: LC_X7_Y4_N2
\tem[3]\ : maxii_lcell
-- Equation(s):
-- tem(3) = DFFEAS((tem(3) $ ((!\tem[2]~3\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \tem[3]~5\ = CARRY(((tem(3) & !\tem[2]~3\)))
-- \tem[3]~5COUT1_22\ = CARRY(((tem(3) & !\tem[2]~3COUT1_21\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => tem(3),
	aclr => GND,
	cin0 => \tem[2]~3\,
	cin1 => \tem[2]~3COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tem(3),
	cout0 => \tem[3]~5\,
	cout1 => \tem[3]~5COUT1_22\);

-- Location: LC_X7_Y4_N3
\tem[4]\ : maxii_lcell
-- Equation(s):
-- tem(4) = DFFEAS(tem(4) $ ((((\tem[3]~5\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \tem[4]~7\ = CARRY(((!\tem[3]~5\)) # (!tem(4)))
-- \tem[4]~7COUT1_23\ = CARRY(((!\tem[3]~5COUT1_22\)) # (!tem(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => tem(4),
	aclr => GND,
	cin0 => \tem[3]~5\,
	cin1 => \tem[3]~5COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tem(4),
	cout0 => \tem[4]~7\,
	cout1 => \tem[4]~7COUT1_23\);

-- Location: LC_X7_Y4_N4
\tem[5]\ : maxii_lcell
-- Equation(s):
-- tem(5) = DFFEAS((tem(5) $ ((!\tem[4]~7\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \tem[5]~9\ = CARRY(((tem(5) & !\tem[4]~7COUT1_23\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => tem(5),
	aclr => GND,
	cin0 => \tem[4]~7\,
	cin1 => \tem[4]~7COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tem(5),
	cout => \tem[5]~9\);

-- Location: LC_X7_Y4_N5
\tem[6]\ : maxii_lcell
-- Equation(s):
-- tem(6) = DFFEAS(tem(6) $ ((((\tem[5]~9\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \tem[6]~11\ = CARRY(((!\tem[5]~9\)) # (!tem(6)))
-- \tem[6]~11COUT1_24\ = CARRY(((!\tem[5]~9\)) # (!tem(6)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => tem(6),
	aclr => GND,
	cin => \tem[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tem(6),
	cout0 => \tem[6]~11\,
	cout1 => \tem[6]~11COUT1_24\);

-- Location: LC_X7_Y4_N6
\tem[7]\ : maxii_lcell
-- Equation(s):
-- tem(7) = DFFEAS((tem(7) $ ((!(!\tem[5]~9\ & \tem[6]~11\) # (\tem[5]~9\ & \tem[6]~11COUT1_24\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \tem[7]~13\ = CARRY(((tem(7) & !\tem[6]~11\)))
-- \tem[7]~13COUT1_25\ = CARRY(((tem(7) & !\tem[6]~11COUT1_24\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => tem(7),
	aclr => GND,
	cin => \tem[5]~9\,
	cin0 => \tem[6]~11\,
	cin1 => \tem[6]~11COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tem(7),
	cout0 => \tem[7]~13\,
	cout1 => \tem[7]~13COUT1_25\);

-- Location: LC_X7_Y4_N7
\tem[8]\ : maxii_lcell
-- Equation(s):
-- tem(8) = DFFEAS((tem(8) $ (((!\tem[5]~9\ & \tem[7]~13\) # (\tem[5]~9\ & \tem[7]~13COUT1_25\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \tem[8]~15\ = CARRY(((!\tem[7]~13\) # (!tem(8))))
-- \tem[8]~15COUT1_26\ = CARRY(((!\tem[7]~13COUT1_25\) # (!tem(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => tem(8),
	aclr => GND,
	cin => \tem[5]~9\,
	cin0 => \tem[7]~13\,
	cin1 => \tem[7]~13COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tem(8),
	cout0 => \tem[8]~15\,
	cout1 => \tem[8]~15COUT1_26\);

-- Location: LC_X7_Y4_N8
\tem[9]\ : maxii_lcell
-- Equation(s):
-- tem(9) = DFFEAS((((!\tem[5]~9\ & \tem[8]~15\) # (\tem[5]~9\ & \tem[8]~15COUT1_26\) $ (!tem(9)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => tem(9),
	aclr => GND,
	cin => \tem[5]~9\,
	cin0 => \tem[8]~15\,
	cin1 => \tem[8]~15COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tem(9));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tem(0),
	oe => VCC,
	padio => ww_q(0));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tem(1),
	oe => VCC,
	padio => ww_q(1));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tem(2),
	oe => VCC,
	padio => ww_q(2));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tem(3),
	oe => VCC,
	padio => ww_q(3));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tem(4),
	oe => VCC,
	padio => ww_q(4));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tem(5),
	oe => VCC,
	padio => ww_q(5));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tem(6),
	oe => VCC,
	padio => ww_q(6));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tem(7),
	oe => VCC,
	padio => ww_q(7));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tem(8),
	oe => VCC,
	padio => ww_q(8));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tem(9),
	oe => VCC,
	padio => ww_q(9));
END structure;


