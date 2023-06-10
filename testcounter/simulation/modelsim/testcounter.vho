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

-- DATE "06/09/2023 02:28:08"

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

ENTITY 	testcounter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	Light6_high : OUT std_logic_vector(6 DOWNTO 0);
	Light6_low : OUT std_logic_vector(6 DOWNTO 0)
	);
END testcounter;

-- Design Ports Information


ARCHITECTURE structure OF testcounter IS
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
SIGNAL ww_Light6_high : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Light6_low : std_logic_vector(6 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~20\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~20\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Count[0]~1\ : std_logic;
SIGNAL \Count[0]~1COUT1_18\ : std_logic;
SIGNAL \Count[1]~3\ : std_logic;
SIGNAL \Count[1]~3COUT1_19\ : std_logic;
SIGNAL \Count[2]~5\ : std_logic;
SIGNAL \Count[2]~5COUT1_20\ : std_logic;
SIGNAL \Count[3]~7\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \Count[4]~15\ : std_logic;
SIGNAL \Count[4]~15COUT1_21\ : std_logic;
SIGNAL \Count[6]~13_combout\ : std_logic;
SIGNAL \Count[6]~8_combout\ : std_logic;
SIGNAL \Count[6]~16_combout\ : std_logic;
SIGNAL \Count[5]~12\ : std_logic;
SIGNAL \Count[5]~12COUT1_22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_24\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_33\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_29\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_31\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_32\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_33\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_29\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_31\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_32\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_28\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_29\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \D1|Mux6~0_combout\ : std_logic;
SIGNAL \D1|Mux5~0_combout\ : std_logic;
SIGNAL \D1|Mux4~0_combout\ : std_logic;
SIGNAL \D1|Mux3~0_combout\ : std_logic;
SIGNAL \D1|Mux2~0_combout\ : std_logic;
SIGNAL \D1|Mux1~0_combout\ : std_logic;
SIGNAL \D1|Mux0~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_24\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~2\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~2COUT1_26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_29\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_32\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_33\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_35\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_36\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27COUT1_37\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_38\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_39\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_40\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_41\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_42\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_43\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_44\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ : std_logic;
SIGNAL \D2|Mux6~0_combout\ : std_logic;
SIGNAL \D2|Mux5~0_combout\ : std_logic;
SIGNAL \D2|Mux4~0_combout\ : std_logic;
SIGNAL \D2|Mux3~0_combout\ : std_logic;
SIGNAL \D2|Mux2~0_combout\ : std_logic;
SIGNAL \D2|Mux1~0_combout\ : std_logic;
SIGNAL \D2|Mux0~0_combout\ : std_logic;
SIGNAL Count : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \D2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \D1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \D1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \D1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \D1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \D1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \D1|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
Light6_high <= ww_Light6_high;
Light6_low <= ww_Light6_low;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\D2|ALT_INV_Mux5~0_combout\ <= NOT \D2|Mux5~0_combout\;
\D2|ALT_INV_Mux4~0_combout\ <= NOT \D2|Mux4~0_combout\;
\D2|ALT_INV_Mux3~0_combout\ <= NOT \D2|Mux3~0_combout\;
\D2|ALT_INV_Mux2~0_combout\ <= NOT \D2|Mux2~0_combout\;
\D2|ALT_INV_Mux1~0_combout\ <= NOT \D2|Mux1~0_combout\;
\D2|ALT_INV_Mux0~0_combout\ <= NOT \D2|Mux0~0_combout\;
\D1|ALT_INV_Mux0~0_combout\ <= NOT \D1|Mux0~0_combout\;
\D1|ALT_INV_Mux1~0_combout\ <= NOT \D1|Mux1~0_combout\;
\D1|ALT_INV_Mux2~0_combout\ <= NOT \D1|Mux2~0_combout\;
\D1|ALT_INV_Mux3~0_combout\ <= NOT \D1|Mux3~0_combout\;
\D1|ALT_INV_Mux4~0_combout\ <= NOT \D1|Mux4~0_combout\;
\D1|ALT_INV_Mux5~0_combout\ <= NOT \D1|Mux5~0_combout\;

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

-- Location: LC_X4_Y3_N1
\Count[0]\ : maxii_lcell
-- Equation(s):
-- Count(0) = DFFEAS(((!Count(0))), GLOBAL(\clk~combout\), VCC, , , , , \Count[6]~16_combout\, )
-- \Count[0]~1\ = CARRY(((Count(0))))
-- \Count[0]~1COUT1_18\ = CARRY(((Count(0))))

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
	datab => Count(0),
	aclr => GND,
	sclr => \Count[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(0),
	cout0 => \Count[0]~1\,
	cout1 => \Count[0]~1COUT1_18\);

-- Location: LC_X4_Y3_N2
\Count[1]\ : maxii_lcell
-- Equation(s):
-- Count(1) = DFFEAS((Count(1) $ ((\Count[0]~1\))), GLOBAL(\clk~combout\), VCC, , , , , \Count[6]~16_combout\, )
-- \Count[1]~3\ = CARRY(((!\Count[0]~1\) # (!Count(1))))
-- \Count[1]~3COUT1_19\ = CARRY(((!\Count[0]~1COUT1_18\) # (!Count(1))))

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
	datab => Count(1),
	aclr => GND,
	sclr => \Count[6]~16_combout\,
	cin0 => \Count[0]~1\,
	cin1 => \Count[0]~1COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(1),
	cout0 => \Count[1]~3\,
	cout1 => \Count[1]~3COUT1_19\);

-- Location: LC_X4_Y3_N3
\Count[2]\ : maxii_lcell
-- Equation(s):
-- Count(2) = DFFEAS(Count(2) $ ((((!\Count[1]~3\)))), GLOBAL(\clk~combout\), VCC, , , , , \Count[6]~16_combout\, )
-- \Count[2]~5\ = CARRY((Count(2) & ((!\Count[1]~3\))))
-- \Count[2]~5COUT1_20\ = CARRY((Count(2) & ((!\Count[1]~3COUT1_19\))))

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
	dataa => Count(2),
	aclr => GND,
	sclr => \Count[6]~16_combout\,
	cin0 => \Count[1]~3\,
	cin1 => \Count[1]~3COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(2),
	cout0 => \Count[2]~5\,
	cout1 => \Count[2]~5COUT1_20\);

-- Location: LC_X4_Y3_N4
\Count[3]\ : maxii_lcell
-- Equation(s):
-- Count(3) = DFFEAS(Count(3) $ ((((\Count[2]~5\)))), GLOBAL(\clk~combout\), VCC, , , , , \Count[6]~16_combout\, )
-- \Count[3]~7\ = CARRY(((!\Count[2]~5COUT1_20\)) # (!Count(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(3),
	aclr => GND,
	sclr => \Count[6]~16_combout\,
	cin0 => \Count[2]~5\,
	cin1 => \Count[2]~5COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(3),
	cout => \Count[3]~7\);

-- Location: LC_X4_Y3_N5
\Count[4]\ : maxii_lcell
-- Equation(s):
-- Count(4) = DFFEAS(Count(4) $ ((((!\Count[3]~7\)))), GLOBAL(\clk~combout\), VCC, , , , , \Count[6]~16_combout\, )
-- \Count[4]~15\ = CARRY((Count(4) & ((!\Count[3]~7\))))
-- \Count[4]~15COUT1_21\ = CARRY((Count(4) & ((!\Count[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(4),
	aclr => GND,
	sclr => \Count[6]~16_combout\,
	cin => \Count[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(4),
	cout0 => \Count[4]~15\,
	cout1 => \Count[4]~15COUT1_21\);

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

-- Location: LC_X4_Y3_N6
\Count[5]\ : maxii_lcell
-- Equation(s):
-- Count(5) = DFFEAS((Count(5) $ (((!\Count[3]~7\ & \Count[4]~15\) # (\Count[3]~7\ & \Count[4]~15COUT1_21\)))), GLOBAL(\clk~combout\), VCC, , , , , \Count[6]~16_combout\, )
-- \Count[5]~12\ = CARRY(((!\Count[4]~15\) # (!Count(5))))
-- \Count[5]~12COUT1_22\ = CARRY(((!\Count[4]~15COUT1_21\) # (!Count(5))))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => Count(5),
	aclr => GND,
	sclr => \Count[6]~16_combout\,
	cin => \Count[3]~7\,
	cin0 => \Count[4]~15\,
	cin1 => \Count[4]~15COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(5),
	cout0 => \Count[5]~12\,
	cout1 => \Count[5]~12COUT1_22\);

-- Location: LC_X4_Y3_N0
\Count[6]~13\ : maxii_lcell
-- Equation(s):
-- \Count[6]~13_combout\ = (((Count(6)) # (!Count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => Count(6),
	datad => Count(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count[6]~13_combout\);

-- Location: LC_X4_Y3_N8
\Count[6]~8\ : maxii_lcell
-- Equation(s):
-- \Count[6]~8_combout\ = (((!Count(0)) # (!Count(3))) # (!Count(1))) # (!Count(2))

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
	dataa => Count(2),
	datab => Count(1),
	datac => Count(3),
	datad => Count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count[6]~8_combout\);

-- Location: LC_X4_Y3_N9
\Count[6]~16\ : maxii_lcell
-- Equation(s):
-- \Count[6]~16_combout\ = (\rst~combout\) # ((Count(4) & (!\Count[6]~13_combout\ & !\Count[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(4),
	datab => \rst~combout\,
	datac => \Count[6]~13_combout\,
	datad => \Count[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count[6]~16_combout\);

-- Location: LC_X4_Y3_N7
\Count[6]\ : maxii_lcell
-- Equation(s):
-- Count(6) = DFFEAS(Count(6) $ ((((!(!\Count[3]~7\ & \Count[5]~12\) # (\Count[3]~7\ & \Count[5]~12COUT1_22\))))), GLOBAL(\clk~combout\), VCC, , , , , \Count[6]~16_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(6),
	aclr => GND,
	sclr => \Count[6]~16_combout\,
	cin => \Count[3]~7\,
	cin0 => \Count[5]~12\,
	cin1 => \Count[5]~12COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(6));

-- Location: LC_X5_Y4_N8
\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1) = (Count(4))
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\ = CARRY((Count(4)))
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_24\ = CARRY((Count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_24\);

-- Location: LC_X5_Y4_N9
\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\);

-- Location: LC_X5_Y4_N0
\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\ = CARRY(((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_25\ = CARRY(((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\)))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~15\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_25\);

-- Location: LC_X5_Y4_N1
\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\ = (Count(5) $ ((!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ = CARRY(((!Count(5) & !\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_26\ = CARRY(((!Count(5) & !\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_25\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(5),
	cin0 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_26\);

-- Location: LC_X5_Y4_N2
\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ = Count(6) $ ((((!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\))))
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\ = CARRY((Count(6) & ((!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\))))
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_27\ = CARRY((Count(6) & ((!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_26\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(6),
	cin0 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_27\);

-- Location: LC_X5_Y4_N3
\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~7COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\);

-- Location: LC_X5_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[18]~6\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: LC_X5_Y4_N5
\Div0|auto_generated|divider|divider|StageOut[18]~5\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ = (((Count(6) & !\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\)))

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
	datac => Count(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\);

-- Location: LC_X4_Y4_N5
\Div0|auto_generated|divider|divider|StageOut[17]~12\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~12_combout\ = (Count(5) & (((!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(5),
	datac => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~12_combout\);

-- Location: LC_X4_Y4_N9
\Div0|auto_generated|divider|divider|StageOut[17]~13\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~13_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~13_combout\);

-- Location: LC_X4_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[16]~7\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & Count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datad => Count(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LC_X5_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[16]~8\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1) & (((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))))

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
	dataa => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~8_combout\);

-- Location: LC_X2_Y3_N6
\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1) = ((Count(3)))
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\ = CARRY(((Count(3))))
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_33\ = CARRY(((Count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_33\);

-- Location: LC_X2_Y3_N7
\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\);

-- Location: LC_X4_Y4_N0
\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ = CARRY(((\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_29\ = CARRY(((\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\)))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~20\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_29\);

-- Location: LC_X4_Y4_N1
\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ $ (((!\Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~8_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_30\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_29\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~8_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_30\);

-- Location: LC_X4_Y4_N2
\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\ = \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ $ (((!\Div0|auto_generated|divider|divider|StageOut[17]~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[17]~13_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~12_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~13_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_31\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_30\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~12_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~13_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_31\);

-- Location: LC_X4_Y4_N3
\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\)))
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_32\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_32\);

-- Location: LC_X4_Y4_N4
\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\);

-- Location: LC_X4_Y4_N7
\Div0|auto_generated|divider|divider|StageOut[23]~4\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~4_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~4_combout\);

-- Location: LC_X4_Y4_N8
\Div0|auto_generated|divider|divider|StageOut[23]~3\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~3_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & (Count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	datac => Count(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~3_combout\);

-- Location: LC_X3_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[22]~9\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~9_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~9_combout\);

-- Location: LC_X5_Y4_N7
\Div0|auto_generated|divider|divider|StageOut[22]~0\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1))) # (!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & ((Count(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1130",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	datab => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => Count(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LC_X2_Y4_N8
\Div0|auto_generated|divider|divider|StageOut[21]~15\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~15_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~15_combout\);

-- Location: LC_X3_Y4_N7
\Div0|auto_generated|divider|divider|StageOut[21]~14\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~14_combout\ = (((Count(3) & !\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\)))

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
	datac => Count(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~14_combout\);

-- Location: LC_X3_Y3_N5
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1) = (Count(2))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ = CARRY((Count(2)))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_33\ = CARRY((Count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_33\);

-- Location: LC_X3_Y3_N6
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27_combout\);

-- Location: LC_X3_Y4_N0
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\ = CARRY(((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_29\ = CARRY(((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27_combout\)))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_29\);

-- Location: LC_X3_Y4_N1
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\ = \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\ $ (((!\Div0|auto_generated|divider|divider|StageOut[21]~15_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~14_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~15_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~14_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_30\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~15_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~14_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_29\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~14_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_30\);

-- Location: LC_X3_Y4_N2
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\ $ (((!\Div0|auto_generated|divider|divider|StageOut[22]~9_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[22]~0_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~9_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~0_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_31\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_30\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~9_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_31\);

-- Location: LC_X3_Y4_N3
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~4_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~3_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\)))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_32\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~4_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~3_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~3_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_32\);

-- Location: LC_X3_Y4_N4
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\);

-- Location: LC_X3_Y4_N9
\Div0|auto_generated|divider|divider|StageOut[28]~2\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~2_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~2_combout\);

-- Location: LC_X3_Y4_N5
\Div0|auto_generated|divider|divider|StageOut[28]~1\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~1_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~0_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~1_combout\);

-- Location: LC_X2_Y4_N1
\Div0|auto_generated|divider|divider|StageOut[27]~10\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~10_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1))) # (!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((Count(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1310",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => Count(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~10_combout\);

-- Location: LC_X3_Y4_N8
\Div0|auto_generated|divider|divider|StageOut[27]~11\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~11_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~11_combout\);

-- Location: LC_X3_Y3_N8
\Div0|auto_generated|divider|divider|StageOut[26]~16\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~16_combout\ = (((Count(2) & !\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))

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
	datac => Count(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~16_combout\);

-- Location: LC_X3_Y3_N7
\Div0|auto_generated|divider|divider|StageOut[26]~17\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~17_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1) & \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~17_combout\);

-- Location: LC_X3_Y2_N6
\Div0|auto_generated|divider|divider|StageOut[25]~19\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~19_combout\ = (Count(1) & (((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~19_combout\);

-- Location: LC_X3_Y3_N9
\Div0|auto_generated|divider|divider|StageOut[25]~18\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~18_combout\ = (((Count(1) & !\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))

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
	datac => Count(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~18_combout\);

-- Location: LC_X3_Y3_N0
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~19_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[25]~18_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_26\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~19_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[25]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~19_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_26\);

-- Location: LC_X3_Y3_N1
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~16_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~17_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_27\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~16_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~17_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_26\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~17_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_27\);

-- Location: LC_X3_Y3_N2
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~10_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~11_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_28\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_27\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~10_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff0e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~11_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_28\);

-- Location: LC_X3_Y3_N3
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~2_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~1_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_29\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~2_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~1_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_28\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~1_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_29\);

-- Location: LC_X3_Y3_N4
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0\ : maxii_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\);

-- Location: LC_X2_Y4_N0
\D1|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \D1|Mux6~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\) # (\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ 
-- $ (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd6e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D1|Mux6~0_combout\);

-- Location: LC_X2_Y4_N2
\D1|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \D1|Mux5~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\) # (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D1|Mux5~0_combout\);

-- Location: LC_X2_Y4_N3
\D1|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \D1|Mux4~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D1|Mux4~0_combout\);

-- Location: LC_X2_Y4_N4
\D1|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \D1|Mux3~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & 
-- \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8492",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D1|Mux3~0_combout\);

-- Location: LC_X2_Y4_N9
\D1|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \D1|Mux2~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\) 
-- # (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D1|Mux2~0_combout\);

-- Location: LC_X2_Y4_N6
\D1|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \D1|Mux1~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D1|Mux1~0_combout\);

-- Location: LC_X2_Y4_N5
\D1|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \D1|Mux0~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ 
-- $ (!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ $ (!\Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6012",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D1|Mux0~0_combout\);

-- Location: LC_X6_Y4_N1
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1) = ((Count(4)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\ = CARRY(((Count(4))))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_27\ = CARRY(((Count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_27\);

-- Location: LC_X6_Y4_N2
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\);

-- Location: LC_X6_Y4_N5
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_24\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\)))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~15\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_24\);

-- Location: LC_X6_Y4_N6
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\ = (Count(5) $ ((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\ = CARRY(((!Count(5) & !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_25\ = CARRY(((!Count(5) & !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_24\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(5),
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~17COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_25\);

-- Location: LC_X6_Y4_N7
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ = (Count(6) $ ((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~2\ = CARRY(((Count(6) & !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~2COUT1_26\ = CARRY(((Count(6) & !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_25\)))

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
	datab => Count(6),
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~12COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~2\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~2COUT1_26\);

-- Location: LC_X6_Y4_N8
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~2\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~2COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\);

-- Location: LC_X6_Y3_N8
\Mod0|auto_generated|divider|divider|StageOut[24]~14\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\);

-- Location: LC_X6_Y3_N7
\Mod0|auto_generated|divider|divider|StageOut[24]~13\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~13_combout\ = (((Count(6) & !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\)))

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
	datac => Count(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~13_combout\);

-- Location: LC_X6_Y3_N6
\Mod0|auto_generated|divider|divider|StageOut[23]~19\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~19_combout\ = (((Count(5) & !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\)))

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
	datac => Count(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~19_combout\);

-- Location: LC_X6_Y4_N9
\Mod0|auto_generated|divider|divider|StageOut[23]~20\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\)))

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
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\);

-- Location: LC_X6_Y4_N0
\Mod0|auto_generated|divider|divider|StageOut[22]~26\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~26_combout\ = ((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1) & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\))))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~26_combout\);

-- Location: LC_X6_Y3_N5
\Mod0|auto_generated|divider|divider|StageOut[22]~25\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (((Count(4) & !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\)))

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
	datac => Count(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LC_X5_Y2_N6
\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1) = (Count(3))
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\ = CARRY((Count(3)))
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_29\ = CARRY((Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_29\);

-- Location: LC_X5_Y2_N7
\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\);

-- Location: LC_X6_Y3_N0
\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_30\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\)))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~20\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_30\);

-- Location: LC_X6_Y3_N1
\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[22]~26_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[22]~25_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[22]~26_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[22]~25_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_31\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[22]~26_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[22]~25_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_30\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~22COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_31\);

-- Location: LC_X6_Y3_N2
\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[23]~19_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\ & ((\Mod0|auto_generated|divider|divider|StageOut[23]~19_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_32\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_31\ & ((\Mod0|auto_generated|divider|divider|StageOut[23]~19_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~19_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~17COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_32\);

-- Location: LC_X6_Y3_N3
\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[24]~13_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[24]~13_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_33\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[24]~13_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~13_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_33\);

-- Location: LC_X6_Y3_N4
\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\);

-- Location: LC_X6_Y4_N3
\Mod0|auto_generated|divider|divider|StageOut[31]~15\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~15_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ & (Count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => Count(5),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~15_combout\);

-- Location: LC_X6_Y2_N0
\Mod0|auto_generated|divider|divider|StageOut[31]~18\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~18_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\))))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~18_combout\);

-- Location: LC_X6_Y2_N7
\Mod0|auto_generated|divider|divider|StageOut[30]~24\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\)))

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
	datac => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\);

-- Location: LC_X6_Y4_N4
\Mod0|auto_generated|divider|divider|StageOut[30]~21\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~21_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ & 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ & (Count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "040e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	datab => Count(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~21_combout\);

-- Location: LC_X5_Y2_N1
\Mod0|auto_generated|divider|divider|StageOut[29]~7\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~7_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (((Count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => Count(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~7_combout\);

-- Location: LC_X5_Y2_N8
\Mod0|auto_generated|divider|divider|StageOut[29]~8\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~8_combout\);

-- Location: LC_X5_Y3_N6
\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1) = ((Count(2)))
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ = CARRY(((Count(2))))
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_34\ = CARRY(((Count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_34\);

-- Location: LC_X5_Y3_N7
\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\);

-- Location: LC_X6_Y2_N1
\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_35\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\)))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_35\);

-- Location: LC_X6_Y2_N2
\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[29]~7_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[29]~8_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[29]~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~8_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_36\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[29]~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~8_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[29]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[29]~8_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~17COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_36\);

-- Location: LC_X6_Y2_N3
\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[30]~21_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~21_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27COUT1_37\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_36\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~21_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27COUT1_37\);

-- Location: LC_X6_Y2_N4
\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[31]~15_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~18_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~15_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~18_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~15_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~18_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~27COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\);

-- Location: LC_X5_Y2_N9
\Mod0|auto_generated|divider|divider|StageOut[32]~12\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\))))

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
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~12_combout\);

