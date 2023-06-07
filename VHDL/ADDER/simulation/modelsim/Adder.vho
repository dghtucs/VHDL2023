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

-- DATE "05/09/2023 23:52:32"

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

ENTITY 	Adder IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	rst : IN std_logic;
	cin : IN std_logic;
	f : BUFFER std_logic_vector(3 DOWNTO 0);
	mode : BUFFER std_logic_vector(1 DOWNTO 0);
	cout : BUFFER std_logic
	);
END Adder;

-- Design Ports Information


ARCHITECTURE structure OF Adder IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_f : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \fAdder3|Add0~40\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \fAdder1|fa0|ha2|f~0_combout\ : std_logic;
SIGNAL \fAdder3|Add0~42_cout0\ : std_logic;
SIGNAL \fAdder3|Add0~42COUT1_46\ : std_logic;
SIGNAL \fAdder3|Add0~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \fAdder3|Add0~5_combout\ : std_logic;
SIGNAL \fAdder2|fa1|ha1|f~0_combout\ : std_logic;
SIGNAL \fAdder2|fa1|ha2|f~4_combout\ : std_logic;
SIGNAL \fAdder3|Add0~2\ : std_logic;
SIGNAL \fAdder3|Add0~2COUT1_47\ : std_logic;
SIGNAL \fAdder3|Add0~6_combout\ : std_logic;
SIGNAL \fAdder3|Add0~11_combout\ : std_logic;
SIGNAL \fAdder3|Add0~15_combout\ : std_logic;
SIGNAL \fAdder2|ad|c[0]~0_combout\ : std_logic;
SIGNAL \fAdder1|fa1|cout~0_combout\ : std_logic;
SIGNAL \fAdder3|Add0~16_combout\ : std_logic;
SIGNAL \fAdder3|Add0~8\ : std_logic;
SIGNAL \fAdder3|Add0~8COUT1_48\ : std_logic;
SIGNAL \fAdder3|Add0~17_combout\ : std_logic;
SIGNAL \fAdder3|Add0~12_combout\ : std_logic;
SIGNAL \fAdder3|Add0~13_combout\ : std_logic;
SIGNAL \fAdder2|fa2|ha1|f~combout\ : std_logic;
SIGNAL \fAdder2|ad|c~1_combout\ : std_logic;
SIGNAL \fAdder3|Add0~14_combout\ : std_logic;
SIGNAL \fAdder3|Add0~22_combout\ : std_logic;
SIGNAL \fAdder1|fa2|cout~0_combout\ : std_logic;
SIGNAL \fAdder3|Add0~19\ : std_logic;
SIGNAL \fAdder3|Add0~23_combout\ : std_logic;
SIGNAL \fAdder3|Add0~28_combout\ : std_logic;
SIGNAL \fAdder2|ad|c~2_combout\ : std_logic;
SIGNAL \fAdder2|fa3|ha1|f~0_combout\ : std_logic;
SIGNAL \fAdder2|fa3|ha2|f~combout\ : std_logic;
SIGNAL \fAdder3|Add0~29_combout\ : std_logic;
SIGNAL \fAdder3|Add0~30_combout\ : std_logic;
SIGNAL \fAdder1|fa1|cout~1_combout\ : std_logic;
SIGNAL \fAdder3|Add0~37_combout\ : std_logic;
SIGNAL \fAdder3|Add0~38_combout\ : std_logic;
SIGNAL \fAdder3|Add0~25\ : std_logic;
SIGNAL \fAdder3|Add0~25COUT1_49\ : std_logic;
SIGNAL \fAdder3|Add0~31_combout\ : std_logic;
SIGNAL \fAdder2|ad|c~3_combout\ : std_logic;
SIGNAL \fAdder3|Add0~36_combout\ : std_logic;
SIGNAL \fAdder3|Add0~39_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL imode : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_rst <= rst;
ww_cin <= cin;
f <= ww_f;
mode <= ww_mode;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LC_X2_Y3_N8
\fAdder1|fa0|ha2|f~0\ : maxii_lcell
-- Equation(s):
-- \fAdder1|fa0|ha2|f~0_combout\ = (\cin~combout\ $ (\a~combout\(0) $ (\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin~combout\,
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder1|fa0|ha2|f~0_combout\);

-- Location: LC_X2_Y3_N1
\fAdder3|Add0~42\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~42_cout0\ = CARRY(((\cin~combout\)))
-- \fAdder3|Add0~42COUT1_46\ = CARRY(((\cin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~40\,
	cout0 => \fAdder3|Add0~42_cout0\,
	cout1 => \fAdder3|Add0~42COUT1_46\);

-- Location: LC_X2_Y3_N2
\fAdder3|Add0~0\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~0_combout\ = \b~combout\(0) $ (\a~combout\(0) $ ((\fAdder3|Add0~42_cout0\)))
-- \fAdder3|Add0~2\ = CARRY((\b~combout\(0) & (!\a~combout\(0) & !\fAdder3|Add0~42_cout0\)) # (!\b~combout\(0) & ((!\fAdder3|Add0~42_cout0\) # (!\a~combout\(0)))))
-- \fAdder3|Add0~2COUT1_47\ = CARRY((\b~combout\(0) & (!\a~combout\(0) & !\fAdder3|Add0~42COUT1_46\)) # (!\b~combout\(0) & ((!\fAdder3|Add0~42COUT1_46\) # (!\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	cin0 => \fAdder3|Add0~42_cout0\,
	cin1 => \fAdder3|Add0~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~0_combout\,
	cout0 => \fAdder3|Add0~2\,
	cout1 => \fAdder3|Add0~2COUT1_47\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X3_Y3_N3
\imode[0]\ : maxii_lcell
-- Equation(s):
-- imode(0) = DFFEAS((((!imode(0)))), GLOBAL(\rst~combout\), VCC, , , , , , )

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
	clk => \rst~combout\,
	datad => imode(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => imode(0));

-- Location: LC_X3_Y3_N0
\imode[1]\ : maxii_lcell
-- Equation(s):
-- imode(1) = DFFEAS(((imode(1) $ (imode(0)))), GLOBAL(\rst~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \rst~combout\,
	datac => imode(1),
	datad => imode(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => imode(1));

-- Location: LC_X2_Y3_N7
\fAdder3|Add0~5\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~5_combout\ = (imode(1) & (((\fAdder3|Add0~0_combout\)))) # (!imode(1) & (\fAdder1|fa0|ha2|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder1|fa0|ha2|f~0_combout\,
	datab => \fAdder3|Add0~0_combout\,
	datac => imode(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~5_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X2_Y4_N8
\fAdder2|fa1|ha1|f~0\ : maxii_lcell
-- Equation(s):
-- \fAdder2|fa1|ha1|f~0_combout\ = ((\b~combout\(1) $ (\a~combout\(1))))

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
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder2|fa1|ha1|f~0_combout\);

-- Location: LC_X2_Y4_N2
\fAdder2|fa1|ha2|f~4\ : maxii_lcell
-- Equation(s):
-- \fAdder2|fa1|ha2|f~4_combout\ = \fAdder2|fa1|ha1|f~0_combout\ $ (((\cin~combout\ & ((\a~combout\(0)) # (\b~combout\(0)))) # (!\cin~combout\ & (\a~combout\(0) & \b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "566a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder2|fa1|ha1|f~0_combout\,
	datab => \cin~combout\,
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder2|fa1|ha2|f~4_combout\);

-- Location: LC_X2_Y3_N3
\fAdder3|Add0~6\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~6_combout\ = \a~combout\(1) $ (\b~combout\(1) $ ((!\fAdder3|Add0~2\)))
-- \fAdder3|Add0~8\ = CARRY((\a~combout\(1) & ((\b~combout\(1)) # (!\fAdder3|Add0~2\))) # (!\a~combout\(1) & (\b~combout\(1) & !\fAdder3|Add0~2\)))
-- \fAdder3|Add0~8COUT1_48\ = CARRY((\a~combout\(1) & ((\b~combout\(1)) # (!\fAdder3|Add0~2COUT1_47\))) # (!\a~combout\(1) & (\b~combout\(1) & !\fAdder3|Add0~2COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(1),
	cin0 => \fAdder3|Add0~2\,
	cin1 => \fAdder3|Add0~2COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~6_combout\,
	cout0 => \fAdder3|Add0~8\,
	cout1 => \fAdder3|Add0~8COUT1_48\);

-- Location: LC_X2_Y3_N0
\fAdder3|Add0~11\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~11_combout\ = (imode(1) & (((\fAdder3|Add0~6_combout\)))) # (!imode(1) & (((\fAdder2|fa1|ha2|f~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => imode(1),
	datac => \fAdder2|fa1|ha2|f~4_combout\,
	datad => \fAdder3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~11_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X2_Y2_N1
\fAdder3|Add0~15\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~15_combout\ = (((!imode(0) & !imode(1))))

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
	datac => imode(0),
	datad => imode(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~15_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X2_Y4_N9
\fAdder2|ad|c[0]~0\ : maxii_lcell
-- Equation(s):
-- \fAdder2|ad|c[0]~0_combout\ = (\a~combout\(0) & ((\b~combout\(0)) # ((\cin~combout\)))) # (!\a~combout\(0) & (\b~combout\(0) & (\cin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder2|ad|c[0]~0_combout\);

-- Location: LC_X2_Y4_N6
\fAdder1|fa1|cout~0\ : maxii_lcell
-- Equation(s):
-- \fAdder1|fa1|cout~0_combout\ = ((\a~combout\(1) & ((\b~combout\(1)) # (\fAdder2|ad|c[0]~0_combout\))) # (!\a~combout\(1) & (\b~combout\(1) & \fAdder2|ad|c[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	datad => \fAdder2|ad|c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder1|fa1|cout~0_combout\);

-- Location: LC_X2_Y2_N0
\fAdder3|Add0~16\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~16_combout\ = (\fAdder3|Add0~15_combout\ & (\a~combout\(2) $ (\b~combout\(2) $ (\fAdder1|fa1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8448",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \fAdder3|Add0~15_combout\,
	datac => \b~combout\(2),
	datad => \fAdder1|fa1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~16_combout\);

-- Location: LC_X2_Y3_N4
\fAdder3|Add0~17\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~17_combout\ = \b~combout\(2) $ (\a~combout\(2) $ ((\fAdder3|Add0~8\)))
-- \fAdder3|Add0~19\ = CARRY((\b~combout\(2) & (!\a~combout\(2) & !\fAdder3|Add0~8COUT1_48\)) # (!\b~combout\(2) & ((!\fAdder3|Add0~8COUT1_48\) # (!\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(2),
	cin0 => \fAdder3|Add0~8\,
	cin1 => \fAdder3|Add0~8COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~17_combout\,
	cout => \fAdder3|Add0~19\);

-- Location: LC_X3_Y3_N4
\fAdder3|Add0~12\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~12_combout\ = ((imode(0) & (!imode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => imode(0),
	datac => imode(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~12_combout\);

-- Location: LC_X2_Y4_N0
\fAdder3|Add0~13\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~13_combout\ = ((\a~combout\(0) $ (!\b~combout\(0))) # (!\cin~combout\)) # (!\fAdder2|fa1|ha1|f~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f77f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder2|fa1|ha1|f~0_combout\,
	datab => \cin~combout\,
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~13_combout\);

-- Location: LC_X3_Y3_N7
\fAdder2|fa2|ha1|f\ : maxii_lcell
-- Equation(s):
-- \fAdder2|fa2|ha1|f~combout\ = ((\b~combout\(2) $ (\a~combout\(2))))

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
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder2|fa2|ha1|f~combout\);

-- Location: LC_X2_Y3_N9
\fAdder2|ad|c~1\ : maxii_lcell
-- Equation(s):
-- \fAdder2|ad|c~1_combout\ = (\a~combout\(1) & ((\b~combout\(1)) # ((\a~combout\(0) & \b~combout\(0))))) # (!\a~combout\(1) & (\b~combout\(1) & (\a~combout\(0) & \b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(1),
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder2|ad|c~1_combout\);

-- Location: LC_X3_Y3_N9
\fAdder3|Add0~14\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~14_combout\ = (\fAdder3|Add0~12_combout\ & (\fAdder2|fa2|ha1|f~combout\ $ (((\fAdder2|ad|c~1_combout\) # (!\fAdder3|Add0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder3|Add0~12_combout\,
	datab => \fAdder3|Add0~13_combout\,
	datac => \fAdder2|fa2|ha1|f~combout\,
	datad => \fAdder2|ad|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~14_combout\);

-- Location: LC_X2_Y2_N4
\fAdder3|Add0~22\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~22_combout\ = (\fAdder3|Add0~16_combout\) # ((\fAdder3|Add0~14_combout\) # ((imode(1) & \fAdder3|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => imode(1),
	datab => \fAdder3|Add0~16_combout\,
	datac => \fAdder3|Add0~17_combout\,
	datad => \fAdder3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~22_combout\);

-- Location: LC_X2_Y2_N8
\fAdder1|fa2|cout~0\ : maxii_lcell
-- Equation(s):
-- \fAdder1|fa2|cout~0_combout\ = ((\a~combout\(2) & ((\b~combout\(2)) # (\fAdder1|fa1|cout~0_combout\))) # (!\a~combout\(2) & (\b~combout\(2) & \fAdder1|fa1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(2),
	datac => \b~combout\(2),
	datad => \fAdder1|fa1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder1|fa2|cout~0_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X2_Y3_N5
\fAdder3|Add0~23\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~23_combout\ = \b~combout\(3) $ (\a~combout\(3) $ ((!\fAdder3|Add0~19\)))
-- \fAdder3|Add0~25\ = CARRY((\b~combout\(3) & ((\a~combout\(3)) # (!\fAdder3|Add0~19\))) # (!\b~combout\(3) & (\a~combout\(3) & !\fAdder3|Add0~19\)))
-- \fAdder3|Add0~25COUT1_49\ = CARRY((\b~combout\(3) & ((\a~combout\(3)) # (!\fAdder3|Add0~19\))) # (!\b~combout\(3) & (\a~combout\(3) & !\fAdder3|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(3),
	cin => \fAdder3|Add0~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~23_combout\,
	cout0 => \fAdder3|Add0~25\,
	cout1 => \fAdder3|Add0~25COUT1_49\);

-- Location: LC_X2_Y4_N5
\fAdder3|Add0~28\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~28_combout\ = (\fAdder2|fa1|ha1|f~0_combout\ & ((\cin~combout\ & ((\a~combout\(0)) # (\b~combout\(0)))) # (!\cin~combout\ & (\a~combout\(0) & \b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder2|fa1|ha1|f~0_combout\,
	datab => \cin~combout\,
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~28_combout\);

-- Location: LC_X3_Y3_N5
\fAdder2|ad|c~2\ : maxii_lcell
-- Equation(s):
-- \fAdder2|ad|c~2_combout\ = (\b~combout\(2) & ((\a~combout\(2)) # ((\a~combout\(1) & \b~combout\(1))))) # (!\b~combout\(2) & (\a~combout\(1) & (\b~combout\(1) & \a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(2),
	datac => \b~combout\(1),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder2|ad|c~2_combout\);

-- Location: LC_X2_Y2_N2
\fAdder2|fa3|ha1|f~0\ : maxii_lcell
-- Equation(s):
-- \fAdder2|fa3|ha1|f~0_combout\ = ((\b~combout\(3) $ (\a~combout\(3))))

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
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder2|fa3|ha1|f~0_combout\);

-- Location: LC_X3_Y3_N6
\fAdder2|fa3|ha2|f\ : maxii_lcell
-- Equation(s):
-- \fAdder2|fa3|ha2|f~combout\ = \fAdder2|fa3|ha1|f~0_combout\ $ (((\fAdder2|ad|c~2_combout\) # ((\fAdder3|Add0~28_combout\ & \fAdder2|fa2|ha1|f~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "07f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder3|Add0~28_combout\,
	datab => \fAdder2|fa2|ha1|f~combout\,
	datac => \fAdder2|ad|c~2_combout\,
	datad => \fAdder2|fa3|ha1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder2|fa3|ha2|f~combout\);

-- Location: LC_X3_Y3_N1
\fAdder3|Add0~29\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~29_combout\ = (imode(1) & (\fAdder3|Add0~23_combout\)) # (!imode(1) & (((\fAdder2|fa3|ha2|f~combout\ & imode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder3|Add0~23_combout\,
	datab => imode(1),
	datac => \fAdder2|fa3|ha2|f~combout\,
	datad => imode(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~29_combout\);

-- Location: LC_X2_Y2_N9
\fAdder3|Add0~30\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~30_combout\ = (\fAdder3|Add0~29_combout\) # ((\fAdder3|Add0~15_combout\ & (\fAdder1|fa2|cout~0_combout\ $ (\fAdder2|fa3|ha1|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder1|fa2|cout~0_combout\,
	datab => \fAdder3|Add0~15_combout\,
	datac => \fAdder3|Add0~29_combout\,
	datad => \fAdder2|fa3|ha1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~30_combout\);

-- Location: LC_X3_Y3_N8
\fAdder1|fa1|cout~1\ : maxii_lcell
-- Equation(s):
-- \fAdder1|fa1|cout~1_combout\ = (\a~combout\(1) & (((\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datac => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder1|fa1|cout~1_combout\);

-- Location: LC_X3_Y3_N2
\fAdder3|Add0~37\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~37_combout\ = (\fAdder2|fa2|ha1|f~combout\ & (\fAdder3|Add0~12_combout\ & ((\fAdder3|Add0~28_combout\) # (\fAdder1|fa1|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder3|Add0~28_combout\,
	datab => \fAdder2|fa2|ha1|f~combout\,
	datac => \fAdder3|Add0~12_combout\,
	datad => \fAdder1|fa1|cout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~37_combout\);

-- Location: LC_X2_Y2_N7
\fAdder3|Add0~38\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~38_combout\ = (\fAdder3|Add0~15_combout\ & ((\fAdder1|fa2|cout~0_combout\ & ((\a~combout\(3)) # (\b~combout\(3)))) # (!\fAdder1|fa2|cout~0_combout\ & (\a~combout\(3) & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder1|fa2|cout~0_combout\,
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	datad => \fAdder3|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~38_combout\);

-- Location: LC_X2_Y3_N6
\fAdder3|Add0~31\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~31_combout\ = ((((!\fAdder3|Add0~19\ & \fAdder3|Add0~25\) # (\fAdder3|Add0~19\ & \fAdder3|Add0~25COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \fAdder3|Add0~19\,
	cin0 => \fAdder3|Add0~25\,
	cin1 => \fAdder3|Add0~25COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~31_combout\);

-- Location: LC_X2_Y2_N3
\fAdder2|ad|c~3\ : maxii_lcell
-- Equation(s):
-- \fAdder2|ad|c~3_combout\ = (\b~combout\(3) & ((\a~combout\(3)) # ((\a~combout\(2) & \b~combout\(2))))) # (!\b~combout\(3) & (\a~combout\(2) & (\b~combout\(2) & \a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(2),
	datac => \b~combout\(2),
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder2|ad|c~3_combout\);

-- Location: LC_X2_Y2_N5
\fAdder3|Add0~36\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~36_combout\ = (imode(1) & (\fAdder3|Add0~31_combout\)) # (!imode(1) & (((imode(0) & \fAdder2|ad|c~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => imode(1),
	datab => \fAdder3|Add0~31_combout\,
	datac => imode(0),
	datad => \fAdder2|ad|c~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~36_combout\);

-- Location: LC_X2_Y2_N6
\fAdder3|Add0~39\ : maxii_lcell
-- Equation(s):
-- \fAdder3|Add0~39_combout\ = (\fAdder3|Add0~38_combout\) # ((\fAdder3|Add0~36_combout\) # ((\fAdder3|Add0~37_combout\ & \fAdder2|fa3|ha1|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fAdder3|Add0~37_combout\,
	datab => \fAdder3|Add0~38_combout\,
	datac => \fAdder3|Add0~36_combout\,
	datad => \fAdder2|fa3|ha1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fAdder3|Add0~39_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fAdder3|Add0~5_combout\,
	oe => VCC,
	padio => ww_f(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fAdder3|Add0~11_combout\,
	oe => VCC,
	padio => ww_f(1));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fAdder3|Add0~22_combout\,
	oe => VCC,
	padio => ww_f(2));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fAdder3|Add0~30_combout\,
	oe => VCC,
	padio => ww_f(3));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mode[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => imode(0),
	oe => VCC,
	padio => ww_mode(0));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mode[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => imode(1),
	oe => VCC,
	padio => ww_mode(1));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fAdder3|Add0~39_combout\,
	oe => VCC,
	padio => ww_cout);
END structure;


