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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/12/2023 14:56:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Stopwatch
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Stopwatch_vhd_vec_tst IS
END Stopwatch_vhd_vec_tst;
ARCHITECTURE Stopwatch_arch OF Stopwatch_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL H : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL L : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL pau : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT Stopwatch
	PORT (
	clk : IN STD_LOGIC;
	H : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	L : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	pau : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Stopwatch
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	H => H,
	L => L,
	pau => pau,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- pau
t_prcs_pau: PROCESS
BEGIN
	pau <= '0';
WAIT;
END PROCESS t_prcs_pau;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END Stopwatch_arch;