-- Location: LC_X6_Y3_N9
\Mod0|auto_generated|divider|divider|StageOut[32]~9\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\ & (Count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~5_combout\,
	datac => Count(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\);

-- Location: LC_X6_Y2_N5
\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\ $ (((\Mod0|auto_generated|divider|divider|StageOut[32]~12_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~12_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_38\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~12_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_38\);

-- Location: LC_X6_Y2_N6
\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ = ((((!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\ & \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\ & \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_38\))))

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
	cin => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~22\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\);

-- Location: LC_X5_Y3_N2
\Mod0|auto_generated|divider|divider|StageOut[36]~1\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~1_combout\ = ((Count(2) & ((!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\))))

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
	datab => Count(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~1_combout\);

-- Location: LC_X5_Y3_N9
\Mod0|auto_generated|divider|divider|StageOut[36]~2\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~2_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1) & \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~2_combout\);

-- Location: LC_X3_Y2_N8
\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1) = (Count(1))
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\ = CARRY((Count(1)))
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_39\ = CARRY((Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_39\);

-- Location: LC_X3_Y2_N9
\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\);

-- Location: LC_X4_Y2_N1
\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\))
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_40\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_40\);

-- Location: LC_X4_Y2_N2
\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[36]~1_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~2_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[36]~1_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~2_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_41\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[36]~1_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~2_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_40\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~2_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_41\);

