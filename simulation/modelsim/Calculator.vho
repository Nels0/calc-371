-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.0 Build 178 05/31/2012 SJ Full Version"

-- DATE "10/10/2019 11:57:05"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculator IS
    PORT (
	ROW : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	COL : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END calculator;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- COL[0]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- COL[1]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- COL[2]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- COL[3]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ROW[0]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ROW[1]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ROW[2]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ROW[3]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF calculator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ROW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_COL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mainclock|clock_counter[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KeyScan0|keypadclock|clock_counter[19]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KeyScan0|keypadclock|clock_counter[13]~34_combout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[15]~38_combout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[16]~40_combout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[18]~44_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[4]~16_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[5]~18_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[9]~27\ : std_logic;
SIGNAL \keydebouncer|Add0~12_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~26_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~30_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~32_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~34_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[10]~28_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd1[0]~8_regout\ : std_logic;
SIGNAL \FSM|state.A_temp~regout\ : std_logic;
SIGNAL \keydebouncer|LessThan0~3_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~3_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~6_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~10_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~11_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~12_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan0~10_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[4]~feeder_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[5]~feeder_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[0]~30_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[1]~11\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[2]~13\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[3]~14_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[3]~15\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[4]~17\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[5]~19\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[6]~20_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[6]~21\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[7]~23\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[8]~24_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[8]~25\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[9]~26_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[7]~22_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[2]~12_combout\ : std_logic;
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter[1]~10_combout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~11_cout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~13_cout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~15_cout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~17_cout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~19_cout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~21_cout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~23_cout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~25_cout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~27_cout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~28_combout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[10]~29\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[11]~30_combout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[11]~31\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[12]~32_combout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[12]~33\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[13]~35\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[14]~36_combout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[14]~37\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[15]~39\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[16]~41\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[17]~42_combout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[17]~43\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[18]~45\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[19]~46_combout\ : std_logic;
SIGNAL \KeyScan0|keypadclock|clock_counter[19]~clkctrl_outclk\ : std_logic;
SIGNAL \KeyScan0|WideAnd0~0_combout\ : std_logic;
SIGNAL \KeyScan0|n~0_combout\ : std_logic;
SIGNAL \KeyScan0|n~1_combout\ : std_logic;
SIGNAL \KeyScan0|Decoder0~0_combout\ : std_logic;
SIGNAL \KeyScan0|Decoder0~1_combout\ : std_logic;
SIGNAL \KeyScan0|Decoder0~2_combout\ : std_logic;
SIGNAL \KeyScan0|Decoder0~3_combout\ : std_logic;
SIGNAL \KeyScan0|keypressed~regout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~2_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~24_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~25_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~16_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~19\ : std_logic;
SIGNAL \keydebouncer|Add0~20_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~14_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~8_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan0~2_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~0_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~23_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~1\ : std_logic;
SIGNAL \keydebouncer|Add0~2_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~22_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~3\ : std_logic;
SIGNAL \keydebouncer|Add0~4_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~21_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~5\ : std_logic;
SIGNAL \keydebouncer|Add0~6_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~20_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan0~4_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~7\ : std_logic;
SIGNAL \keydebouncer|Add0~9\ : std_logic;
SIGNAL \keydebouncer|Add0~10_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~18_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~19_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan0~5_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan0~6_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~38_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~14_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan0~7_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan0~8_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan0~9_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~17_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~21\ : std_logic;
SIGNAL \keydebouncer|Add0~23\ : std_logic;
SIGNAL \keydebouncer|Add0~25\ : std_logic;
SIGNAL \keydebouncer|Add0~27\ : std_logic;
SIGNAL \keydebouncer|Add0~28_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~15_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~29\ : std_logic;
SIGNAL \keydebouncer|Add0~31\ : std_logic;
SIGNAL \keydebouncer|Add0~33\ : std_logic;
SIGNAL \keydebouncer|Add0~35\ : std_logic;
SIGNAL \keydebouncer|Add0~36_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~1_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~37\ : std_logic;
SIGNAL \keydebouncer|Add0~39\ : std_logic;
SIGNAL \keydebouncer|Add0~40_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~3_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~0_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~9_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~11\ : std_logic;
SIGNAL \keydebouncer|Add0~13\ : std_logic;
SIGNAL \keydebouncer|Add0~15\ : std_logic;
SIGNAL \keydebouncer|Add0~16_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~13_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~17\ : std_logic;
SIGNAL \keydebouncer|Add0~18_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~12_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~22_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~11_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~24_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~10_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~9_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~7_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~5_combout\ : std_logic;
SIGNAL \keydebouncer|debouncetimer~4_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~4_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~5_combout\ : std_logic;
SIGNAL \keydebouncer|Add0~8_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~6_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~7_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~8_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~0_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~1_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~2_combout\ : std_logic;
SIGNAL \keydebouncer|LessThan1~13_combout\ : std_logic;
SIGNAL \keydebouncer|db_signal~regout\ : std_logic;
SIGNAL \keypressedge|signal_last~regout\ : std_logic;
SIGNAL \keypressedge|strobe~0_combout\ : std_logic;
SIGNAL \keypressedge|strobe~regout\ : std_logic;
SIGNAL \FSM|state.op_B~0_combout\ : std_logic;
SIGNAL \FSM|state.op_B~regout\ : std_logic;
SIGNAL \FSM|Selector3~0_combout\ : std_logic;
SIGNAL \FSM|state.B_temp~regout\ : std_logic;
SIGNAL \FSM|Selector0~0_combout\ : std_logic;
SIGNAL \FSM|state.op_A~regout\ : std_logic;
SIGNAL \bksppressedge|signal_last~feeder_combout\ : std_logic;
SIGNAL \bksppressedge|signal_last~regout\ : std_logic;
SIGNAL \bksppressedge|strobe~0_combout\ : std_logic;
SIGNAL \bksppressedge|strobe~regout\ : std_logic;
SIGNAL \bcdreg_A|bcd100~0_combout\ : std_logic;
SIGNAL \FSM|load_A~0_combout\ : std_logic;
SIGNAL \FSM|bksp_A~0_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd1[0]~7feeder_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd1[0]~7_regout\ : std_logic;
SIGNAL \mainclock|clock_counter[0]~0_combout\ : std_logic;
SIGNAL \mainclock|clock_counter[0]~clkctrl_outclk\ : std_logic;
SIGNAL \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \bcdreg_A|bcd10[0]~0_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd100~3_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd1[3]~1feeder_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd1[3]~1_regout\ : std_logic;
SIGNAL \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \bcdreg_A|bcd10[3]~3_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd100~1_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd1[1]~10feeder_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd1[1]~10_regout\ : std_logic;
SIGNAL \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \bcdreg_A|bcd10[1]~1_combout\ : std_logic;
SIGNAL \H0|WideOr6~2_combout\ : std_logic;
SIGNAL \H0|WideOr6~3_combout\ : std_logic;
SIGNAL \H0|WideOr5~2_combout\ : std_logic;
SIGNAL \H0|WideOr5~3_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd100~2_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd1[2]~4feeder_combout\ : std_logic;
SIGNAL \bcdreg_A|bcd1[2]~4_regout\ : std_logic;
SIGNAL \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \bcdreg_A|bcd10[2]~2_combout\ : std_logic;
SIGNAL \H0|WideOr4~3_combout\ : std_logic;
SIGNAL \H0|WideOr4~9_combout\ : std_logic;
SIGNAL \H0|WideOr3~2_combout\ : std_logic;
SIGNAL \H0|WideOr3~3_combout\ : std_logic;
SIGNAL \H0|WideOr2~2_combout\ : std_logic;
SIGNAL \H0|WideOr2~3_combout\ : std_logic;
SIGNAL \H0|WideOr1~2_combout\ : std_logic;
SIGNAL \H0|WideOr1~3_combout\ : std_logic;
SIGNAL \H0|WideOr0~2_combout\ : std_logic;
SIGNAL \H0|WideOr0~3_combout\ : std_logic;
SIGNAL \H1|WideOr6~2_combout\ : std_logic;
SIGNAL \H1|WideOr6~3_combout\ : std_logic;
SIGNAL \H1|WideOr5~2_combout\ : std_logic;
SIGNAL \H1|WideOr5~3_combout\ : std_logic;
SIGNAL \H1|WideOr4~3_combout\ : std_logic;
SIGNAL \H1|WideOr4~9_combout\ : std_logic;
SIGNAL \H1|WideOr3~2_combout\ : std_logic;
SIGNAL \H1|WideOr3~3_combout\ : std_logic;
SIGNAL \H1|WideOr2~2_combout\ : std_logic;
SIGNAL \H1|WideOr2~3_combout\ : std_logic;
SIGNAL \H1|WideOr1~2_combout\ : std_logic;
SIGNAL \H1|WideOr1~3_combout\ : std_logic;
SIGNAL \H1|WideOr0~2_combout\ : std_logic;
SIGNAL \H1|WideOr0~3_combout\ : std_logic;
SIGNAL \H2|WideOr6~2_combout\ : std_logic;
SIGNAL \H2|WideOr6~3_combout\ : std_logic;
SIGNAL \H2|WideOr5~2_combout\ : std_logic;
SIGNAL \H2|WideOr5~3_combout\ : std_logic;
SIGNAL \H2|WideOr4~3_combout\ : std_logic;
SIGNAL \H2|WideOr4~9_combout\ : std_logic;
SIGNAL \H2|WideOr3~2_combout\ : std_logic;
SIGNAL \H2|WideOr3~3_combout\ : std_logic;
SIGNAL \H2|WideOr2~2_combout\ : std_logic;
SIGNAL \H2|WideOr2~3_combout\ : std_logic;
SIGNAL \H2|WideOr1~2_combout\ : std_logic;
SIGNAL \H2|WideOr1~3_combout\ : std_logic;
SIGNAL \H2|WideOr0~2_combout\ : std_logic;
SIGNAL \H2|WideOr0~3_combout\ : std_logic;
SIGNAL \mainclock|clock_counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KeyScan0|n\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KeyScan0|col\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KeyScan0|keypadclock|clock_counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \keydebouncer|debouncetimer\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \keydebouncer|debouncerclockmodule|clock_counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \bcdreg_A|bcd100\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcdreg_A|bcd10\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ROW~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \H2|ALT_INV_WideOr6~3_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr6~3_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr6~3_combout\ : std_logic;

BEGIN

ww_ROW <= ROW;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
COL <= ww_COL;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\KeyScan0|col\(3) & \KeyScan0|col\(2) & \KeyScan0|col\(1) & \KeyScan0|col\(0) & \ROW~combout\(3) & \ROW~combout\(2) & \ROW~combout\(1) & \ROW~combout\(0));

\KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a1\ <= \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a2\ <= \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a3\ <= \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \keydebouncer|debouncerclockmodule|clock_counter\(10));

\mainclock|clock_counter[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mainclock|clock_counter\(0));

\KeyScan0|keypadclock|clock_counter[19]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KeyScan0|keypadclock|clock_counter\(19));
\H2|ALT_INV_WideOr6~3_combout\ <= NOT \H2|WideOr6~3_combout\;
\H1|ALT_INV_WideOr6~3_combout\ <= NOT \H1|WideOr6~3_combout\;
\H0|ALT_INV_WideOr6~3_combout\ <= NOT \H0|WideOr6~3_combout\;

-- Location: LCFF_X33_Y1_N17
\KeyScan0|keypadclock|clock_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \KeyScan0|keypadclock|clock_counter[18]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypadclock|clock_counter\(18));

-- Location: LCFF_X33_Y1_N13
\KeyScan0|keypadclock|clock_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \KeyScan0|keypadclock|clock_counter[16]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypadclock|clock_counter\(16));

-- Location: LCFF_X33_Y1_N11
\KeyScan0|keypadclock|clock_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \KeyScan0|keypadclock|clock_counter[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypadclock|clock_counter\(15));

-- Location: LCFF_X33_Y1_N7
\KeyScan0|keypadclock|clock_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \KeyScan0|keypadclock|clock_counter[13]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypadclock|clock_counter\(13));

-- Location: LCFF_X33_Y2_N13
\keydebouncer|debouncerclockmodule|clock_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \keydebouncer|debouncerclockmodule|clock_counter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(5));

-- Location: LCFF_X33_Y2_N11
\keydebouncer|debouncerclockmodule|clock_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \keydebouncer|debouncerclockmodule|clock_counter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(4));