-- Location: LC_X5_Y2_N0
\Mod0|auto_generated|divider|divider|StageOut[38]~23\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~23_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~25_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~23_combout\);

-- Location: LC_X6_Y2_N8
\Mod0|auto_generated|divider|divider|StageOut[38]~22\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~22_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~21_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~15_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~22_combout\);

-- Location: LC_X5_Y2_N5
\Mod0|auto_generated|divider|divider|StageOut[37]~5\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~5_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\))))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~5_combout\);

-- Location: LC_X5_Y2_N2
\Mod0|auto_generated|divider|divider|StageOut[37]~4\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~4_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((Count(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1310",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	datab => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datad => Count(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~4_combout\);

-- Location: LC_X4_Y2_N3
\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[37]~5_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[37]~4_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~5_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~4_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_42\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_41\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~5_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~4_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_42\);

-- Location: LC_X4_Y2_N4
\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[38]~23_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~22_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[38]~23_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~22_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~30\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\);

-- Location: LC_X4_Y2_N8
\Mod0|auto_generated|divider|divider|StageOut[40]~11\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~11_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))

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
	datac => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~11_combout\);

-- Location: LC_X5_Y2_N4
\Mod0|auto_generated|divider|divider|StageOut[40]~10\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~10_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~10_combout\);

-- Location: LC_X5_Y2_N3
\Mod0|auto_generated|divider|divider|StageOut[39]~17\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~17_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20_combout\))))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~17_combout\);

-- Location: LC_X6_Y2_N9
\Mod0|auto_generated|divider|divider|StageOut[39]~16\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~16_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~15_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~16_combout\);

-- Location: LC_X4_Y2_N5
\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27_cout0\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[39]~17_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[39]~16_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_43\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[39]~17_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[39]~16_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[39]~17_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[39]~16_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~25\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_43\);

-- Location: LC_X4_Y2_N6
\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[40]~11_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[40]~10_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_44\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[40]~11_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[40]~10_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~11_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~10_combout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_44\);

-- Location: LC_X4_Y2_N7
\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ = (((!(!\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\ & \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\ & \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_44\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\);

-- Location: LC_X4_Y2_N9
\Mod0|auto_generated|divider|divider|StageOut[44]~3\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~1_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[36]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\);

-- Location: LC_X3_Y2_N2
\Mod0|auto_generated|divider|divider|StageOut[43]~0\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((Count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => Count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\);

-- Location: LC_X4_Y2_N0
\Mod0|auto_generated|divider|divider|StageOut[45]~6\ : maxii_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[37]~4_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[37]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[37]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\);

-- Location: LC_X2_Y2_N2
\D2|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \D2|Mux6~0_combout\ = (Count(0) & ((\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\)))) # (!Count(0) & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd6e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datac => Count(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D2|Mux6~0_combout\);

-- Location: LC_X2_Y2_N3
\D2|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \D2|Mux5~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & (Count(0) & (\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\) # (Count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datac => Count(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D2|Mux5~0_combout\);

-- Location: LC_X2_Y2_N4
\D2|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \D2|Mux4~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ & (((Count(0) & !\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & (Count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datac => Count(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D2|Mux4~0_combout\);

-- Location: LC_X2_Y2_N9
\D2|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \D2|Mux3~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & (Count(0))) # (!\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & (!Count(0) & 
-- \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ $ (Count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8492",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datac => Count(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D2|Mux3~0_combout\);

-- Location: LC_X2_Y2_N6
\D2|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \D2|Mux2~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\) # (!Count(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ & (!Count(0) & !\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datac => Count(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D2|Mux2~0_combout\);

-- Location: LC_X2_Y2_N5
\D2|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \D2|Mux1~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ & ((Count(0) & ((\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\))) # (!Count(0) & (\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & (Count(0) $ (\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datac => Count(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D2|Mux1~0_combout\);

-- Location: LC_X2_Y2_N7
\D2|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \D2|Mux0~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ & (Count(0) $ (!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & (Count(0) & (\Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6012",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datac => Count(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D2|Mux0~0_combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_high[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D1|Mux6~0_combout\,
	oe => VCC,
	padio => ww_Light6_high(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_high[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D1|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_Light6_high(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_high[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D1|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_Light6_high(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_high[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D1|ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_Light6_high(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_high[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D1|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_Light6_high(4));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_high[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D1|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_Light6_high(5));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_high[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D1|ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_Light6_high(6));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_low[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D2|Mux6~0_combout\,
	oe => VCC,
	padio => ww_Light6_low(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_low[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D2|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_Light6_low(1));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_low[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D2|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_Light6_low(2));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_low[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D2|ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_Light6_low(3));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_low[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D2|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_Light6_low(4));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_low[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D2|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_Light6_low(5));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Light6_low[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D2|ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_Light6_low(6));
END structure;