-- Location: LCCOMB_X33_Y1_N6
\KeyScan0|keypadclock|clock_counter[13]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[13]~34_combout\ = (\KeyScan0|keypadclock|clock_counter\(13) & (\KeyScan0|keypadclock|clock_counter[12]~33\ $ (GND))) # (!\KeyScan0|keypadclock|clock_counter\(13) & (!\KeyScan0|keypadclock|clock_counter[12]~33\ & VCC))
-- \KeyScan0|keypadclock|clock_counter[13]~35\ = CARRY((\KeyScan0|keypadclock|clock_counter\(13) & !\KeyScan0|keypadclock|clock_counter[12]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypadclock|clock_counter\(13),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[12]~33\,
	combout => \KeyScan0|keypadclock|clock_counter[13]~34_combout\,
	cout => \KeyScan0|keypadclock|clock_counter[13]~35\);

-- Location: LCCOMB_X33_Y1_N10
\KeyScan0|keypadclock|clock_counter[15]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[15]~38_combout\ = (\KeyScan0|keypadclock|clock_counter\(15) & (\KeyScan0|keypadclock|clock_counter[14]~37\ $ (GND))) # (!\KeyScan0|keypadclock|clock_counter\(15) & (!\KeyScan0|keypadclock|clock_counter[14]~37\ & VCC))
-- \KeyScan0|keypadclock|clock_counter[15]~39\ = CARRY((\KeyScan0|keypadclock|clock_counter\(15) & !\KeyScan0|keypadclock|clock_counter[14]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypadclock|clock_counter\(15),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[14]~37\,
	combout => \KeyScan0|keypadclock|clock_counter[15]~38_combout\,
	cout => \KeyScan0|keypadclock|clock_counter[15]~39\);

-- Location: LCCOMB_X33_Y1_N12
\KeyScan0|keypadclock|clock_counter[16]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[16]~40_combout\ = (\KeyScan0|keypadclock|clock_counter\(16) & (!\KeyScan0|keypadclock|clock_counter[15]~39\)) # (!\KeyScan0|keypadclock|clock_counter\(16) & ((\KeyScan0|keypadclock|clock_counter[15]~39\) # (GND)))
-- \KeyScan0|keypadclock|clock_counter[16]~41\ = CARRY((!\KeyScan0|keypadclock|clock_counter[15]~39\) # (!\KeyScan0|keypadclock|clock_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypadclock|clock_counter\(16),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[15]~39\,
	combout => \KeyScan0|keypadclock|clock_counter[16]~40_combout\,
	cout => \KeyScan0|keypadclock|clock_counter[16]~41\);

-- Location: LCCOMB_X33_Y1_N16
\KeyScan0|keypadclock|clock_counter[18]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[18]~44_combout\ = (\KeyScan0|keypadclock|clock_counter\(18) & (!\KeyScan0|keypadclock|clock_counter[17]~43\)) # (!\KeyScan0|keypadclock|clock_counter\(18) & ((\KeyScan0|keypadclock|clock_counter[17]~43\) # (GND)))
-- \KeyScan0|keypadclock|clock_counter[18]~45\ = CARRY((!\KeyScan0|keypadclock|clock_counter[17]~43\) # (!\KeyScan0|keypadclock|clock_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypadclock|clock_counter\(18),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[17]~43\,
	combout => \KeyScan0|keypadclock|clock_counter[18]~44_combout\,
	cout => \KeyScan0|keypadclock|clock_counter[18]~45\);

-- Location: LCCOMB_X34_Y2_N18
\keydebouncer|debouncerclockmodule|clock_counter[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[4]~16_combout\ = (\keydebouncer|debouncerclockmodule|clock_counter\(4) & (!\keydebouncer|debouncerclockmodule|clock_counter[3]~15\)) # (!\keydebouncer|debouncerclockmodule|clock_counter\(4) & 
-- ((\keydebouncer|debouncerclockmodule|clock_counter[3]~15\) # (GND)))
-- \keydebouncer|debouncerclockmodule|clock_counter[4]~17\ = CARRY((!\keydebouncer|debouncerclockmodule|clock_counter[3]~15\) # (!\keydebouncer|debouncerclockmodule|clock_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncerclockmodule|clock_counter\(4),
	datad => VCC,
	cin => \keydebouncer|debouncerclockmodule|clock_counter[3]~15\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[4]~16_combout\,
	cout => \keydebouncer|debouncerclockmodule|clock_counter[4]~17\);

-- Location: LCCOMB_X34_Y2_N20
\keydebouncer|debouncerclockmodule|clock_counter[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[5]~18_combout\ = (\keydebouncer|debouncerclockmodule|clock_counter\(5) & (\keydebouncer|debouncerclockmodule|clock_counter[4]~17\ $ (GND))) # (!\keydebouncer|debouncerclockmodule|clock_counter\(5) & 
-- (!\keydebouncer|debouncerclockmodule|clock_counter[4]~17\ & VCC))
-- \keydebouncer|debouncerclockmodule|clock_counter[5]~19\ = CARRY((\keydebouncer|debouncerclockmodule|clock_counter\(5) & !\keydebouncer|debouncerclockmodule|clock_counter[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncerclockmodule|clock_counter\(5),
	datad => VCC,
	cin => \keydebouncer|debouncerclockmodule|clock_counter[4]~17\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[5]~18_combout\,
	cout => \keydebouncer|debouncerclockmodule|clock_counter[5]~19\);

-- Location: LCCOMB_X34_Y2_N28
\keydebouncer|debouncerclockmodule|clock_counter[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[9]~26_combout\ = (\keydebouncer|debouncerclockmodule|clock_counter\(9) & (\keydebouncer|debouncerclockmodule|clock_counter[8]~25\ $ (GND))) # (!\keydebouncer|debouncerclockmodule|clock_counter\(9) & 
-- (!\keydebouncer|debouncerclockmodule|clock_counter[8]~25\ & VCC))
-- \keydebouncer|debouncerclockmodule|clock_counter[9]~27\ = CARRY((\keydebouncer|debouncerclockmodule|clock_counter\(9) & !\keydebouncer|debouncerclockmodule|clock_counter[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(9),
	datad => VCC,
	cin => \keydebouncer|debouncerclockmodule|clock_counter[8]~25\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[9]~26_combout\,
	cout => \keydebouncer|debouncerclockmodule|clock_counter[9]~27\);

-- Location: LCCOMB_X31_Y33_N24
\keydebouncer|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~12_combout\ = (\keydebouncer|debouncetimer\(6) & (\keydebouncer|Add0~11\ $ (GND))) # (!\keydebouncer|debouncetimer\(6) & (!\keydebouncer|Add0~11\ & VCC))
-- \keydebouncer|Add0~13\ = CARRY((\keydebouncer|debouncetimer\(6) & !\keydebouncer|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(6),
	datad => VCC,
	cin => \keydebouncer|Add0~11\,
	combout => \keydebouncer|Add0~12_combout\,
	cout => \keydebouncer|Add0~13\);

-- Location: LCCOMB_X31_Y32_N6
\keydebouncer|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~26_combout\ = (\keydebouncer|debouncetimer\(13) & (!\keydebouncer|Add0~25\)) # (!\keydebouncer|debouncetimer\(13) & ((\keydebouncer|Add0~25\) # (GND)))
-- \keydebouncer|Add0~27\ = CARRY((!\keydebouncer|Add0~25\) # (!\keydebouncer|debouncetimer\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(13),
	datad => VCC,
	cin => \keydebouncer|Add0~25\,
	combout => \keydebouncer|Add0~26_combout\,
	cout => \keydebouncer|Add0~27\);

-- Location: LCCOMB_X31_Y32_N10
\keydebouncer|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~30_combout\ = (\keydebouncer|debouncetimer\(15) & (!\keydebouncer|Add0~29\)) # (!\keydebouncer|debouncetimer\(15) & ((\keydebouncer|Add0~29\) # (GND)))
-- \keydebouncer|Add0~31\ = CARRY((!\keydebouncer|Add0~29\) # (!\keydebouncer|debouncetimer\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(15),
	datad => VCC,
	cin => \keydebouncer|Add0~29\,
	combout => \keydebouncer|Add0~30_combout\,
	cout => \keydebouncer|Add0~31\);

-- Location: LCCOMB_X31_Y32_N12
\keydebouncer|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~32_combout\ = (\keydebouncer|debouncetimer\(16) & (\keydebouncer|Add0~31\ $ (GND))) # (!\keydebouncer|debouncetimer\(16) & (!\keydebouncer|Add0~31\ & VCC))
-- \keydebouncer|Add0~33\ = CARRY((\keydebouncer|debouncetimer\(16) & !\keydebouncer|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(16),
	datad => VCC,
	cin => \keydebouncer|Add0~31\,
	combout => \keydebouncer|Add0~32_combout\,
	cout => \keydebouncer|Add0~33\);

-- Location: LCCOMB_X31_Y32_N14
\keydebouncer|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~34_combout\ = (\keydebouncer|debouncetimer\(17) & (!\keydebouncer|Add0~33\)) # (!\keydebouncer|debouncetimer\(17) & ((\keydebouncer|Add0~33\) # (GND)))
-- \keydebouncer|Add0~35\ = CARRY((!\keydebouncer|Add0~33\) # (!\keydebouncer|debouncetimer\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(17),
	datad => VCC,
	cin => \keydebouncer|Add0~33\,
	combout => \keydebouncer|Add0~34_combout\,
	cout => \keydebouncer|Add0~35\);

-- Location: LCFF_X34_Y2_N31
\keydebouncer|debouncerclockmodule|clock_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \keydebouncer|debouncerclockmodule|clock_counter[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(10));

-- Location: LCCOMB_X34_Y2_N30
\keydebouncer|debouncerclockmodule|clock_counter[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[10]~28_combout\ = \keydebouncer|debouncerclockmodule|clock_counter[9]~27\ $ (\keydebouncer|debouncerclockmodule|clock_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \keydebouncer|debouncerclockmodule|clock_counter\(10),
	cin => \keydebouncer|debouncerclockmodule|clock_counter[9]~27\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[10]~28_combout\);

-- Location: LCFF_X53_Y29_N3
\bcdreg_A|bcd1[0]~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \FSM|bksp_A~0_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd1[0]~8_regout\);

-- Location: LCFF_X53_Y29_N1
\FSM|state.A_temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM|state.A_temp~regout\);

-- Location: LCCOMB_X32_Y33_N6
\keydebouncer|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan0~3_combout\ = (\keydebouncer|debouncetimer\(10)) # ((\keydebouncer|debouncetimer\(13)) # ((\keydebouncer|debouncetimer\(11)) # (\keydebouncer|debouncetimer\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(10),
	datab => \keydebouncer|debouncetimer\(13),
	datac => \keydebouncer|debouncetimer\(11),
	datad => \keydebouncer|debouncetimer\(12),
	combout => \keydebouncer|LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y33_N24
\keydebouncer|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~3_combout\ = (\keydebouncer|debouncetimer\(2)) # ((\keydebouncer|debouncetimer\(3)) # ((\keydebouncer|debouncetimer\(0) & \keydebouncer|debouncetimer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(0),
	datab => \keydebouncer|debouncetimer\(2),
	datac => \keydebouncer|debouncetimer\(1),
	datad => \keydebouncer|debouncetimer\(3),
	combout => \keydebouncer|LessThan1~3_combout\);

-- Location: LCCOMB_X30_Y33_N30
\keydebouncer|debouncetimer~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~6_combout\ = (\keydebouncer|debouncetimer\(20) & ((\keydebouncer|debouncetimer\(0)))) # (!\keydebouncer|debouncetimer\(20) & (\keydebouncer|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(20),
	datab => \keydebouncer|Add0~0_combout\,
	datad => \keydebouncer|debouncetimer\(0),
	combout => \keydebouncer|debouncetimer~6_combout\);

-- Location: LCCOMB_X33_Y33_N2
\keydebouncer|LessThan1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~10_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|debouncetimer\(15)) # ((\keydebouncer|debouncetimer\(16)) # (\keydebouncer|debouncetimer\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(15),
	datab => \keydebouncer|debouncetimer\(16),
	datac => \keydebouncer|debouncetimer\(10),
	datad => \KeyScan0|keypressed~regout\,
	combout => \keydebouncer|LessThan1~10_combout\);

-- Location: LCCOMB_X33_Y33_N28
\keydebouncer|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~11_combout\ = (\keydebouncer|LessThan1~10_combout\) # ((\keydebouncer|debouncetimer~0_combout\ & ((\keydebouncer|Add0~30_combout\) # (\keydebouncer|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|Add0~30_combout\,
	datab => \keydebouncer|debouncetimer~0_combout\,
	datac => \keydebouncer|Add0~32_combout\,
	datad => \keydebouncer|LessThan1~10_combout\,
	combout => \keydebouncer|LessThan1~11_combout\);

-- Location: LCCOMB_X33_Y33_N24
\keydebouncer|LessThan1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~12_combout\ = (\keydebouncer|debouncetimer~16_combout\) # ((\keydebouncer|LessThan1~11_combout\) # ((\keydebouncer|debouncetimer~15_combout\) # (\keydebouncer|debouncetimer~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer~16_combout\,
	datab => \keydebouncer|LessThan1~11_combout\,
	datac => \keydebouncer|debouncetimer~15_combout\,
	datad => \keydebouncer|debouncetimer~14_combout\,
	combout => \keydebouncer|LessThan1~12_combout\);

-- Location: LCCOMB_X33_Y33_N0
\keydebouncer|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan0~10_combout\ = (\keydebouncer|LessThan0~6_combout\) # ((\keydebouncer|debouncetimer\(19)) # ((\keydebouncer|debouncetimer\(18)) # (\keydebouncer|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|LessThan0~6_combout\,
	datab => \keydebouncer|debouncetimer\(19),
	datac => \keydebouncer|debouncetimer\(18),
	datad => \keydebouncer|LessThan0~7_combout\,
	combout => \keydebouncer|LessThan0~10_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G15
\keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y2_N10
\keydebouncer|debouncerclockmodule|clock_counter[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[4]~feeder_combout\ = \keydebouncer|debouncerclockmodule|clock_counter[4]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keydebouncer|debouncerclockmodule|clock_counter[4]~16_combout\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[4]~feeder_combout\);

-- Location: LCCOMB_X33_Y2_N12
\keydebouncer|debouncerclockmodule|clock_counter[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[5]~feeder_combout\ = \keydebouncer|debouncerclockmodule|clock_counter[5]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keydebouncer|debouncerclockmodule|clock_counter[5]~18_combout\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[5]~feeder_combout\);

-- Location: LCCOMB_X33_Y2_N6
\keydebouncer|debouncerclockmodule|clock_counter[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[0]~30_combout\ = !\keydebouncer|debouncerclockmodule|clock_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keydebouncer|debouncerclockmodule|clock_counter\(0),
	combout => \keydebouncer|debouncerclockmodule|clock_counter[0]~30_combout\);

-- Location: LCFF_X33_Y2_N7
\keydebouncer|debouncerclockmodule|clock_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \keydebouncer|debouncerclockmodule|clock_counter[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(0));

-- Location: LCCOMB_X34_Y2_N12
\keydebouncer|debouncerclockmodule|clock_counter[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[1]~10_combout\ = (\keydebouncer|debouncerclockmodule|clock_counter\(1) & (\keydebouncer|debouncerclockmodule|clock_counter\(0) $ (VCC))) # (!\keydebouncer|debouncerclockmodule|clock_counter\(1) & 
-- (\keydebouncer|debouncerclockmodule|clock_counter\(0) & VCC))
-- \keydebouncer|debouncerclockmodule|clock_counter[1]~11\ = CARRY((\keydebouncer|debouncerclockmodule|clock_counter\(1) & \keydebouncer|debouncerclockmodule|clock_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncerclockmodule|clock_counter\(1),
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(0),
	datad => VCC,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[1]~10_combout\,
	cout => \keydebouncer|debouncerclockmodule|clock_counter[1]~11\);

-- Location: LCCOMB_X34_Y2_N14
\keydebouncer|debouncerclockmodule|clock_counter[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[2]~12_combout\ = (\keydebouncer|debouncerclockmodule|clock_counter\(2) & (!\keydebouncer|debouncerclockmodule|clock_counter[1]~11\)) # (!\keydebouncer|debouncerclockmodule|clock_counter\(2) & 
-- ((\keydebouncer|debouncerclockmodule|clock_counter[1]~11\) # (GND)))
-- \keydebouncer|debouncerclockmodule|clock_counter[2]~13\ = CARRY((!\keydebouncer|debouncerclockmodule|clock_counter[1]~11\) # (!\keydebouncer|debouncerclockmodule|clock_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncerclockmodule|clock_counter\(2),
	datad => VCC,
	cin => \keydebouncer|debouncerclockmodule|clock_counter[1]~11\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[2]~12_combout\,
	cout => \keydebouncer|debouncerclockmodule|clock_counter[2]~13\);

-- Location: LCCOMB_X34_Y2_N16
\keydebouncer|debouncerclockmodule|clock_counter[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[3]~14_combout\ = (\keydebouncer|debouncerclockmodule|clock_counter\(3) & (\keydebouncer|debouncerclockmodule|clock_counter[2]~13\ $ (GND))) # (!\keydebouncer|debouncerclockmodule|clock_counter\(3) & 
-- (!\keydebouncer|debouncerclockmodule|clock_counter[2]~13\ & VCC))
-- \keydebouncer|debouncerclockmodule|clock_counter[3]~15\ = CARRY((\keydebouncer|debouncerclockmodule|clock_counter\(3) & !\keydebouncer|debouncerclockmodule|clock_counter[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(3),
	datad => VCC,
	cin => \keydebouncer|debouncerclockmodule|clock_counter[2]~13\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[3]~14_combout\,
	cout => \keydebouncer|debouncerclockmodule|clock_counter[3]~15\);

-- Location: LCFF_X33_Y2_N5
\keydebouncer|debouncerclockmodule|clock_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	sdata => \keydebouncer|debouncerclockmodule|clock_counter[3]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(3));

-- Location: LCCOMB_X34_Y2_N22
\keydebouncer|debouncerclockmodule|clock_counter[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[6]~20_combout\ = (\keydebouncer|debouncerclockmodule|clock_counter\(6) & (!\keydebouncer|debouncerclockmodule|clock_counter[5]~19\)) # (!\keydebouncer|debouncerclockmodule|clock_counter\(6) & 
-- ((\keydebouncer|debouncerclockmodule|clock_counter[5]~19\) # (GND)))
-- \keydebouncer|debouncerclockmodule|clock_counter[6]~21\ = CARRY((!\keydebouncer|debouncerclockmodule|clock_counter[5]~19\) # (!\keydebouncer|debouncerclockmodule|clock_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(6),
	datad => VCC,
	cin => \keydebouncer|debouncerclockmodule|clock_counter[5]~19\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[6]~20_combout\,
	cout => \keydebouncer|debouncerclockmodule|clock_counter[6]~21\);

-- Location: LCFF_X34_Y2_N23
\keydebouncer|debouncerclockmodule|clock_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \keydebouncer|debouncerclockmodule|clock_counter[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(6));

-- Location: LCCOMB_X34_Y2_N24
\keydebouncer|debouncerclockmodule|clock_counter[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[7]~22_combout\ = (\keydebouncer|debouncerclockmodule|clock_counter\(7) & (\keydebouncer|debouncerclockmodule|clock_counter[6]~21\ $ (GND))) # (!\keydebouncer|debouncerclockmodule|clock_counter\(7) & 
-- (!\keydebouncer|debouncerclockmodule|clock_counter[6]~21\ & VCC))
-- \keydebouncer|debouncerclockmodule|clock_counter[7]~23\ = CARRY((\keydebouncer|debouncerclockmodule|clock_counter\(7) & !\keydebouncer|debouncerclockmodule|clock_counter[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncerclockmodule|clock_counter\(7),
	datad => VCC,
	cin => \keydebouncer|debouncerclockmodule|clock_counter[6]~21\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[7]~22_combout\,
	cout => \keydebouncer|debouncerclockmodule|clock_counter[7]~23\);

-- Location: LCCOMB_X34_Y2_N26
\keydebouncer|debouncerclockmodule|clock_counter[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncerclockmodule|clock_counter[8]~24_combout\ = (\keydebouncer|debouncerclockmodule|clock_counter\(8) & (!\keydebouncer|debouncerclockmodule|clock_counter[7]~23\)) # (!\keydebouncer|debouncerclockmodule|clock_counter\(8) & 
-- ((\keydebouncer|debouncerclockmodule|clock_counter[7]~23\) # (GND)))
-- \keydebouncer|debouncerclockmodule|clock_counter[8]~25\ = CARRY((!\keydebouncer|debouncerclockmodule|clock_counter[7]~23\) # (!\keydebouncer|debouncerclockmodule|clock_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(8),
	datad => VCC,
	cin => \keydebouncer|debouncerclockmodule|clock_counter[7]~23\,
	combout => \keydebouncer|debouncerclockmodule|clock_counter[8]~24_combout\,
	cout => \keydebouncer|debouncerclockmodule|clock_counter[8]~25\);

-- Location: LCFF_X34_Y2_N27
\keydebouncer|debouncerclockmodule|clock_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \keydebouncer|debouncerclockmodule|clock_counter[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(8));

-- Location: LCFF_X34_Y2_N29
\keydebouncer|debouncerclockmodule|clock_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \keydebouncer|debouncerclockmodule|clock_counter[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(9));

-- Location: LCFF_X34_Y2_N25
\keydebouncer|debouncerclockmodule|clock_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \keydebouncer|debouncerclockmodule|clock_counter[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(7));

-- Location: LCFF_X33_Y2_N3
\keydebouncer|debouncerclockmodule|clock_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	sdata => \keydebouncer|debouncerclockmodule|clock_counter[2]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(2));

-- Location: LCFF_X33_Y2_N9
\keydebouncer|debouncerclockmodule|clock_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	sdata => \keydebouncer|debouncerclockmodule|clock_counter[1]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncerclockmodule|clock_counter\(1));

-- Location: LCCOMB_X33_Y2_N14
\KeyScan0|keypadclock|clock_counter[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[10]~11_cout\ = CARRY((\keydebouncer|debouncerclockmodule|clock_counter\(0) & \keydebouncer|debouncerclockmodule|clock_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncerclockmodule|clock_counter\(0),
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(1),
	datad => VCC,
	cout => \KeyScan0|keypadclock|clock_counter[10]~11_cout\);

-- Location: LCCOMB_X33_Y2_N16
\KeyScan0|keypadclock|clock_counter[10]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[10]~13_cout\ = CARRY((!\KeyScan0|keypadclock|clock_counter[10]~11_cout\) # (!\keydebouncer|debouncerclockmodule|clock_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(2),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[10]~11_cout\,
	cout => \KeyScan0|keypadclock|clock_counter[10]~13_cout\);

-- Location: LCCOMB_X33_Y2_N18
\KeyScan0|keypadclock|clock_counter[10]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[10]~15_cout\ = CARRY((\keydebouncer|debouncerclockmodule|clock_counter\(3) & !\KeyScan0|keypadclock|clock_counter[10]~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(3),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[10]~13_cout\,
	cout => \KeyScan0|keypadclock|clock_counter[10]~15_cout\);

-- Location: LCCOMB_X33_Y2_N20
\KeyScan0|keypadclock|clock_counter[10]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[10]~17_cout\ = CARRY((!\KeyScan0|keypadclock|clock_counter[10]~15_cout\) # (!\keydebouncer|debouncerclockmodule|clock_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncerclockmodule|clock_counter\(4),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[10]~15_cout\,
	cout => \KeyScan0|keypadclock|clock_counter[10]~17_cout\);

-- Location: LCCOMB_X33_Y2_N22
\KeyScan0|keypadclock|clock_counter[10]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[10]~19_cout\ = CARRY((\keydebouncer|debouncerclockmodule|clock_counter\(5) & !\KeyScan0|keypadclock|clock_counter[10]~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncerclockmodule|clock_counter\(5),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[10]~17_cout\,
	cout => \KeyScan0|keypadclock|clock_counter[10]~19_cout\);

-- Location: LCCOMB_X33_Y2_N24
\KeyScan0|keypadclock|clock_counter[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[10]~21_cout\ = CARRY((!\KeyScan0|keypadclock|clock_counter[10]~19_cout\) # (!\keydebouncer|debouncerclockmodule|clock_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(6),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[10]~19_cout\,
	cout => \KeyScan0|keypadclock|clock_counter[10]~21_cout\);

-- Location: LCCOMB_X33_Y2_N26
\KeyScan0|keypadclock|clock_counter[10]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[10]~23_cout\ = CARRY((\keydebouncer|debouncerclockmodule|clock_counter\(7) & !\KeyScan0|keypadclock|clock_counter[10]~21_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(7),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[10]~21_cout\,
	cout => \KeyScan0|keypadclock|clock_counter[10]~23_cout\);

-- Location: LCCOMB_X33_Y2_N28
\KeyScan0|keypadclock|clock_counter[10]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[10]~25_cout\ = CARRY((!\KeyScan0|keypadclock|clock_counter[10]~23_cout\) # (!\keydebouncer|debouncerclockmodule|clock_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncerclockmodule|clock_counter\(8),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[10]~23_cout\,
	cout => \KeyScan0|keypadclock|clock_counter[10]~25_cout\);

-- Location: LCCOMB_X33_Y2_N30
\KeyScan0|keypadclock|clock_counter[10]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[10]~27_cout\ = CARRY((\keydebouncer|debouncerclockmodule|clock_counter\(9) & !\KeyScan0|keypadclock|clock_counter[10]~25_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncerclockmodule|clock_counter\(9),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[10]~25_cout\,
	cout => \KeyScan0|keypadclock|clock_counter[10]~27_cout\);

-- Location: LCCOMB_X33_Y1_N0
\KeyScan0|keypadclock|clock_counter[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[10]~28_combout\ = (\KeyScan0|keypadclock|clock_counter\(10) & (!\KeyScan0|keypadclock|clock_counter[10]~27_cout\)) # (!\KeyScan0|keypadclock|clock_counter\(10) & ((\KeyScan0|keypadclock|clock_counter[10]~27_cout\) # 
-- (GND)))
-- \KeyScan0|keypadclock|clock_counter[10]~29\ = CARRY((!\KeyScan0|keypadclock|clock_counter[10]~27_cout\) # (!\KeyScan0|keypadclock|clock_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|keypadclock|clock_counter\(10),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[10]~27_cout\,
	combout => \KeyScan0|keypadclock|clock_counter[10]~28_combout\,
	cout => \KeyScan0|keypadclock|clock_counter[10]~29\);

-- Location: LCFF_X33_Y1_N1
\KeyScan0|keypadclock|clock_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \KeyScan0|keypadclock|clock_counter[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypadclock|clock_counter\(10));

-- Location: LCCOMB_X33_Y1_N2
\KeyScan0|keypadclock|clock_counter[11]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[11]~30_combout\ = (\KeyScan0|keypadclock|clock_counter\(11) & (\KeyScan0|keypadclock|clock_counter[10]~29\ $ (GND))) # (!\KeyScan0|keypadclock|clock_counter\(11) & (!\KeyScan0|keypadclock|clock_counter[10]~29\ & VCC))
-- \KeyScan0|keypadclock|clock_counter[11]~31\ = CARRY((\KeyScan0|keypadclock|clock_counter\(11) & !\KeyScan0|keypadclock|clock_counter[10]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|keypadclock|clock_counter\(11),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[10]~29\,
	combout => \KeyScan0|keypadclock|clock_counter[11]~30_combout\,
	cout => \KeyScan0|keypadclock|clock_counter[11]~31\);

-- Location: LCFF_X33_Y1_N3
\KeyScan0|keypadclock|clock_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \KeyScan0|keypadclock|clock_counter[11]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypadclock|clock_counter\(11));

-- Location: LCCOMB_X33_Y1_N4
\KeyScan0|keypadclock|clock_counter[12]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[12]~32_combout\ = (\KeyScan0|keypadclock|clock_counter\(12) & (!\KeyScan0|keypadclock|clock_counter[11]~31\)) # (!\KeyScan0|keypadclock|clock_counter\(12) & ((\KeyScan0|keypadclock|clock_counter[11]~31\) # (GND)))
-- \KeyScan0|keypadclock|clock_counter[12]~33\ = CARRY((!\KeyScan0|keypadclock|clock_counter[11]~31\) # (!\KeyScan0|keypadclock|clock_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|keypadclock|clock_counter\(12),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[11]~31\,
	combout => \KeyScan0|keypadclock|clock_counter[12]~32_combout\,
	cout => \KeyScan0|keypadclock|clock_counter[12]~33\);

-- Location: LCFF_X33_Y1_N5
\KeyScan0|keypadclock|clock_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \KeyScan0|keypadclock|clock_counter[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypadclock|clock_counter\(12));

-- Location: LCCOMB_X33_Y1_N8
\KeyScan0|keypadclock|clock_counter[14]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[14]~36_combout\ = (\KeyScan0|keypadclock|clock_counter\(14) & (!\KeyScan0|keypadclock|clock_counter[13]~35\)) # (!\KeyScan0|keypadclock|clock_counter\(14) & ((\KeyScan0|keypadclock|clock_counter[13]~35\) # (GND)))
-- \KeyScan0|keypadclock|clock_counter[14]~37\ = CARRY((!\KeyScan0|keypadclock|clock_counter[13]~35\) # (!\KeyScan0|keypadclock|clock_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|keypadclock|clock_counter\(14),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[13]~35\,
	combout => \KeyScan0|keypadclock|clock_counter[14]~36_combout\,
	cout => \KeyScan0|keypadclock|clock_counter[14]~37\);

-- Location: LCFF_X33_Y1_N9
\KeyScan0|keypadclock|clock_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \KeyScan0|keypadclock|clock_counter[14]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypadclock|clock_counter\(14));

-- Location: LCCOMB_X33_Y1_N14
\KeyScan0|keypadclock|clock_counter[17]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[17]~42_combout\ = (\KeyScan0|keypadclock|clock_counter\(17) & (\KeyScan0|keypadclock|clock_counter[16]~41\ $ (GND))) # (!\KeyScan0|keypadclock|clock_counter\(17) & (!\KeyScan0|keypadclock|clock_counter[16]~41\ & VCC))
-- \KeyScan0|keypadclock|clock_counter[17]~43\ = CARRY((\KeyScan0|keypadclock|clock_counter\(17) & !\KeyScan0|keypadclock|clock_counter[16]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|keypadclock|clock_counter\(17),
	datad => VCC,
	cin => \KeyScan0|keypadclock|clock_counter[16]~41\,
	combout => \KeyScan0|keypadclock|clock_counter[17]~42_combout\,
	cout => \KeyScan0|keypadclock|clock_counter[17]~43\);

-- Location: LCFF_X33_Y1_N15
\KeyScan0|keypadclock|clock_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \KeyScan0|keypadclock|clock_counter[17]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypadclock|clock_counter\(17));

-- Location: LCCOMB_X33_Y1_N18
\KeyScan0|keypadclock|clock_counter[19]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|keypadclock|clock_counter[19]~46_combout\ = \KeyScan0|keypadclock|clock_counter[18]~45\ $ (!\KeyScan0|keypadclock|clock_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \KeyScan0|keypadclock|clock_counter\(19),
	cin => \KeyScan0|keypadclock|clock_counter[18]~45\,
	combout => \KeyScan0|keypadclock|clock_counter[19]~46_combout\);

-- Location: LCFF_X33_Y1_N19
\KeyScan0|keypadclock|clock_counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \KeyScan0|keypadclock|clock_counter[19]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypadclock|clock_counter\(19));

-- Location: CLKCTRL_G12
\KeyScan0|keypadclock|clock_counter[19]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KeyScan0|keypadclock|clock_counter[19]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KeyScan0|keypadclock|clock_counter[19]~clkctrl_outclk\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ROW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ROW(2),
	combout => \ROW~combout\(2));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ROW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ROW(3),
	combout => \ROW~combout\(3));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ROW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ROW(1),
	combout => \ROW~combout\(1));

-- Location: LCCOMB_X54_Y29_N8
\KeyScan0|WideAnd0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|WideAnd0~0_combout\ = (((!\ROW~combout\(1)) # (!\ROW~combout\(3))) # (!\ROW~combout\(2))) # (!\ROW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW~combout\(0),
	datab => \ROW~combout\(2),
	datac => \ROW~combout\(3),
	datad => \ROW~combout\(1),
	combout => \KeyScan0|WideAnd0~0_combout\);

-- Location: LCCOMB_X51_Y29_N4
\KeyScan0|n~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|n~0_combout\ = \KeyScan0|WideAnd0~0_combout\ $ (!\KeyScan0|n\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|WideAnd0~0_combout\,
	datac => \KeyScan0|n\(0),
	combout => \KeyScan0|n~0_combout\);

-- Location: LCFF_X51_Y29_N5
\KeyScan0|n[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KeyScan0|keypadclock|clock_counter[19]~clkctrl_outclk\,
	datain => \KeyScan0|n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|n\(0));

-- Location: LCCOMB_X51_Y29_N14
\KeyScan0|n~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|n~1_combout\ = \KeyScan0|n\(1) $ (((!\KeyScan0|WideAnd0~0_combout\ & \KeyScan0|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|WideAnd0~0_combout\,
	datac => \KeyScan0|n\(1),
	datad => \KeyScan0|n\(0),
	combout => \KeyScan0|n~1_combout\);

-- Location: LCFF_X51_Y29_N15
\KeyScan0|n[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KeyScan0|keypadclock|clock_counter[19]~clkctrl_outclk\,
	datain => \KeyScan0|n~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|n\(1));

-- Location: LCCOMB_X51_Y29_N8
\KeyScan0|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|Decoder0~0_combout\ = (\KeyScan0|WideAnd0~0_combout\ & ((\KeyScan0|n\(0)) # (\KeyScan0|n\(1)))) # (!\KeyScan0|WideAnd0~0_combout\ & ((!\KeyScan0|n\(1)) # (!\KeyScan0|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|WideAnd0~0_combout\,
	datac => \KeyScan0|n\(0),
	datad => \KeyScan0|n\(1),
	combout => \KeyScan0|Decoder0~0_combout\);

-- Location: LCFF_X51_Y29_N9
\KeyScan0|col[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KeyScan0|keypadclock|clock_counter[19]~clkctrl_outclk\,
	datain => \KeyScan0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|col\(0));

-- Location: LCCOMB_X51_Y29_N2
\KeyScan0|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|Decoder0~1_combout\ = (\KeyScan0|n\(1)) # (\KeyScan0|WideAnd0~0_combout\ $ (\KeyScan0|n\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|WideAnd0~0_combout\,
	datac => \KeyScan0|n\(0),
	datad => \KeyScan0|n\(1),
	combout => \KeyScan0|Decoder0~1_combout\);

-- Location: LCFF_X51_Y29_N3
\KeyScan0|col[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KeyScan0|keypadclock|clock_counter[19]~clkctrl_outclk\,
	datain => \KeyScan0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|col\(1));

-- Location: LCCOMB_X51_Y29_N20
\KeyScan0|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|Decoder0~2_combout\ = (\KeyScan0|WideAnd0~0_combout\ & ((\KeyScan0|n\(0)) # (!\KeyScan0|n\(1)))) # (!\KeyScan0|WideAnd0~0_combout\ & ((\KeyScan0|n\(1)) # (!\KeyScan0|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|WideAnd0~0_combout\,
	datac => \KeyScan0|n\(0),
	datad => \KeyScan0|n\(1),
	combout => \KeyScan0|Decoder0~2_combout\);

-- Location: LCFF_X51_Y29_N21
\KeyScan0|col[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KeyScan0|keypadclock|clock_counter[19]~clkctrl_outclk\,
	datain => \KeyScan0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|col\(2));

-- Location: LCCOMB_X51_Y29_N18
\KeyScan0|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \KeyScan0|Decoder0~3_combout\ = (\KeyScan0|WideAnd0~0_combout\ $ (\KeyScan0|n\(0))) # (!\KeyScan0|n\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan0|WideAnd0~0_combout\,
	datac => \KeyScan0|n\(1),
	datad => \KeyScan0|n\(0),
	combout => \KeyScan0|Decoder0~3_combout\);

-- Location: LCFF_X51_Y29_N19
\KeyScan0|col[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KeyScan0|keypadclock|clock_counter[19]~clkctrl_outclk\,
	datain => \KeyScan0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|col\(3));

-- Location: LCFF_X32_Y33_N23
\keydebouncer|debouncetimer[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	sdata => \keydebouncer|debouncetimer~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(9));

-- Location: LCFF_X32_Y33_N19
\KeyScan0|keypressed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KeyScan0|keypadclock|clock_counter[19]~clkctrl_outclk\,
	sdata => \KeyScan0|WideAnd0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \KeyScan0|keypressed~regout\);

-- Location: LCCOMB_X33_Y33_N20
\keydebouncer|debouncetimer~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~2_combout\ = (\keydebouncer|Add0~34_combout\ & ((\keydebouncer|debouncetimer~0_combout\) # ((\KeyScan0|keypressed~regout\ & \keydebouncer|debouncetimer\(17))))) # (!\keydebouncer|Add0~34_combout\ & (\KeyScan0|keypressed~regout\ 
-- & (\keydebouncer|debouncetimer\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|Add0~34_combout\,
	datab => \KeyScan0|keypressed~regout\,
	datac => \keydebouncer|debouncetimer\(17),
	datad => \keydebouncer|debouncetimer~0_combout\,
	combout => \keydebouncer|debouncetimer~2_combout\);

-- Location: LCFF_X33_Y33_N21
\keydebouncer|debouncetimer[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(17));

-- Location: LCCOMB_X31_Y32_N22
\keydebouncer|debouncetimer~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~24_combout\ = (\keydebouncer|Add0~32_combout\ & ((\keydebouncer|debouncetimer~0_combout\) # ((\keydebouncer|debouncetimer\(16) & \KeyScan0|keypressed~regout\)))) # (!\keydebouncer|Add0~32_combout\ & 
-- (((\keydebouncer|debouncetimer\(16) & \KeyScan0|keypressed~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|Add0~32_combout\,
	datab => \keydebouncer|debouncetimer~0_combout\,
	datac => \keydebouncer|debouncetimer\(16),
	datad => \KeyScan0|keypressed~regout\,
	combout => \keydebouncer|debouncetimer~24_combout\);

-- Location: LCFF_X31_Y32_N23
\keydebouncer|debouncetimer[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(16));

-- Location: LCCOMB_X31_Y32_N28
\keydebouncer|debouncetimer~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~25_combout\ = (\keydebouncer|Add0~30_combout\ & ((\keydebouncer|debouncetimer~0_combout\) # ((\keydebouncer|debouncetimer\(15) & \KeyScan0|keypressed~regout\)))) # (!\keydebouncer|Add0~30_combout\ & 
-- (((\keydebouncer|debouncetimer\(15) & \KeyScan0|keypressed~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|Add0~30_combout\,
	datab => \keydebouncer|debouncetimer~0_combout\,
	datac => \keydebouncer|debouncetimer\(15),
	datad => \KeyScan0|keypressed~regout\,
	combout => \keydebouncer|debouncetimer~25_combout\);

-- Location: LCFF_X31_Y32_N29
\keydebouncer|debouncetimer[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(15));

-- Location: LCCOMB_X32_Y33_N0
\keydebouncer|debouncetimer~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~16_combout\ = (\keydebouncer|Add0~26_combout\ & ((\keydebouncer|debouncetimer~0_combout\) # ((\KeyScan0|keypressed~regout\ & \keydebouncer|debouncetimer\(13))))) # (!\keydebouncer|Add0~26_combout\ & 
-- (\KeyScan0|keypressed~regout\ & (\keydebouncer|debouncetimer\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|Add0~26_combout\,
	datab => \KeyScan0|keypressed~regout\,
	datac => \keydebouncer|debouncetimer\(13),
	datad => \keydebouncer|debouncetimer~0_combout\,
	combout => \keydebouncer|debouncetimer~16_combout\);

-- Location: LCFF_X32_Y33_N1
\keydebouncer|debouncetimer[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(13));

-- Location: LCCOMB_X31_Y33_N30
\keydebouncer|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~18_combout\ = (\keydebouncer|debouncetimer\(9) & (!\keydebouncer|Add0~17\)) # (!\keydebouncer|debouncetimer\(9) & ((\keydebouncer|Add0~17\) # (GND)))
-- \keydebouncer|Add0~19\ = CARRY((!\keydebouncer|Add0~17\) # (!\keydebouncer|debouncetimer\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(9),
	datad => VCC,
	cin => \keydebouncer|Add0~17\,
	combout => \keydebouncer|Add0~18_combout\,
	cout => \keydebouncer|Add0~19\);

-- Location: LCCOMB_X31_Y32_N0
\keydebouncer|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~20_combout\ = (\keydebouncer|debouncetimer\(10) & (\keydebouncer|Add0~19\ $ (GND))) # (!\keydebouncer|debouncetimer\(10) & (!\keydebouncer|Add0~19\ & VCC))
-- \keydebouncer|Add0~21\ = CARRY((\keydebouncer|debouncetimer\(10) & !\keydebouncer|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(10),
	datad => VCC,
	cin => \keydebouncer|Add0~19\,
	combout => \keydebouncer|Add0~20_combout\,
	cout => \keydebouncer|Add0~21\);

-- Location: LCCOMB_X31_Y33_N26
\keydebouncer|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~14_combout\ = (\keydebouncer|debouncetimer\(7) & (!\keydebouncer|Add0~13\)) # (!\keydebouncer|debouncetimer\(7) & ((\keydebouncer|Add0~13\) # (GND)))
-- \keydebouncer|Add0~15\ = CARRY((!\keydebouncer|Add0~13\) # (!\keydebouncer|debouncetimer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(7),
	datad => VCC,
	cin => \keydebouncer|Add0~13\,
	combout => \keydebouncer|Add0~14_combout\,
	cout => \keydebouncer|Add0~15\);

-- Location: LCCOMB_X32_Y33_N4
\keydebouncer|debouncetimer~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~8_combout\ = (\keydebouncer|debouncetimer~0_combout\ & ((\keydebouncer|Add0~14_combout\) # ((\keydebouncer|debouncetimer\(7) & \KeyScan0|keypressed~regout\)))) # (!\keydebouncer|debouncetimer~0_combout\ & 
-- (((\keydebouncer|debouncetimer\(7) & \KeyScan0|keypressed~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer~0_combout\,
	datab => \keydebouncer|Add0~14_combout\,
	datac => \keydebouncer|debouncetimer\(7),
	datad => \KeyScan0|keypressed~regout\,
	combout => \keydebouncer|debouncetimer~8_combout\);

-- Location: LCFF_X32_Y33_N5
\keydebouncer|debouncetimer[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(7));

-- Location: LCCOMB_X32_Y33_N22
\keydebouncer|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan0~2_combout\ = (\keydebouncer|debouncetimer\(6)) # ((\keydebouncer|debouncetimer\(7)) # ((\keydebouncer|debouncetimer\(9)) # (\keydebouncer|debouncetimer\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(6),
	datab => \keydebouncer|debouncetimer\(7),
	datac => \keydebouncer|debouncetimer\(9),
	datad => \keydebouncer|debouncetimer\(8),
	combout => \keydebouncer|LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y33_N12
\keydebouncer|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~0_combout\ = \keydebouncer|debouncetimer\(0) $ (VCC)
-- \keydebouncer|Add0~1\ = CARRY(\keydebouncer|debouncetimer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(0),
	datad => VCC,
	combout => \keydebouncer|Add0~0_combout\,
	cout => \keydebouncer|Add0~1\);

-- Location: LCCOMB_X31_Y33_N2
\keydebouncer|debouncetimer~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~23_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|LessThan0~9_combout\ & ((\keydebouncer|debouncetimer\(0)))) # (!\keydebouncer|LessThan0~9_combout\ & (\keydebouncer|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypressed~regout\,
	datab => \keydebouncer|Add0~0_combout\,
	datac => \keydebouncer|debouncetimer\(0),
	datad => \keydebouncer|LessThan0~9_combout\,
	combout => \keydebouncer|debouncetimer~23_combout\);

-- Location: LCFF_X31_Y33_N3
\keydebouncer|debouncetimer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(0));

-- Location: LCCOMB_X31_Y33_N14
\keydebouncer|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~2_combout\ = (\keydebouncer|debouncetimer\(1) & (!\keydebouncer|Add0~1\)) # (!\keydebouncer|debouncetimer\(1) & ((\keydebouncer|Add0~1\) # (GND)))
-- \keydebouncer|Add0~3\ = CARRY((!\keydebouncer|Add0~1\) # (!\keydebouncer|debouncetimer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(1),
	datad => VCC,
	cin => \keydebouncer|Add0~1\,
	combout => \keydebouncer|Add0~2_combout\,
	cout => \keydebouncer|Add0~3\);

-- Location: LCCOMB_X31_Y33_N8
\keydebouncer|debouncetimer~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~22_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|LessThan0~9_combout\ & ((\keydebouncer|debouncetimer\(1)))) # (!\keydebouncer|LessThan0~9_combout\ & (\keydebouncer|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypressed~regout\,
	datab => \keydebouncer|Add0~2_combout\,
	datac => \keydebouncer|debouncetimer\(1),
	datad => \keydebouncer|LessThan0~9_combout\,
	combout => \keydebouncer|debouncetimer~22_combout\);

-- Location: LCFF_X31_Y33_N9
\keydebouncer|debouncetimer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(1));

-- Location: LCCOMB_X31_Y33_N16
\keydebouncer|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~4_combout\ = (\keydebouncer|debouncetimer\(2) & (\keydebouncer|Add0~3\ $ (GND))) # (!\keydebouncer|debouncetimer\(2) & (!\keydebouncer|Add0~3\ & VCC))
-- \keydebouncer|Add0~5\ = CARRY((\keydebouncer|debouncetimer\(2) & !\keydebouncer|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(2),
	datad => VCC,
	cin => \keydebouncer|Add0~3\,
	combout => \keydebouncer|Add0~4_combout\,
	cout => \keydebouncer|Add0~5\);

-- Location: LCCOMB_X31_Y33_N6
\keydebouncer|debouncetimer~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~21_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|LessThan0~9_combout\ & ((\keydebouncer|debouncetimer\(2)))) # (!\keydebouncer|LessThan0~9_combout\ & (\keydebouncer|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypressed~regout\,
	datab => \keydebouncer|Add0~4_combout\,
	datac => \keydebouncer|debouncetimer\(2),
	datad => \keydebouncer|LessThan0~9_combout\,
	combout => \keydebouncer|debouncetimer~21_combout\);

-- Location: LCFF_X31_Y33_N7
\keydebouncer|debouncetimer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(2));

-- Location: LCCOMB_X31_Y33_N18
\keydebouncer|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~6_combout\ = (\keydebouncer|debouncetimer\(3) & (!\keydebouncer|Add0~5\)) # (!\keydebouncer|debouncetimer\(3) & ((\keydebouncer|Add0~5\) # (GND)))
-- \keydebouncer|Add0~7\ = CARRY((!\keydebouncer|Add0~5\) # (!\keydebouncer|debouncetimer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(3),
	datad => VCC,
	cin => \keydebouncer|Add0~5\,
	combout => \keydebouncer|Add0~6_combout\,
	cout => \keydebouncer|Add0~7\);

-- Location: LCCOMB_X31_Y33_N4
\keydebouncer|debouncetimer~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~20_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|LessThan0~9_combout\ & ((\keydebouncer|debouncetimer\(3)))) # (!\keydebouncer|LessThan0~9_combout\ & (\keydebouncer|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypressed~regout\,
	datab => \keydebouncer|Add0~6_combout\,
	datac => \keydebouncer|debouncetimer\(3),
	datad => \keydebouncer|LessThan0~9_combout\,
	combout => \keydebouncer|debouncetimer~20_combout\);

-- Location: LCFF_X31_Y33_N5
\keydebouncer|debouncetimer[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(3));

-- Location: LCCOMB_X32_Y33_N8
\keydebouncer|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan0~4_combout\ = (\keydebouncer|debouncetimer\(2)) # ((\keydebouncer|debouncetimer\(3)) # ((\keydebouncer|debouncetimer\(1) & \keydebouncer|debouncetimer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(1),
	datab => \keydebouncer|debouncetimer\(2),
	datac => \keydebouncer|debouncetimer\(3),
	datad => \keydebouncer|debouncetimer\(0),
	combout => \keydebouncer|LessThan0~4_combout\);

-- Location: LCCOMB_X31_Y33_N20
\keydebouncer|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~8_combout\ = (\keydebouncer|debouncetimer\(4) & (\keydebouncer|Add0~7\ $ (GND))) # (!\keydebouncer|debouncetimer\(4) & (!\keydebouncer|Add0~7\ & VCC))
-- \keydebouncer|Add0~9\ = CARRY((\keydebouncer|debouncetimer\(4) & !\keydebouncer|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(4),
	datad => VCC,
	cin => \keydebouncer|Add0~7\,
	combout => \keydebouncer|Add0~8_combout\,
	cout => \keydebouncer|Add0~9\);

-- Location: LCCOMB_X31_Y33_N22
\keydebouncer|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~10_combout\ = (\keydebouncer|debouncetimer\(5) & (!\keydebouncer|Add0~9\)) # (!\keydebouncer|debouncetimer\(5) & ((\keydebouncer|Add0~9\) # (GND)))
-- \keydebouncer|Add0~11\ = CARRY((!\keydebouncer|Add0~9\) # (!\keydebouncer|debouncetimer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(5),
	datad => VCC,
	cin => \keydebouncer|Add0~9\,
	combout => \keydebouncer|Add0~10_combout\,
	cout => \keydebouncer|Add0~11\);

-- Location: LCCOMB_X31_Y33_N0
\keydebouncer|debouncetimer~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~18_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|LessThan0~9_combout\ & ((\keydebouncer|debouncetimer\(5)))) # (!\keydebouncer|LessThan0~9_combout\ & (\keydebouncer|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypressed~regout\,
	datab => \keydebouncer|Add0~10_combout\,
	datac => \keydebouncer|debouncetimer\(5),
	datad => \keydebouncer|LessThan0~9_combout\,
	combout => \keydebouncer|debouncetimer~18_combout\);

-- Location: LCFF_X31_Y33_N1
\keydebouncer|debouncetimer[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(5));

-- Location: LCCOMB_X31_Y33_N10
\keydebouncer|debouncetimer~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~19_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|LessThan0~9_combout\ & ((\keydebouncer|debouncetimer\(4)))) # (!\keydebouncer|LessThan0~9_combout\ & (\keydebouncer|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|Add0~8_combout\,
	datab => \KeyScan0|keypressed~regout\,
	datac => \keydebouncer|debouncetimer\(4),
	datad => \keydebouncer|LessThan0~9_combout\,
	combout => \keydebouncer|debouncetimer~19_combout\);

-- Location: LCFF_X31_Y33_N11
\keydebouncer|debouncetimer[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(4));

-- Location: LCCOMB_X32_Y33_N2
\keydebouncer|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan0~5_combout\ = (\keydebouncer|debouncetimer\(5) & \keydebouncer|debouncetimer\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keydebouncer|debouncetimer\(5),
	datad => \keydebouncer|debouncetimer\(4),
	combout => \keydebouncer|LessThan0~5_combout\);

-- Location: LCCOMB_X32_Y33_N28
\keydebouncer|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan0~6_combout\ = (\keydebouncer|LessThan0~3_combout\) # ((\keydebouncer|LessThan0~2_combout\) # ((\keydebouncer|LessThan0~4_combout\ & \keydebouncer|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|LessThan0~3_combout\,
	datab => \keydebouncer|LessThan0~2_combout\,
	datac => \keydebouncer|LessThan0~4_combout\,
	datad => \keydebouncer|LessThan0~5_combout\,
	combout => \keydebouncer|LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y32_N18
\keydebouncer|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~38_combout\ = (\keydebouncer|debouncetimer\(19) & (!\keydebouncer|Add0~37\)) # (!\keydebouncer|debouncetimer\(19) & ((\keydebouncer|Add0~37\) # (GND)))
-- \keydebouncer|Add0~39\ = CARRY((!\keydebouncer|Add0~37\) # (!\keydebouncer|debouncetimer\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(19),
	datad => VCC,
	cin => \keydebouncer|Add0~37\,
	combout => \keydebouncer|Add0~38_combout\,
	cout => \keydebouncer|Add0~39\);

-- Location: LCCOMB_X32_Y33_N14
\keydebouncer|debouncetimer~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~14_combout\ = (\keydebouncer|debouncetimer~0_combout\ & ((\keydebouncer|Add0~38_combout\) # ((\KeyScan0|keypressed~regout\ & \keydebouncer|debouncetimer\(19))))) # (!\keydebouncer|debouncetimer~0_combout\ & 
-- (\KeyScan0|keypressed~regout\ & (\keydebouncer|debouncetimer\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer~0_combout\,
	datab => \KeyScan0|keypressed~regout\,
	datac => \keydebouncer|debouncetimer\(19),
	datad => \keydebouncer|Add0~38_combout\,
	combout => \keydebouncer|debouncetimer~14_combout\);

-- Location: LCFF_X32_Y33_N15
\keydebouncer|debouncetimer[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(19));

-- Location: LCCOMB_X32_Y33_N30
\keydebouncer|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan0~7_combout\ = (\keydebouncer|debouncetimer\(14)) # ((\keydebouncer|debouncetimer\(17)) # ((\keydebouncer|debouncetimer\(16)) # (\keydebouncer|debouncetimer\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(14),
	datab => \keydebouncer|debouncetimer\(17),
	datac => \keydebouncer|debouncetimer\(16),
	datad => \keydebouncer|debouncetimer\(15),
	combout => \keydebouncer|LessThan0~7_combout\);

-- Location: LCCOMB_X32_Y33_N24
\keydebouncer|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan0~8_combout\ = (\keydebouncer|debouncetimer\(18)) # ((\keydebouncer|debouncetimer\(19)) # (\keydebouncer|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(18),
	datac => \keydebouncer|debouncetimer\(19),
	datad => \keydebouncer|LessThan0~7_combout\,
	combout => \keydebouncer|LessThan0~8_combout\);

-- Location: LCCOMB_X30_Y33_N10
\keydebouncer|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan0~9_combout\ = (\keydebouncer|debouncetimer\(20)) # ((\keydebouncer|LessThan0~6_combout\) # (\keydebouncer|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(20),
	datac => \keydebouncer|LessThan0~6_combout\,
	datad => \keydebouncer|LessThan0~8_combout\,
	combout => \keydebouncer|LessThan0~9_combout\);

-- Location: LCCOMB_X32_Y33_N16
\keydebouncer|debouncetimer~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~17_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|debouncetimer\(10)) # ((\keydebouncer|Add0~20_combout\ & !\keydebouncer|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypressed~regout\,
	datab => \keydebouncer|Add0~20_combout\,
	datac => \keydebouncer|debouncetimer\(10),
	datad => \keydebouncer|LessThan0~9_combout\,
	combout => \keydebouncer|debouncetimer~17_combout\);

-- Location: LCFF_X32_Y33_N17
\keydebouncer|debouncetimer[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(10));

-- Location: LCCOMB_X31_Y32_N2
\keydebouncer|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~22_combout\ = (\keydebouncer|debouncetimer\(11) & (!\keydebouncer|Add0~21\)) # (!\keydebouncer|debouncetimer\(11) & ((\keydebouncer|Add0~21\) # (GND)))
-- \keydebouncer|Add0~23\ = CARRY((!\keydebouncer|Add0~21\) # (!\keydebouncer|debouncetimer\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(11),
	datad => VCC,
	cin => \keydebouncer|Add0~21\,
	combout => \keydebouncer|Add0~22_combout\,
	cout => \keydebouncer|Add0~23\);

-- Location: LCCOMB_X31_Y32_N4
\keydebouncer|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~24_combout\ = (\keydebouncer|debouncetimer\(12) & (\keydebouncer|Add0~23\ $ (GND))) # (!\keydebouncer|debouncetimer\(12) & (!\keydebouncer|Add0~23\ & VCC))
-- \keydebouncer|Add0~25\ = CARRY((\keydebouncer|debouncetimer\(12) & !\keydebouncer|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(12),
	datad => VCC,
	cin => \keydebouncer|Add0~23\,
	combout => \keydebouncer|Add0~24_combout\,
	cout => \keydebouncer|Add0~25\);

-- Location: LCCOMB_X31_Y32_N8
\keydebouncer|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~28_combout\ = (\keydebouncer|debouncetimer\(14) & (\keydebouncer|Add0~27\ $ (GND))) # (!\keydebouncer|debouncetimer\(14) & (!\keydebouncer|Add0~27\ & VCC))
-- \keydebouncer|Add0~29\ = CARRY((\keydebouncer|debouncetimer\(14) & !\keydebouncer|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(14),
	datad => VCC,
	cin => \keydebouncer|Add0~27\,
	combout => \keydebouncer|Add0~28_combout\,
	cout => \keydebouncer|Add0~29\);

-- Location: LCCOMB_X33_Y33_N4
\keydebouncer|debouncetimer~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~15_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|debouncetimer\(14)) # ((\keydebouncer|Add0~28_combout\ & \keydebouncer|debouncetimer~0_combout\)))) # (!\KeyScan0|keypressed~regout\ & 
-- (\keydebouncer|Add0~28_combout\ & ((\keydebouncer|debouncetimer~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypressed~regout\,
	datab => \keydebouncer|Add0~28_combout\,
	datac => \keydebouncer|debouncetimer\(14),
	datad => \keydebouncer|debouncetimer~0_combout\,
	combout => \keydebouncer|debouncetimer~15_combout\);

-- Location: LCFF_X33_Y33_N5
\keydebouncer|debouncetimer[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(14));

-- Location: LCCOMB_X31_Y32_N16
\keydebouncer|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~36_combout\ = (\keydebouncer|debouncetimer\(18) & (\keydebouncer|Add0~35\ $ (GND))) # (!\keydebouncer|debouncetimer\(18) & (!\keydebouncer|Add0~35\ & VCC))
-- \keydebouncer|Add0~37\ = CARRY((\keydebouncer|debouncetimer\(18) & !\keydebouncer|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(18),
	datad => VCC,
	cin => \keydebouncer|Add0~35\,
	combout => \keydebouncer|Add0~36_combout\,
	cout => \keydebouncer|Add0~37\);

-- Location: LCCOMB_X32_Y33_N12
\keydebouncer|debouncetimer~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~1_combout\ = (\keydebouncer|debouncetimer~0_combout\ & ((\keydebouncer|Add0~36_combout\) # ((\KeyScan0|keypressed~regout\ & \keydebouncer|debouncetimer\(18))))) # (!\keydebouncer|debouncetimer~0_combout\ & 
-- (\KeyScan0|keypressed~regout\ & (\keydebouncer|debouncetimer\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer~0_combout\,
	datab => \KeyScan0|keypressed~regout\,
	datac => \keydebouncer|debouncetimer\(18),
	datad => \keydebouncer|Add0~36_combout\,
	combout => \keydebouncer|debouncetimer~1_combout\);

-- Location: LCFF_X32_Y33_N13
\keydebouncer|debouncetimer[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(18));

-- Location: LCCOMB_X31_Y32_N20
\keydebouncer|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~40_combout\ = \keydebouncer|Add0~39\ $ (!\keydebouncer|debouncetimer\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \keydebouncer|debouncetimer\(20),
	cin => \keydebouncer|Add0~39\,
	combout => \keydebouncer|Add0~40_combout\);

-- Location: LCCOMB_X33_Y33_N10
\keydebouncer|debouncetimer~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~3_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|debouncetimer\(20)) # ((!\keydebouncer|LessThan0~10_combout\ & \keydebouncer|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|LessThan0~10_combout\,
	datab => \KeyScan0|keypressed~regout\,
	datac => \keydebouncer|debouncetimer\(20),
	datad => \keydebouncer|Add0~40_combout\,
	combout => \keydebouncer|debouncetimer~3_combout\);

-- Location: LCFF_X33_Y33_N11
\keydebouncer|debouncetimer[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(20));

-- Location: LCCOMB_X32_Y33_N18
\keydebouncer|debouncetimer~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~0_combout\ = (!\keydebouncer|LessThan0~8_combout\ & (!\keydebouncer|debouncetimer\(20) & (\KeyScan0|keypressed~regout\ & !\keydebouncer|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|LessThan0~8_combout\,
	datab => \keydebouncer|debouncetimer\(20),
	datac => \KeyScan0|keypressed~regout\,
	datad => \keydebouncer|LessThan0~6_combout\,
	combout => \keydebouncer|debouncetimer~0_combout\);

-- Location: LCCOMB_X32_Y33_N10
\keydebouncer|debouncetimer~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~9_combout\ = (\keydebouncer|Add0~12_combout\ & ((\keydebouncer|debouncetimer~0_combout\) # ((\KeyScan0|keypressed~regout\ & \keydebouncer|debouncetimer\(6))))) # (!\keydebouncer|Add0~12_combout\ & (\KeyScan0|keypressed~regout\ 
-- & (\keydebouncer|debouncetimer\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|Add0~12_combout\,
	datab => \KeyScan0|keypressed~regout\,
	datac => \keydebouncer|debouncetimer\(6),
	datad => \keydebouncer|debouncetimer~0_combout\,
	combout => \keydebouncer|debouncetimer~9_combout\);

-- Location: LCFF_X32_Y33_N11
\keydebouncer|debouncetimer[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(6));

-- Location: LCCOMB_X31_Y33_N28
\keydebouncer|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|Add0~16_combout\ = (\keydebouncer|debouncetimer\(8) & (\keydebouncer|Add0~15\ $ (GND))) # (!\keydebouncer|debouncetimer\(8) & (!\keydebouncer|Add0~15\ & VCC))
-- \keydebouncer|Add0~17\ = CARRY((\keydebouncer|debouncetimer\(8) & !\keydebouncer|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(8),
	datad => VCC,
	cin => \keydebouncer|Add0~15\,
	combout => \keydebouncer|Add0~16_combout\,
	cout => \keydebouncer|Add0~17\);

-- Location: LCCOMB_X33_Y33_N30
\keydebouncer|debouncetimer~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~13_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|debouncetimer\(8)) # ((\keydebouncer|Add0~16_combout\ & \keydebouncer|debouncetimer~0_combout\)))) # (!\KeyScan0|keypressed~regout\ & (\keydebouncer|Add0~16_combout\ 
-- & ((\keydebouncer|debouncetimer~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypressed~regout\,
	datab => \keydebouncer|Add0~16_combout\,
	datac => \keydebouncer|debouncetimer\(8),
	datad => \keydebouncer|debouncetimer~0_combout\,
	combout => \keydebouncer|debouncetimer~13_combout\);

-- Location: LCFF_X33_Y33_N31
\keydebouncer|debouncetimer[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(8));

-- Location: LCCOMB_X33_Y33_N22
\keydebouncer|debouncetimer~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~12_combout\ = (\KeyScan0|keypressed~regout\ & ((\keydebouncer|debouncetimer\(9)) # ((\keydebouncer|Add0~18_combout\ & \keydebouncer|debouncetimer~0_combout\)))) # (!\KeyScan0|keypressed~regout\ & 
-- (((\keydebouncer|Add0~18_combout\ & \keydebouncer|debouncetimer~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan0|keypressed~regout\,
	datab => \keydebouncer|debouncetimer\(9),
	datac => \keydebouncer|Add0~18_combout\,
	datad => \keydebouncer|debouncetimer~0_combout\,
	combout => \keydebouncer|debouncetimer~12_combout\);

-- Location: LCFF_X32_Y33_N21
\keydebouncer|debouncetimer[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(11));

-- Location: LCCOMB_X32_Y33_N20
\keydebouncer|debouncetimer~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~11_combout\ = (\keydebouncer|debouncetimer~0_combout\ & ((\keydebouncer|Add0~22_combout\) # ((\keydebouncer|debouncetimer\(11) & \KeyScan0|keypressed~regout\)))) # (!\keydebouncer|debouncetimer~0_combout\ & 
-- (((\keydebouncer|debouncetimer\(11) & \KeyScan0|keypressed~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer~0_combout\,
	datab => \keydebouncer|Add0~22_combout\,
	datac => \keydebouncer|debouncetimer\(11),
	datad => \KeyScan0|keypressed~regout\,
	combout => \keydebouncer|debouncetimer~11_combout\);

-- Location: LCFF_X32_Y33_N27
\keydebouncer|debouncetimer[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|debouncetimer~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|debouncetimer\(12));

-- Location: LCCOMB_X32_Y33_N26
\keydebouncer|debouncetimer~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~10_combout\ = (\keydebouncer|debouncetimer~0_combout\ & ((\keydebouncer|Add0~24_combout\) # ((\keydebouncer|debouncetimer\(12) & \KeyScan0|keypressed~regout\)))) # (!\keydebouncer|debouncetimer~0_combout\ & 
-- (((\keydebouncer|debouncetimer\(12) & \KeyScan0|keypressed~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer~0_combout\,
	datab => \keydebouncer|Add0~24_combout\,
	datac => \keydebouncer|debouncetimer\(12),
	datad => \KeyScan0|keypressed~regout\,
	combout => \keydebouncer|debouncetimer~10_combout\);

-- Location: LCCOMB_X33_Y33_N18
\keydebouncer|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~9_combout\ = (\keydebouncer|debouncetimer~13_combout\) # ((\keydebouncer|debouncetimer~12_combout\) # ((\keydebouncer|debouncetimer~11_combout\) # (\keydebouncer|debouncetimer~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer~13_combout\,
	datab => \keydebouncer|debouncetimer~12_combout\,
	datac => \keydebouncer|debouncetimer~11_combout\,
	datad => \keydebouncer|debouncetimer~10_combout\,
	combout => \keydebouncer|LessThan1~9_combout\);

-- Location: LCCOMB_X30_Y33_N8
\keydebouncer|debouncetimer~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~7_combout\ = (\keydebouncer|debouncetimer\(20) & (\keydebouncer|debouncetimer\(1))) # (!\keydebouncer|debouncetimer\(20) & ((\keydebouncer|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(1),
	datac => \keydebouncer|Add0~2_combout\,
	datad => \keydebouncer|debouncetimer\(20),
	combout => \keydebouncer|debouncetimer~7_combout\);

-- Location: LCCOMB_X30_Y33_N20
\keydebouncer|debouncetimer~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~5_combout\ = (\keydebouncer|debouncetimer\(20) & (\keydebouncer|debouncetimer\(3))) # (!\keydebouncer|debouncetimer\(20) & ((\keydebouncer|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(3),
	datac => \keydebouncer|debouncetimer\(20),
	datad => \keydebouncer|Add0~6_combout\,
	combout => \keydebouncer|debouncetimer~5_combout\);

-- Location: LCCOMB_X30_Y33_N26
\keydebouncer|debouncetimer~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|debouncetimer~4_combout\ = (\keydebouncer|debouncetimer\(20) & ((\keydebouncer|debouncetimer\(2)))) # (!\keydebouncer|debouncetimer\(20) & (\keydebouncer|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(20),
	datac => \keydebouncer|Add0~4_combout\,
	datad => \keydebouncer|debouncetimer\(2),
	combout => \keydebouncer|debouncetimer~4_combout\);

-- Location: LCCOMB_X30_Y33_N18
\keydebouncer|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~4_combout\ = (\keydebouncer|debouncetimer~5_combout\) # ((\keydebouncer|debouncetimer~4_combout\) # ((\keydebouncer|debouncetimer~6_combout\ & \keydebouncer|debouncetimer~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer~6_combout\,
	datab => \keydebouncer|debouncetimer~7_combout\,
	datac => \keydebouncer|debouncetimer~5_combout\,
	datad => \keydebouncer|debouncetimer~4_combout\,
	combout => \keydebouncer|LessThan1~4_combout\);

-- Location: LCCOMB_X30_Y33_N16
\keydebouncer|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~5_combout\ = (\keydebouncer|LessThan0~8_combout\ & (\keydebouncer|LessThan1~3_combout\)) # (!\keydebouncer|LessThan0~8_combout\ & ((\keydebouncer|LessThan0~6_combout\ & (\keydebouncer|LessThan1~3_combout\)) # 
-- (!\keydebouncer|LessThan0~6_combout\ & ((\keydebouncer|LessThan1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|LessThan1~3_combout\,
	datab => \keydebouncer|LessThan0~8_combout\,
	datac => \keydebouncer|LessThan0~6_combout\,
	datad => \keydebouncer|LessThan1~4_combout\,
	combout => \keydebouncer|LessThan1~5_combout\);

-- Location: LCCOMB_X30_Y33_N4
\keydebouncer|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~6_combout\ = (\keydebouncer|LessThan0~9_combout\ & (\keydebouncer|debouncetimer\(4))) # (!\keydebouncer|LessThan0~9_combout\ & (((\keydebouncer|Add0~8_combout\ & \keydebouncer|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer\(4),
	datab => \keydebouncer|Add0~8_combout\,
	datac => \keydebouncer|Add0~10_combout\,
	datad => \keydebouncer|LessThan0~9_combout\,
	combout => \keydebouncer|LessThan1~6_combout\);

-- Location: LCCOMB_X30_Y33_N22
\keydebouncer|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~7_combout\ = (\keydebouncer|LessThan1~6_combout\ & (\KeyScan0|keypressed~regout\ & ((\keydebouncer|debouncetimer\(5)) # (!\keydebouncer|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|LessThan0~9_combout\,
	datab => \keydebouncer|debouncetimer\(5),
	datac => \keydebouncer|LessThan1~6_combout\,
	datad => \KeyScan0|keypressed~regout\,
	combout => \keydebouncer|LessThan1~7_combout\);

-- Location: LCCOMB_X33_Y33_N8
\keydebouncer|LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~8_combout\ = (\keydebouncer|debouncetimer~9_combout\) # ((\keydebouncer|debouncetimer~8_combout\) # ((\keydebouncer|LessThan1~5_combout\ & \keydebouncer|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer~9_combout\,
	datab => \keydebouncer|debouncetimer~8_combout\,
	datac => \keydebouncer|LessThan1~5_combout\,
	datad => \keydebouncer|LessThan1~7_combout\,
	combout => \keydebouncer|LessThan1~8_combout\);

-- Location: LCCOMB_X33_Y33_N6
\keydebouncer|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~0_combout\ = (!\keydebouncer|debouncetimer\(20) & \KeyScan0|keypressed~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keydebouncer|debouncetimer\(20),
	datad => \KeyScan0|keypressed~regout\,
	combout => \keydebouncer|LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y33_N14
\keydebouncer|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~1_combout\ = (!\keydebouncer|LessThan0~6_combout\ & (\keydebouncer|Add0~20_combout\ & (!\keydebouncer|LessThan0~8_combout\ & \keydebouncer|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|LessThan0~6_combout\,
	datab => \keydebouncer|Add0~20_combout\,
	datac => \keydebouncer|LessThan0~8_combout\,
	datad => \keydebouncer|LessThan1~0_combout\,
	combout => \keydebouncer|LessThan1~1_combout\);

-- Location: LCCOMB_X33_Y33_N12
\keydebouncer|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~2_combout\ = (\keydebouncer|debouncetimer~1_combout\) # ((\keydebouncer|LessThan1~1_combout\) # ((\keydebouncer|debouncetimer~2_combout\) # (\keydebouncer|debouncetimer~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|debouncetimer~1_combout\,
	datab => \keydebouncer|LessThan1~1_combout\,
	datac => \keydebouncer|debouncetimer~2_combout\,
	datad => \keydebouncer|debouncetimer~3_combout\,
	combout => \keydebouncer|LessThan1~2_combout\);

-- Location: LCCOMB_X33_Y33_N16
\keydebouncer|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \keydebouncer|LessThan1~13_combout\ = (\keydebouncer|LessThan1~12_combout\) # ((\keydebouncer|LessThan1~9_combout\) # ((\keydebouncer|LessThan1~8_combout\) # (\keydebouncer|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keydebouncer|LessThan1~12_combout\,
	datab => \keydebouncer|LessThan1~9_combout\,
	datac => \keydebouncer|LessThan1~8_combout\,
	datad => \keydebouncer|LessThan1~2_combout\,
	combout => \keydebouncer|LessThan1~13_combout\);

-- Location: LCFF_X33_Y33_N17
\keydebouncer|db_signal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \keydebouncer|debouncerclockmodule|clock_counter[10]~clkctrl_outclk\,
	datain => \keydebouncer|LessThan1~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keydebouncer|db_signal~regout\);

-- Location: LCFF_X33_Y33_N7
\keypressedge|signal_last\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	sdata => \keydebouncer|db_signal~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keypressedge|signal_last~regout\);

-- Location: LCCOMB_X33_Y33_N26
\keypressedge|strobe~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keypressedge|strobe~0_combout\ = (!\keypressedge|signal_last~regout\ & \keydebouncer|db_signal~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypressedge|signal_last~regout\,
	datac => \keydebouncer|db_signal~regout\,
	combout => \keypressedge|strobe~0_combout\);

-- Location: LCFF_X33_Y33_N27
\keypressedge|strobe\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \keypressedge|strobe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keypressedge|strobe~regout\);

-- Location: LCCOMB_X50_Y29_N0
\FSM|state.op_B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM|state.op_B~0_combout\ = (\FSM|state.B_temp~regout\) # ((!\FSM|state.A_temp~regout\ & (\FSM|state.op_B~regout\ & !\keypressedge|strobe~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.A_temp~regout\,
	datab => \FSM|state.B_temp~regout\,
	datac => \FSM|state.op_B~regout\,
	datad => \keypressedge|strobe~regout\,
	combout => \FSM|state.op_B~0_combout\);

-- Location: LCFF_X50_Y29_N1
\FSM|state.op_B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \FSM|state.op_B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM|state.op_B~regout\);

-- Location: LCCOMB_X50_Y29_N2
\FSM|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM|Selector3~0_combout\ = (\FSM|state.op_B~regout\ & \keypressedge|strobe~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|state.op_B~regout\,
	datad => \keypressedge|strobe~regout\,
	combout => \FSM|Selector3~0_combout\);

-- Location: LCFF_X50_Y29_N3
\FSM|state.B_temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \FSM|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM|state.B_temp~regout\);

-- Location: LCCOMB_X50_Y29_N28
\FSM|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM|Selector0~0_combout\ = (\FSM|state.B_temp~regout\) # ((!\FSM|state.A_temp~regout\ & ((\FSM|state.op_A~regout\) # (\keypressedge|strobe~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.A_temp~regout\,
	datab => \FSM|state.B_temp~regout\,
	datac => \FSM|state.op_A~regout\,
	datad => \keypressedge|strobe~regout\,
	combout => \FSM|Selector0~0_combout\);

-- Location: LCFF_X50_Y29_N29
\FSM|state.op_A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \FSM|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM|state.op_A~regout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X53_Y29_N22
\bksppressedge|signal_last~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bksppressedge|signal_last~feeder_combout\ = \KEY~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(0),
	combout => \bksppressedge|signal_last~feeder_combout\);

-- Location: LCFF_X53_Y29_N23
\bksppressedge|signal_last\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bksppressedge|signal_last~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bksppressedge|signal_last~regout\);

-- Location: LCCOMB_X53_Y29_N8
\bksppressedge|strobe~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bksppressedge|strobe~0_combout\ = (\bksppressedge|signal_last~regout\ & !\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bksppressedge|signal_last~regout\,
	datad => \KEY~combout\(0),
	combout => \bksppressedge|strobe~0_combout\);

-- Location: LCFF_X53_Y29_N9
\bksppressedge|strobe\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bksppressedge|strobe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bksppressedge|strobe~regout\);

-- Location: LCCOMB_X53_Y29_N14
\bcdreg_A|bcd100~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd100~0_combout\ = (\bcdreg_A|bcd10\(0) & ((\FSM|state.op_A~regout\) # (!\bksppressedge|strobe~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|state.op_A~regout\,
	datac => \bksppressedge|strobe~regout\,
	datad => \bcdreg_A|bcd10\(0),
	combout => \bcdreg_A|bcd100~0_combout\);

-- Location: LCCOMB_X53_Y29_N0
\FSM|load_A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM|load_A~0_combout\ = (\keypressedge|strobe~regout\ & !\FSM|state.op_A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypressedge|strobe~regout\,
	datad => \FSM|state.op_A~regout\,
	combout => \FSM|load_A~0_combout\);

-- Location: LCFF_X53_Y29_N15
\bcdreg_A|bcd100[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd100~0_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd100\(0));

-- Location: LCCOMB_X53_Y29_N2
\FSM|bksp_A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM|bksp_A~0_combout\ = (\bksppressedge|strobe~regout\ & !\FSM|state.op_A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bksppressedge|strobe~regout\,
	datad => \FSM|state.op_A~regout\,
	combout => \FSM|bksp_A~0_combout\);

-- Location: LCFF_X53_Y29_N29
\bcdreg_A|bcd10[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd10[0]~0_combout\,
	sdata => \bcdreg_A|bcd100\(0),
	sload => \FSM|bksp_A~0_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd10\(0));

-- Location: LCCOMB_X53_Y29_N12
\bcdreg_A|bcd1[0]~7feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd1[0]~7feeder_combout\ = \bcdreg_A|bcd10\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcdreg_A|bcd10\(0),
	combout => \bcdreg_A|bcd1[0]~7feeder_combout\);

-- Location: LCFF_X53_Y29_N13
\bcdreg_A|bcd1[0]~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd1[0]~7feeder_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd1[0]~7_regout\);

-- Location: LCCOMB_X1_Y18_N12
\mainclock|clock_counter[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mainclock|clock_counter[0]~0_combout\ = !\mainclock|clock_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mainclock|clock_counter\(0),
	combout => \mainclock|clock_counter[0]~0_combout\);

-- Location: LCFF_X1_Y18_N13
\mainclock|clock_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \mainclock|clock_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mainclock|clock_counter\(0));

-- Location: CLKCTRL_G1
\mainclock|clock_counter[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mainclock|clock_counter[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mainclock|clock_counter[0]~clkctrl_outclk\);

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ROW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ROW(0),
	combout => \ROW~combout\(0));

-- Location: M4K_X52_Y29
\KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000420E00090000000086010000000000000000000000000000CA05000D00000000000000000000000000000000000000000000000000000000FB07000300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Calculator.calculator0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "keypadscanner:KeyScan0|keypadtohex:keyencoder|altsyncram:WideOr0_rtl_0|altsyncram_4s01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 4,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \mainclock|clock_counter[0]~clkctrl_outclk\,
	ena0 => \FSM|load_A~0_combout\,
	portaaddr => \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X53_Y29_N28
\bcdreg_A|bcd10[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd10[0]~0_combout\ = (\bcdreg_A|bcd1[0]~8_regout\ & (\bcdreg_A|bcd1[0]~7_regout\)) # (!\bcdreg_A|bcd1[0]~8_regout\ & ((\KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd1[0]~8_regout\,
	datab => \bcdreg_A|bcd1[0]~7_regout\,
	datad => \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a2\,
	combout => \bcdreg_A|bcd10[0]~0_combout\);

-- Location: LCCOMB_X53_Y29_N24
\bcdreg_A|bcd100~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd100~3_combout\ = (\bcdreg_A|bcd10\(3) & ((\FSM|state.op_A~regout\) # (!\bksppressedge|strobe~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|state.op_A~regout\,
	datac => \bksppressedge|strobe~regout\,
	datad => \bcdreg_A|bcd10\(3),
	combout => \bcdreg_A|bcd100~3_combout\);

-- Location: LCFF_X53_Y29_N25
\bcdreg_A|bcd100[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd100~3_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd100\(3));

-- Location: LCFF_X53_Y29_N19
\bcdreg_A|bcd10[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd10[3]~3_combout\,
	sdata => \bcdreg_A|bcd100\(3),
	sload => \FSM|bksp_A~0_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd10\(3));

-- Location: LCCOMB_X53_Y29_N4
\bcdreg_A|bcd1[3]~1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd1[3]~1feeder_combout\ = \bcdreg_A|bcd10\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcdreg_A|bcd10\(3),
	combout => \bcdreg_A|bcd1[3]~1feeder_combout\);

-- Location: LCFF_X53_Y29_N5
\bcdreg_A|bcd1[3]~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd1[3]~1feeder_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd1[3]~1_regout\);

-- Location: LCCOMB_X53_Y29_N18
\bcdreg_A|bcd10[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd10[3]~3_combout\ = (\bcdreg_A|bcd1[0]~8_regout\ & (\bcdreg_A|bcd1[3]~1_regout\)) # (!\bcdreg_A|bcd1[0]~8_regout\ & ((\KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd1[0]~8_regout\,
	datab => \bcdreg_A|bcd1[3]~1_regout\,
	datad => \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \bcdreg_A|bcd10[3]~3_combout\);

-- Location: LCCOMB_X53_Y29_N30
\bcdreg_A|bcd100~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd100~1_combout\ = (\bcdreg_A|bcd10\(1) & ((\FSM|state.op_A~regout\) # (!\bksppressedge|strobe~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|state.op_A~regout\,
	datac => \bksppressedge|strobe~regout\,
	datad => \bcdreg_A|bcd10\(1),
	combout => \bcdreg_A|bcd100~1_combout\);

-- Location: LCFF_X53_Y29_N31
\bcdreg_A|bcd100[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd100~1_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd100\(1));

-- Location: LCFF_X53_Y29_N27
\bcdreg_A|bcd10[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd10[1]~1_combout\,
	sdata => \bcdreg_A|bcd100\(1),
	sload => \FSM|bksp_A~0_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd10\(1));

-- Location: LCCOMB_X53_Y29_N6
\bcdreg_A|bcd1[1]~10feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd1[1]~10feeder_combout\ = \bcdreg_A|bcd10\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcdreg_A|bcd10\(1),
	combout => \bcdreg_A|bcd1[1]~10feeder_combout\);

-- Location: LCFF_X53_Y29_N7
\bcdreg_A|bcd1[1]~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd1[1]~10feeder_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd1[1]~10_regout\);

-- Location: LCCOMB_X53_Y29_N26
\bcdreg_A|bcd10[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd10[1]~1_combout\ = (\bcdreg_A|bcd1[0]~8_regout\ & (\bcdreg_A|bcd1[1]~10_regout\)) # (!\bcdreg_A|bcd1[0]~8_regout\ & ((\KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd1[0]~8_regout\,
	datab => \bcdreg_A|bcd1[1]~10_regout\,
	datad => \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a3\,
	combout => \bcdreg_A|bcd10[1]~1_combout\);

-- Location: LCCOMB_X28_Y4_N12
\H0|WideOr6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr6~2_combout\ = (\bcdreg_A|bcd10[2]~2_combout\ & (!\bcdreg_A|bcd10[3]~3_combout\ & ((!\bcdreg_A|bcd10[1]~1_combout\) # (!\bcdreg_A|bcd10[0]~0_combout\)))) # (!\bcdreg_A|bcd10[2]~2_combout\ & (((\bcdreg_A|bcd10[3]~3_combout\) # 
-- (\bcdreg_A|bcd10[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10[2]~2_combout\,
	datab => \bcdreg_A|bcd10[0]~0_combout\,
	datac => \bcdreg_A|bcd10[3]~3_combout\,
	datad => \bcdreg_A|bcd10[1]~1_combout\,
	combout => \H0|WideOr6~2_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X28_Y4_N14
\H0|WideOr6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr6~3_combout\ = (\H0|WideOr6~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H0|WideOr6~2_combout\,
	datad => \SW~combout\(0),
	combout => \H0|WideOr6~3_combout\);

-- Location: LCCOMB_X28_Y4_N16
\H0|WideOr5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr5~2_combout\ = (\bcdreg_A|bcd10[2]~2_combout\ & ((\bcdreg_A|bcd10[3]~3_combout\) # ((\bcdreg_A|bcd10[0]~0_combout\ & \bcdreg_A|bcd10[1]~1_combout\)))) # (!\bcdreg_A|bcd10[2]~2_combout\ & ((\bcdreg_A|bcd10[1]~1_combout\) # 
-- ((\bcdreg_A|bcd10[0]~0_combout\ & !\bcdreg_A|bcd10[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10[2]~2_combout\,
	datab => \bcdreg_A|bcd10[0]~0_combout\,
	datac => \bcdreg_A|bcd10[3]~3_combout\,
	datad => \bcdreg_A|bcd10[1]~1_combout\,
	combout => \H0|WideOr5~2_combout\);

-- Location: LCCOMB_X28_Y4_N26
\H0|WideOr5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr5~3_combout\ = (\H0|WideOr5~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H0|WideOr5~2_combout\,
	datad => \SW~combout\(0),
	combout => \H0|WideOr5~3_combout\);

-- Location: LCCOMB_X53_Y29_N20
\bcdreg_A|bcd100~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd100~2_combout\ = (\bcdreg_A|bcd10\(2) & ((\FSM|state.op_A~regout\) # (!\bksppressedge|strobe~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10\(2),
	datab => \FSM|state.op_A~regout\,
	datac => \bksppressedge|strobe~regout\,
	combout => \bcdreg_A|bcd100~2_combout\);

-- Location: LCFF_X53_Y29_N21
\bcdreg_A|bcd100[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd100~2_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd100\(2));

-- Location: LCFF_X53_Y29_N17
\bcdreg_A|bcd10[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd10[2]~2_combout\,
	sdata => \bcdreg_A|bcd100\(2),
	sload => \FSM|bksp_A~0_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd10\(2));

-- Location: LCCOMB_X53_Y29_N10
\bcdreg_A|bcd1[2]~4feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd1[2]~4feeder_combout\ = \bcdreg_A|bcd10\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcdreg_A|bcd10\(2),
	combout => \bcdreg_A|bcd1[2]~4feeder_combout\);

-- Location: LCFF_X53_Y29_N11
\bcdreg_A|bcd1[2]~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mainclock|clock_counter[0]~clkctrl_outclk\,
	datain => \bcdreg_A|bcd1[2]~4feeder_combout\,
	ena => \FSM|load_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcdreg_A|bcd1[2]~4_regout\);

-- Location: LCCOMB_X53_Y29_N16
\bcdreg_A|bcd10[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcdreg_A|bcd10[2]~2_combout\ = (\bcdreg_A|bcd1[0]~8_regout\ & (\bcdreg_A|bcd1[2]~4_regout\)) # (!\bcdreg_A|bcd1[0]~8_regout\ & ((\KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd1[0]~8_regout\,
	datab => \bcdreg_A|bcd1[2]~4_regout\,
	datad => \KeyScan0|keyencoder|WideOr0_rtl_0|auto_generated|ram_block1a1\,
	combout => \bcdreg_A|bcd10[2]~2_combout\);

-- Location: LCCOMB_X28_Y4_N0
\H0|WideOr4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr4~3_combout\ = (\bcdreg_A|bcd10[3]~3_combout\) # (!\bcdreg_A|bcd10[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcdreg_A|bcd10[3]~3_combout\,
	datad => \bcdreg_A|bcd10[1]~1_combout\,
	combout => \H0|WideOr4~3_combout\);

-- Location: LCCOMB_X28_Y4_N22
\H0|WideOr4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr4~9_combout\ = (!\SW~combout\(0) & ((\bcdreg_A|bcd10[0]~0_combout\) # ((\bcdreg_A|bcd10[2]~2_combout\ & \H0|WideOr4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10[2]~2_combout\,
	datab => \H0|WideOr4~3_combout\,
	datac => \bcdreg_A|bcd10[0]~0_combout\,
	datad => \SW~combout\(0),
	combout => \H0|WideOr4~9_combout\);

-- Location: LCCOMB_X28_Y4_N24
\H0|WideOr3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr3~2_combout\ = (\bcdreg_A|bcd10[2]~2_combout\ & ((\bcdreg_A|bcd10[3]~3_combout\) # (\bcdreg_A|bcd10[0]~0_combout\ $ (!\bcdreg_A|bcd10[1]~1_combout\)))) # (!\bcdreg_A|bcd10[2]~2_combout\ & ((\bcdreg_A|bcd10[1]~1_combout\ & 
-- ((\bcdreg_A|bcd10[3]~3_combout\))) # (!\bcdreg_A|bcd10[1]~1_combout\ & (\bcdreg_A|bcd10[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10[2]~2_combout\,
	datab => \bcdreg_A|bcd10[0]~0_combout\,
	datac => \bcdreg_A|bcd10[3]~3_combout\,
	datad => \bcdreg_A|bcd10[1]~1_combout\,
	combout => \H0|WideOr3~2_combout\);

-- Location: LCCOMB_X28_Y4_N10
\H0|WideOr3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr3~3_combout\ = (\H0|WideOr3~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H0|WideOr3~2_combout\,
	datad => \SW~combout\(0),
	combout => \H0|WideOr3~3_combout\);

-- Location: LCCOMB_X28_Y4_N28
\H0|WideOr2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr2~2_combout\ = (\bcdreg_A|bcd10[2]~2_combout\ & (((\bcdreg_A|bcd10[3]~3_combout\)))) # (!\bcdreg_A|bcd10[2]~2_combout\ & (\bcdreg_A|bcd10[1]~1_combout\ & ((\bcdreg_A|bcd10[3]~3_combout\) # (!\bcdreg_A|bcd10[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10[2]~2_combout\,
	datab => \bcdreg_A|bcd10[0]~0_combout\,
	datac => \bcdreg_A|bcd10[3]~3_combout\,
	datad => \bcdreg_A|bcd10[1]~1_combout\,
	combout => \H0|WideOr2~2_combout\);

-- Location: LCCOMB_X28_Y4_N2
\H0|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr2~3_combout\ = (\H0|WideOr2~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H0|WideOr2~2_combout\,
	datad => \SW~combout\(0),
	combout => \H0|WideOr2~3_combout\);

-- Location: LCCOMB_X28_Y4_N20
\H0|WideOr1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr1~2_combout\ = (\bcdreg_A|bcd10[2]~2_combout\ & ((\bcdreg_A|bcd10[3]~3_combout\) # (\bcdreg_A|bcd10[0]~0_combout\ $ (\bcdreg_A|bcd10[1]~1_combout\)))) # (!\bcdreg_A|bcd10[2]~2_combout\ & (((\bcdreg_A|bcd10[3]~3_combout\ & 
-- \bcdreg_A|bcd10[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10[2]~2_combout\,
	datab => \bcdreg_A|bcd10[0]~0_combout\,
	datac => \bcdreg_A|bcd10[3]~3_combout\,
	datad => \bcdreg_A|bcd10[1]~1_combout\,
	combout => \H0|WideOr1~2_combout\);

-- Location: LCCOMB_X28_Y4_N30
\H0|WideOr1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr1~3_combout\ = (\H0|WideOr1~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H0|WideOr1~2_combout\,
	datad => \SW~combout\(0),
	combout => \H0|WideOr1~3_combout\);

-- Location: LCCOMB_X28_Y4_N8
\H0|WideOr0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~2_combout\ = (\bcdreg_A|bcd10[1]~1_combout\ & (((\bcdreg_A|bcd10[3]~3_combout\)))) # (!\bcdreg_A|bcd10[1]~1_combout\ & (\bcdreg_A|bcd10[2]~2_combout\ $ (((\bcdreg_A|bcd10[0]~0_combout\ & !\bcdreg_A|bcd10[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10[2]~2_combout\,
	datab => \bcdreg_A|bcd10[0]~0_combout\,
	datac => \bcdreg_A|bcd10[3]~3_combout\,
	datad => \bcdreg_A|bcd10[1]~1_combout\,
	combout => \H0|WideOr0~2_combout\);

-- Location: LCCOMB_X28_Y4_N18
\H0|WideOr0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~3_combout\ = (\H0|WideOr0~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H0|WideOr0~2_combout\,
	datad => \SW~combout\(0),
	combout => \H0|WideOr0~3_combout\);

-- Location: LCCOMB_X64_Y5_N12
\H1|WideOr6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr6~2_combout\ = (\bcdreg_A|bcd10\(2) & (!\bcdreg_A|bcd10\(3) & ((!\bcdreg_A|bcd10\(0)) # (!\bcdreg_A|bcd10\(1))))) # (!\bcdreg_A|bcd10\(2) & ((\bcdreg_A|bcd10\(1)) # ((\bcdreg_A|bcd10\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10\(2),
	datab => \bcdreg_A|bcd10\(1),
	datac => \bcdreg_A|bcd10\(0),
	datad => \bcdreg_A|bcd10\(3),
	combout => \H1|WideOr6~2_combout\);

-- Location: LCCOMB_X64_Y5_N30
\H1|WideOr6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr6~3_combout\ = (\H1|WideOr6~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|WideOr6~2_combout\,
	datad => \SW~combout\(0),
	combout => \H1|WideOr6~3_combout\);

-- Location: LCCOMB_X64_Y5_N0
\H1|WideOr5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr5~2_combout\ = (\bcdreg_A|bcd10\(2) & ((\bcdreg_A|bcd10\(3)) # ((\bcdreg_A|bcd10\(1) & \bcdreg_A|bcd10\(0))))) # (!\bcdreg_A|bcd10\(2) & ((\bcdreg_A|bcd10\(1)) # ((\bcdreg_A|bcd10\(0) & !\bcdreg_A|bcd10\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10\(2),
	datab => \bcdreg_A|bcd10\(1),
	datac => \bcdreg_A|bcd10\(0),
	datad => \bcdreg_A|bcd10\(3),
	combout => \H1|WideOr5~2_combout\);

-- Location: LCCOMB_X64_Y5_N14
\H1|WideOr5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr5~3_combout\ = (\H1|WideOr5~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|WideOr5~2_combout\,
	datad => \SW~combout\(0),
	combout => \H1|WideOr5~3_combout\);

-- Location: LCCOMB_X64_Y5_N28
\H1|WideOr4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr4~3_combout\ = (\bcdreg_A|bcd10\(3)) # (!\bcdreg_A|bcd10\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcdreg_A|bcd10\(1),
	datad => \bcdreg_A|bcd10\(3),
	combout => \H1|WideOr4~3_combout\);

-- Location: LCCOMB_X64_Y5_N22
\H1|WideOr4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr4~9_combout\ = (!\SW~combout\(0) & ((\bcdreg_A|bcd10\(0)) # ((\bcdreg_A|bcd10\(2) & \H1|WideOr4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10\(2),
	datab => \H1|WideOr4~3_combout\,
	datac => \bcdreg_A|bcd10\(0),
	datad => \SW~combout\(0),
	combout => \H1|WideOr4~9_combout\);

-- Location: LCCOMB_X64_Y5_N24
\H1|WideOr3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr3~2_combout\ = (\bcdreg_A|bcd10\(2) & ((\bcdreg_A|bcd10\(3)) # (\bcdreg_A|bcd10\(1) $ (!\bcdreg_A|bcd10\(0))))) # (!\bcdreg_A|bcd10\(2) & ((\bcdreg_A|bcd10\(1) & ((\bcdreg_A|bcd10\(3)))) # (!\bcdreg_A|bcd10\(1) & (\bcdreg_A|bcd10\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10\(2),
	datab => \bcdreg_A|bcd10\(1),
	datac => \bcdreg_A|bcd10\(0),
	datad => \bcdreg_A|bcd10\(3),
	combout => \H1|WideOr3~2_combout\);

-- Location: LCCOMB_X64_Y5_N18
\H1|WideOr3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr3~3_combout\ = (\H1|WideOr3~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H1|WideOr3~2_combout\,
	datad => \SW~combout\(0),
	combout => \H1|WideOr3~3_combout\);

-- Location: LCCOMB_X64_Y5_N4
\H1|WideOr2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr2~2_combout\ = (\bcdreg_A|bcd10\(2) & (((\bcdreg_A|bcd10\(3))))) # (!\bcdreg_A|bcd10\(2) & (\bcdreg_A|bcd10\(1) & ((\bcdreg_A|bcd10\(3)) # (!\bcdreg_A|bcd10\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10\(2),
	datab => \bcdreg_A|bcd10\(1),
	datac => \bcdreg_A|bcd10\(0),
	datad => \bcdreg_A|bcd10\(3),
	combout => \H1|WideOr2~2_combout\);

-- Location: LCCOMB_X64_Y5_N26
\H1|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr2~3_combout\ = (\H1|WideOr2~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H1|WideOr2~2_combout\,
	datad => \SW~combout\(0),
	combout => \H1|WideOr2~3_combout\);

-- Location: LCCOMB_X64_Y5_N20
\H1|WideOr1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr1~2_combout\ = (\bcdreg_A|bcd10\(2) & ((\bcdreg_A|bcd10\(3)) # (\bcdreg_A|bcd10\(1) $ (\bcdreg_A|bcd10\(0))))) # (!\bcdreg_A|bcd10\(2) & (\bcdreg_A|bcd10\(1) & ((\bcdreg_A|bcd10\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10\(2),
	datab => \bcdreg_A|bcd10\(1),
	datac => \bcdreg_A|bcd10\(0),
	datad => \bcdreg_A|bcd10\(3),
	combout => \H1|WideOr1~2_combout\);

-- Location: LCCOMB_X64_Y5_N6
\H1|WideOr1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr1~3_combout\ = (\H1|WideOr1~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H1|WideOr1~2_combout\,
	datad => \SW~combout\(0),
	combout => \H1|WideOr1~3_combout\);

-- Location: LCCOMB_X64_Y5_N8
\H1|WideOr0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr0~2_combout\ = (\bcdreg_A|bcd10\(1) & (((\bcdreg_A|bcd10\(3))))) # (!\bcdreg_A|bcd10\(1) & (\bcdreg_A|bcd10\(2) $ (((\bcdreg_A|bcd10\(0) & !\bcdreg_A|bcd10\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd10\(2),
	datab => \bcdreg_A|bcd10\(1),
	datac => \bcdreg_A|bcd10\(0),
	datad => \bcdreg_A|bcd10\(3),
	combout => \H1|WideOr0~2_combout\);

-- Location: LCCOMB_X64_Y5_N10
\H1|WideOr0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr0~3_combout\ = (\H1|WideOr0~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H1|WideOr0~2_combout\,
	datad => \SW~combout\(0),
	combout => \H1|WideOr0~3_combout\);

-- Location: LCCOMB_X64_Y7_N0
\H2|WideOr6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr6~2_combout\ = (\bcdreg_A|bcd100\(3) & (((!\bcdreg_A|bcd100\(2))))) # (!\bcdreg_A|bcd100\(3) & ((\bcdreg_A|bcd100\(1) & ((!\bcdreg_A|bcd100\(2)) # (!\bcdreg_A|bcd100\(0)))) # (!\bcdreg_A|bcd100\(1) & ((\bcdreg_A|bcd100\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd100\(3),
	datab => \bcdreg_A|bcd100\(0),
	datac => \bcdreg_A|bcd100\(1),
	datad => \bcdreg_A|bcd100\(2),
	combout => \H2|WideOr6~2_combout\);

-- Location: LCCOMB_X64_Y7_N10
\H2|WideOr6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr6~3_combout\ = (!\SW~combout\(0) & \H2|WideOr6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datad => \H2|WideOr6~2_combout\,
	combout => \H2|WideOr6~3_combout\);

-- Location: LCCOMB_X64_Y7_N28
\H2|WideOr5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr5~2_combout\ = (\bcdreg_A|bcd100\(0) & ((\bcdreg_A|bcd100\(1)) # (\bcdreg_A|bcd100\(3) $ (!\bcdreg_A|bcd100\(2))))) # (!\bcdreg_A|bcd100\(0) & ((\bcdreg_A|bcd100\(2) & (\bcdreg_A|bcd100\(3))) # (!\bcdreg_A|bcd100\(2) & 
-- ((\bcdreg_A|bcd100\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd100\(3),
	datab => \bcdreg_A|bcd100\(0),
	datac => \bcdreg_A|bcd100\(1),
	datad => \bcdreg_A|bcd100\(2),
	combout => \H2|WideOr5~2_combout\);

-- Location: LCCOMB_X64_Y7_N14
\H2|WideOr5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr5~3_combout\ = (!\SW~combout\(0) & \H2|WideOr5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datad => \H2|WideOr5~2_combout\,
	combout => \H2|WideOr5~3_combout\);

-- Location: LCCOMB_X64_Y7_N12
\H2|WideOr4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr4~3_combout\ = (\bcdreg_A|bcd100\(3)) # (!\bcdreg_A|bcd100\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcdreg_A|bcd100\(1),
	datac => \bcdreg_A|bcd100\(3),
	combout => \H2|WideOr4~3_combout\);

-- Location: LCCOMB_X64_Y7_N30
\H2|WideOr4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr4~9_combout\ = (!\SW~combout\(0) & ((\bcdreg_A|bcd100\(0)) # ((\H2|WideOr4~3_combout\ & \bcdreg_A|bcd100\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|WideOr4~3_combout\,
	datab => \bcdreg_A|bcd100\(0),
	datac => \bcdreg_A|bcd100\(2),
	datad => \SW~combout\(0),
	combout => \H2|WideOr4~9_combout\);

-- Location: LCCOMB_X64_Y7_N24
\H2|WideOr3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr3~2_combout\ = (\bcdreg_A|bcd100\(0) & ((\bcdreg_A|bcd100\(3)) # (\bcdreg_A|bcd100\(1) $ (!\bcdreg_A|bcd100\(2))))) # (!\bcdreg_A|bcd100\(0) & ((\bcdreg_A|bcd100\(1) & (\bcdreg_A|bcd100\(3))) # (!\bcdreg_A|bcd100\(1) & 
-- ((\bcdreg_A|bcd100\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd100\(3),
	datab => \bcdreg_A|bcd100\(0),
	datac => \bcdreg_A|bcd100\(1),
	datad => \bcdreg_A|bcd100\(2),
	combout => \H2|WideOr3~2_combout\);

-- Location: LCCOMB_X64_Y7_N18
\H2|WideOr3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr3~3_combout\ = (\H2|WideOr3~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|WideOr3~2_combout\,
	datad => \SW~combout\(0),
	combout => \H2|WideOr3~3_combout\);

-- Location: LCCOMB_X64_Y7_N20
\H2|WideOr2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr2~2_combout\ = (\bcdreg_A|bcd100\(2) & (\bcdreg_A|bcd100\(3))) # (!\bcdreg_A|bcd100\(2) & (\bcdreg_A|bcd100\(1) & ((\bcdreg_A|bcd100\(3)) # (!\bcdreg_A|bcd100\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd100\(3),
	datab => \bcdreg_A|bcd100\(0),
	datac => \bcdreg_A|bcd100\(1),
	datad => \bcdreg_A|bcd100\(2),
	combout => \H2|WideOr2~2_combout\);

-- Location: LCCOMB_X64_Y7_N26
\H2|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr2~3_combout\ = (\H2|WideOr2~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|WideOr2~2_combout\,
	datad => \SW~combout\(0),
	combout => \H2|WideOr2~3_combout\);

-- Location: LCCOMB_X64_Y7_N4
\H2|WideOr1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr1~2_combout\ = (\bcdreg_A|bcd100\(3) & (((\bcdreg_A|bcd100\(1)) # (\bcdreg_A|bcd100\(2))))) # (!\bcdreg_A|bcd100\(3) & (\bcdreg_A|bcd100\(2) & (\bcdreg_A|bcd100\(0) $ (\bcdreg_A|bcd100\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd100\(3),
	datab => \bcdreg_A|bcd100\(0),
	datac => \bcdreg_A|bcd100\(1),
	datad => \bcdreg_A|bcd100\(2),
	combout => \H2|WideOr1~2_combout\);

-- Location: LCCOMB_X64_Y7_N22
\H2|WideOr1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr1~3_combout\ = (\H2|WideOr1~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H2|WideOr1~2_combout\,
	datad => \SW~combout\(0),
	combout => \H2|WideOr1~3_combout\);

-- Location: LCCOMB_X64_Y7_N16
\H2|WideOr0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr0~2_combout\ = (\bcdreg_A|bcd100\(1) & (\bcdreg_A|bcd100\(3))) # (!\bcdreg_A|bcd100\(1) & (\bcdreg_A|bcd100\(2) $ (((!\bcdreg_A|bcd100\(3) & \bcdreg_A|bcd100\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdreg_A|bcd100\(3),
	datab => \bcdreg_A|bcd100\(0),
	datac => \bcdreg_A|bcd100\(1),
	datad => \bcdreg_A|bcd100\(2),
	combout => \H2|WideOr0~2_combout\);

-- Location: LCCOMB_X64_Y5_N16
\H2|WideOr0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr0~3_combout\ = (\H2|WideOr0~2_combout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H2|WideOr0~2_combout\,
	datad => \SW~combout\(0),
	combout => \H2|WideOr0~3_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(16));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(17));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\COL[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \KeyScan0|col\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_COL(0));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\COL[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \KeyScan0|col\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_COL(1));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\COL[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \KeyScan0|col\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_COL(2));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\COL[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \KeyScan0|col\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_COL(3));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|ALT_INV_WideOr6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|ALT_INV_WideOr6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|ALT_INV_WideOr6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(17));
END structure;


