-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/09/2018 10:45:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Part5 IS
    PORT (
	SW : IN std_logic_vector(15 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	out2 : OUT std_logic_vector(15 DOWNTO 0);
	latch_in : OUT std_logic_vector(15 DOWNTO 0);
	clk : OUT std_logic;
	key_state : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Part5;

-- Design Ports Information
-- out2[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[2]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[3]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[4]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[5]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[6]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[7]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[8]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[9]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[10]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[11]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[12]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[13]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[14]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[15]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[1]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[3]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[4]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[6]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[7]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[8]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[9]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[10]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[11]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[12]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[13]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[14]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[15]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_state	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Part5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_latch_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_key_state : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \out2[0]~output_o\ : std_logic;
SIGNAL \out2[1]~output_o\ : std_logic;
SIGNAL \out2[2]~output_o\ : std_logic;
SIGNAL \out2[3]~output_o\ : std_logic;
SIGNAL \out2[4]~output_o\ : std_logic;
SIGNAL \out2[5]~output_o\ : std_logic;
SIGNAL \out2[6]~output_o\ : std_logic;
SIGNAL \out2[7]~output_o\ : std_logic;
SIGNAL \out2[8]~output_o\ : std_logic;
SIGNAL \out2[9]~output_o\ : std_logic;
SIGNAL \out2[10]~output_o\ : std_logic;
SIGNAL \out2[11]~output_o\ : std_logic;
SIGNAL \out2[12]~output_o\ : std_logic;
SIGNAL \out2[13]~output_o\ : std_logic;
SIGNAL \out2[14]~output_o\ : std_logic;
SIGNAL \out2[15]~output_o\ : std_logic;
SIGNAL \latch_in[0]~output_o\ : std_logic;
SIGNAL \latch_in[1]~output_o\ : std_logic;
SIGNAL \latch_in[2]~output_o\ : std_logic;
SIGNAL \latch_in[3]~output_o\ : std_logic;
SIGNAL \latch_in[4]~output_o\ : std_logic;
SIGNAL \latch_in[5]~output_o\ : std_logic;
SIGNAL \latch_in[6]~output_o\ : std_logic;
SIGNAL \latch_in[7]~output_o\ : std_logic;
SIGNAL \latch_in[8]~output_o\ : std_logic;
SIGNAL \latch_in[9]~output_o\ : std_logic;
SIGNAL \latch_in[10]~output_o\ : std_logic;
SIGNAL \latch_in[11]~output_o\ : std_logic;
SIGNAL \latch_in[12]~output_o\ : std_logic;
SIGNAL \latch_in[13]~output_o\ : std_logic;
SIGNAL \latch_in[14]~output_o\ : std_logic;
SIGNAL \latch_in[15]~output_o\ : std_logic;
SIGNAL \clk~output_o\ : std_logic;
SIGNAL \key_state~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \bit0|latch_1|Q~combout\ : std_logic;
SIGNAL \bit0|latch_2|Q~combout\ : std_logic;
SIGNAL \bit1|latch_1|Q~combout\ : std_logic;
SIGNAL \bit1|latch_2|Q~combout\ : std_logic;
SIGNAL \bit2|latch_1|Q~combout\ : std_logic;
SIGNAL \bit2|latch_2|Q~combout\ : std_logic;
SIGNAL \bit3|latch_1|Q~combout\ : std_logic;
SIGNAL \bit3|latch_2|Q~combout\ : std_logic;
SIGNAL \disp0|Add14~0_combout\ : std_logic;
SIGNAL \disp0|Add11~0_combout\ : std_logic;
SIGNAL \disp0|Add8~0_combout\ : std_logic;
SIGNAL \disp0|Add6~0_combout\ : std_logic;
SIGNAL \disp0|Add3~0_combout\ : std_logic;
SIGNAL \disp0|Add0~0_combout\ : std_logic;
SIGNAL \bit5|latch_1|Q~combout\ : std_logic;
SIGNAL \bit5|latch_2|Q~combout\ : std_logic;
SIGNAL \bit4|latch_1|Q~combout\ : std_logic;
SIGNAL \bit4|latch_2|Q~combout\ : std_logic;
SIGNAL \bit7|latch_1|Q~combout\ : std_logic;
SIGNAL \bit7|latch_2|Q~combout\ : std_logic;
SIGNAL \bit6|latch_1|Q~combout\ : std_logic;
SIGNAL \bit6|latch_2|Q~combout\ : std_logic;
SIGNAL \disp1|Add14~0_combout\ : std_logic;
SIGNAL \disp1|Add11~0_combout\ : std_logic;
SIGNAL \disp1|Add8~0_combout\ : std_logic;
SIGNAL \disp1|Add6~0_combout\ : std_logic;
SIGNAL \disp1|Add3~0_combout\ : std_logic;
SIGNAL \disp1|Add0~0_combout\ : std_logic;
SIGNAL \bit8|latch_1|Q~combout\ : std_logic;
SIGNAL \bit8|latch_2|Q~combout\ : std_logic;
SIGNAL \bit10|latch_1|Q~combout\ : std_logic;
SIGNAL \bit10|latch_2|Q~combout\ : std_logic;
SIGNAL \bit11|latch_1|Q~combout\ : std_logic;
SIGNAL \bit11|latch_2|Q~combout\ : std_logic;
SIGNAL \bit9|latch_1|Q~combout\ : std_logic;
SIGNAL \bit9|latch_2|Q~combout\ : std_logic;
SIGNAL \disp2|Add14~0_combout\ : std_logic;
SIGNAL \disp2|Add11~0_combout\ : std_logic;
SIGNAL \disp2|Add8~0_combout\ : std_logic;
SIGNAL \disp2|Add6~0_combout\ : std_logic;
SIGNAL \disp2|Add3~0_combout\ : std_logic;
SIGNAL \disp2|Add0~0_combout\ : std_logic;
SIGNAL \bit13|latch_1|Q~combout\ : std_logic;
SIGNAL \bit13|latch_2|Q~combout\ : std_logic;
SIGNAL \bit15|latch_1|Q~combout\ : std_logic;
SIGNAL \bit15|latch_2|Q~combout\ : std_logic;
SIGNAL \bit12|latch_1|Q~combout\ : std_logic;
SIGNAL \bit12|latch_2|Q~combout\ : std_logic;
SIGNAL \bit14|latch_1|Q~combout\ : std_logic;
SIGNAL \bit14|latch_2|Q~combout\ : std_logic;
SIGNAL \disp3|Add14~0_combout\ : std_logic;
SIGNAL \disp3|Add11~0_combout\ : std_logic;
SIGNAL \disp3|Add8~0_combout\ : std_logic;
SIGNAL \disp3|Add6~0_combout\ : std_logic;
SIGNAL \disp3|Add3~0_combout\ : std_logic;
SIGNAL \disp3|Add0~0_combout\ : std_logic;
SIGNAL \disp4|Add14~0_combout\ : std_logic;
SIGNAL \disp4|Add11~0_combout\ : std_logic;
SIGNAL \disp4|Add8~0_combout\ : std_logic;
SIGNAL \disp4|Add6~0_combout\ : std_logic;
SIGNAL \disp4|Add3~0_combout\ : std_logic;
SIGNAL \disp4|Add0~0_combout\ : std_logic;
SIGNAL \disp5|Add14~0_combout\ : std_logic;
SIGNAL \disp5|Add11~0_combout\ : std_logic;
SIGNAL \disp5|Add8~0_combout\ : std_logic;
SIGNAL \disp5|Add6~0_combout\ : std_logic;
SIGNAL \disp5|Add3~0_combout\ : std_logic;
SIGNAL \disp5|Add0~0_combout\ : std_logic;
SIGNAL \disp6|Add14~0_combout\ : std_logic;
SIGNAL \disp6|Add11~0_combout\ : std_logic;
SIGNAL \disp6|Add8~0_combout\ : std_logic;
SIGNAL \disp6|Add6~0_combout\ : std_logic;
SIGNAL \disp6|Add3~0_combout\ : std_logic;
SIGNAL \disp6|Add0~0_combout\ : std_logic;
SIGNAL \disp7|Add14~0_combout\ : std_logic;
SIGNAL \disp7|Add11~0_combout\ : std_logic;
SIGNAL \disp7|Add8~0_combout\ : std_logic;
SIGNAL \disp7|Add6~0_combout\ : std_logic;
SIGNAL \disp7|Add3~0_combout\ : std_logic;
SIGNAL \disp7|Add0~0_combout\ : std_logic;
SIGNAL \disp0|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \disp7|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \disp6|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \disp5|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \disp4|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \disp3|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \disp2|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \disp1|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \disp4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp7|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp6|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp5|ALT_INV_Add0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
out2 <= ww_out2;
latch_in <= ww_latch_in;
clk <= ww_clk;
key_state <= ww_key_state;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\disp4|ALT_INV_Add0~0_combout\ <= NOT \disp4|Add0~0_combout\;
\disp3|ALT_INV_Add0~0_combout\ <= NOT \disp3|Add0~0_combout\;
\disp2|ALT_INV_Add0~0_combout\ <= NOT \disp2|Add0~0_combout\;
\disp1|ALT_INV_Add0~0_combout\ <= NOT \disp1|Add0~0_combout\;
\disp0|ALT_INV_Add0~0_combout\ <= NOT \disp0|Add0~0_combout\;
\disp7|ALT_INV_Add0~0_combout\ <= NOT \disp7|Add0~0_combout\;
\disp6|ALT_INV_Add0~0_combout\ <= NOT \disp6|Add0~0_combout\;
\disp5|ALT_INV_Add0~0_combout\ <= NOT \disp5|Add0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y22_N23
\out2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \out2[0]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\out2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \out2[1]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\out2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \out2[2]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\out2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => \out2[3]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\out2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => \out2[4]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\out2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => \out2[5]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\out2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => \out2[6]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\out2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => \out2[7]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\out2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => \out2[8]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\out2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[9]~input_o\,
	devoe => ww_devoe,
	o => \out2[9]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\out2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[10]~input_o\,
	devoe => ww_devoe,
	o => \out2[10]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\out2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[11]~input_o\,
	devoe => ww_devoe,
	o => \out2[11]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\out2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[12]~input_o\,
	devoe => ww_devoe,
	o => \out2[12]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\out2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[13]~input_o\,
	devoe => ww_devoe,
	o => \out2[13]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\out2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[14]~input_o\,
	devoe => ww_devoe,
	o => \out2[14]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\out2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[15]~input_o\,
	devoe => ww_devoe,
	o => \out2[15]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\latch_in[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[0]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\latch_in[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\latch_in[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[2]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\latch_in[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[3]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\latch_in[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[4]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\latch_in[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[5]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\latch_in[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\latch_in[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\latch_in[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[8]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\latch_in[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[9]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\latch_in[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[10]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\latch_in[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[11]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\latch_in[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[12]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\latch_in[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[13]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\latch_in[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[14]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\latch_in[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \latch_in[15]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \clk~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\key_state~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \key_state~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|Add14~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|Add11~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|Add8~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|Add6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|out\(4),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|Add3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|Add14~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|Add11~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|Add8~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|Add6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|out\(4),
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|Add3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|Add14~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|Add11~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|Add8~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|Add6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|out\(4),
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|Add3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|Add14~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|Add11~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|Add8~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|Add6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|out\(4),
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|Add3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|Add14~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|Add11~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|Add8~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|Add6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|out\(4),
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|Add3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|Add14~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|Add11~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|Add8~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|Add6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|out\(4),
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|Add3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|Add14~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|Add11~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|Add8~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|Add6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|out\(4),
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|Add3~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|Add14~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|Add11~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|Add8~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|Add6~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|out\(4),
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|Add3~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y40_N4
\bit0|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit0|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \bit0|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit0|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N12
\bit0|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|latch_2|Q~combout\ = (\KEY[0]~input_o\ & (\bit0|latch_1|Q~combout\)) # (!\KEY[0]~input_o\ & ((\bit0|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \bit0|latch_1|Q~combout\,
	datad => \bit0|latch_2|Q~combout\,
	combout => \bit0|latch_2|Q~combout\);

-- Location: LCCOMB_X113_Y40_N8
\bit1|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit1|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit1|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \bit1|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit1|latch_1|Q~combout\);

-- Location: LCCOMB_X113_Y40_N18
\bit1|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit1|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit1|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit1|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit1|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit1|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N22
\bit2|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit2|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit2|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \bit2|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit2|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N18
\bit2|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit2|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit2|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit2|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit2|latch_1|Q~combout\,
	combout => \bit2|latch_2|Q~combout\);

-- Location: LCCOMB_X113_Y40_N14
\bit3|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit3|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit3|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \bit3|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit3|latch_1|Q~combout\);

-- Location: LCCOMB_X113_Y40_N24
\bit3|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit3|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit3|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit3|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit3|latch_2|Q~combout\,
	datac => \bit3|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit3|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y42_N16
\disp0|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add14~0_combout\ = (\bit2|latch_2|Q~combout\ & (!\bit1|latch_2|Q~combout\ & (\bit0|latch_2|Q~combout\ $ (!\bit3|latch_2|Q~combout\)))) # (!\bit2|latch_2|Q~combout\ & (\bit0|latch_2|Q~combout\ & (\bit1|latch_2|Q~combout\ $ 
-- (!\bit3|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit0|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit3|latch_2|Q~combout\,
	combout => \disp0|Add14~0_combout\);

-- Location: LCCOMB_X114_Y42_N6
\disp0|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add11~0_combout\ = (\bit2|latch_2|Q~combout\ & (\bit0|latch_2|Q~combout\ $ (\bit1|latch_2|Q~combout\ $ (\bit3|latch_2|Q~combout\)))) # (!\bit2|latch_2|Q~combout\ & (\bit0|latch_2|Q~combout\ & (\bit1|latch_2|Q~combout\ & \bit3|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit0|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit3|latch_2|Q~combout\,
	combout => \disp0|Add11~0_combout\);

-- Location: LCCOMB_X114_Y42_N12
\disp0|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add8~0_combout\ = (\bit2|latch_2|Q~combout\ & (\bit3|latch_2|Q~combout\ & (\bit0|latch_2|Q~combout\ $ (!\bit1|latch_2|Q~combout\)))) # (!\bit2|latch_2|Q~combout\ & (!\bit0|latch_2|Q~combout\ & (\bit1|latch_2|Q~combout\ & 
-- !\bit3|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit0|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit3|latch_2|Q~combout\,
	combout => \disp0|Add8~0_combout\);

-- Location: LCCOMB_X114_Y42_N2
\disp0|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add6~0_combout\ = (\bit0|latch_2|Q~combout\ & (\bit1|latch_2|Q~combout\ $ ((!\bit2|latch_2|Q~combout\)))) # (!\bit0|latch_2|Q~combout\ & ((\bit1|latch_2|Q~combout\ & (!\bit2|latch_2|Q~combout\ & \bit3|latch_2|Q~combout\)) # 
-- (!\bit1|latch_2|Q~combout\ & (\bit2|latch_2|Q~combout\ & !\bit3|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit0|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit3|latch_2|Q~combout\,
	combout => \disp0|Add6~0_combout\);

-- Location: LCCOMB_X114_Y42_N4
\disp0|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|out\(4) = (\bit0|latch_2|Q~combout\) # ((!\bit1|latch_2|Q~combout\ & \bit2|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit0|latch_2|Q~combout\,
	combout => \disp0|out\(4));

-- Location: LCCOMB_X114_Y42_N14
\disp0|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add3~0_combout\ = (\bit1|latch_2|Q~combout\ & (!\bit3|latch_2|Q~combout\ & ((\bit0|latch_2|Q~combout\) # (!\bit2|latch_2|Q~combout\)))) # (!\bit1|latch_2|Q~combout\ & ((\bit2|latch_2|Q~combout\ & ((\bit3|latch_2|Q~combout\))) # 
-- (!\bit2|latch_2|Q~combout\ & (\bit0|latch_2|Q~combout\ & !\bit3|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit0|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit3|latch_2|Q~combout\,
	combout => \disp0|Add3~0_combout\);

-- Location: LCCOMB_X114_Y42_N28
\disp0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add0~0_combout\ = (\bit3|latch_2|Q~combout\) # ((\bit1|latch_2|Q~combout\ & ((!\bit2|latch_2|Q~combout\) # (!\bit0|latch_2|Q~combout\))) # (!\bit1|latch_2|Q~combout\ & ((\bit2|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit0|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit3|latch_2|Q~combout\,
	combout => \disp0|Add0~0_combout\);

-- Location: LCCOMB_X114_Y40_N8
\bit5|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit5|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit5|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \bit5|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit5|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N28
\bit5|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit5|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit5|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit5|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \bit5|latch_2|Q~combout\,
	datad => \bit5|latch_1|Q~combout\,
	combout => \bit5|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N16
\bit4|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit4|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit4|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \bit4|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit4|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N20
\bit4|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit4|latch_2|Q~combout\ = (\KEY[0]~input_o\ & (\bit4|latch_1|Q~combout\)) # (!\KEY[0]~input_o\ & ((\bit4|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \bit4|latch_1|Q~combout\,
	datad => \bit4|latch_2|Q~combout\,
	combout => \bit4|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N2
\bit7|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit7|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit7|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \bit7|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit7|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N10
\bit7|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit7|latch_2|Q~combout\ = (\KEY[0]~input_o\ & (\bit7|latch_1|Q~combout\)) # (!\KEY[0]~input_o\ & ((\bit7|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \bit7|latch_1|Q~combout\,
	datad => \bit7|latch_2|Q~combout\,
	combout => \bit7|latch_2|Q~combout\);

-- Location: LCCOMB_X113_Y40_N22
\bit6|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit6|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit6|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \bit6|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit6|latch_1|Q~combout\);

-- Location: LCCOMB_X113_Y40_N28
\bit6|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit6|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit6|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit6|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit6|latch_2|Q~combout\,
	datac => \bit6|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit6|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y41_N4
\disp1|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add14~0_combout\ = (\bit7|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ $ (\bit6|latch_2|Q~combout\)))) # (!\bit7|latch_2|Q~combout\ & (!\bit5|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ $ 
-- (\bit6|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit4|latch_2|Q~combout\,
	datac => \bit7|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add14~0_combout\);

-- Location: LCCOMB_X114_Y41_N14
\disp1|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add11~0_combout\ = (\bit6|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ $ (\bit4|latch_2|Q~combout\ $ (\bit7|latch_2|Q~combout\)))) # (!\bit6|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ & \bit7|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit4|latch_2|Q~combout\,
	datac => \bit7|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add11~0_combout\);

-- Location: LCCOMB_X114_Y41_N24
\disp1|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add8~0_combout\ = (\bit7|latch_2|Q~combout\ & (\bit6|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ $ (!\bit4|latch_2|Q~combout\)))) # (!\bit7|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ & (!\bit4|latch_2|Q~combout\ & 
-- !\bit6|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit4|latch_2|Q~combout\,
	datac => \bit7|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add8~0_combout\);

-- Location: LCCOMB_X114_Y41_N22
\disp1|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add6~0_combout\ = (\bit4|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ $ (((!\bit6|latch_2|Q~combout\))))) # (!\bit4|latch_2|Q~combout\ & ((\bit5|latch_2|Q~combout\ & (\bit7|latch_2|Q~combout\ & !\bit6|latch_2|Q~combout\)) # 
-- (!\bit5|latch_2|Q~combout\ & (!\bit7|latch_2|Q~combout\ & \bit6|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit4|latch_2|Q~combout\,
	datac => \bit7|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add6~0_combout\);

-- Location: LCCOMB_X114_Y41_N8
\disp1|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|out\(4) = (\bit4|latch_2|Q~combout\) # ((!\bit5|latch_2|Q~combout\ & \bit6|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit4|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|out\(4));

-- Location: LCCOMB_X114_Y41_N6
\disp1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add3~0_combout\ = (\bit5|latch_2|Q~combout\ & (!\bit7|latch_2|Q~combout\ & ((\bit4|latch_2|Q~combout\) # (!\bit6|latch_2|Q~combout\)))) # (!\bit5|latch_2|Q~combout\ & ((\bit7|latch_2|Q~combout\ & ((\bit6|latch_2|Q~combout\))) # 
-- (!\bit7|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ & !\bit6|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit4|latch_2|Q~combout\,
	datac => \bit7|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add3~0_combout\);

-- Location: LCCOMB_X114_Y41_N12
\disp1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add0~0_combout\ = (\bit7|latch_2|Q~combout\) # ((\bit5|latch_2|Q~combout\ & ((!\bit6|latch_2|Q~combout\) # (!\bit4|latch_2|Q~combout\))) # (!\bit5|latch_2|Q~combout\ & ((\bit6|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit4|latch_2|Q~combout\,
	datac => \bit7|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add0~0_combout\);

-- Location: LCCOMB_X114_Y36_N18
\bit8|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit8|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit8|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \bit8|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit8|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y36_N6
\bit8|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit8|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit8|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit8|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit8|latch_1|Q~combout\,
	combout => \bit8|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y36_N2
\bit10|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit10|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit10|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \bit10|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit10|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y36_N26
\bit10|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit10|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit10|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit10|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit10|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit10|latch_1|Q~combout\,
	combout => \bit10|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y36_N0
\bit11|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit11|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit11|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[11]~input_o\,
	datac => \bit11|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit11|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y36_N16
\bit11|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit11|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit11|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit11|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit11|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit11|latch_1|Q~combout\,
	combout => \bit11|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y36_N20
\bit9|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit9|latch_1|Q~combout\ = (\KEY[0]~input_o\ & (\bit9|latch_1|Q~combout\)) # (!\KEY[0]~input_o\ & ((\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit9|latch_1|Q~combout\,
	datac => \SW[9]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \bit9|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y36_N24
\bit9|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit9|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit9|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit9|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit9|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit9|latch_1|Q~combout\,
	combout => \bit9|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y36_N4
\disp2|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add14~0_combout\ = (\bit10|latch_2|Q~combout\ & (!\bit9|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ $ (!\bit11|latch_2|Q~combout\)))) # (!\bit10|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ & (\bit11|latch_2|Q~combout\ $ 
-- (!\bit9|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8|latch_2|Q~combout\,
	datab => \bit10|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit9|latch_2|Q~combout\,
	combout => \disp2|Add14~0_combout\);

-- Location: LCCOMB_X114_Y36_N14
\disp2|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add11~0_combout\ = (\bit10|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ $ (\bit11|latch_2|Q~combout\ $ (\bit9|latch_2|Q~combout\)))) # (!\bit10|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ & (\bit11|latch_2|Q~combout\ & 
-- \bit9|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8|latch_2|Q~combout\,
	datab => \bit10|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit9|latch_2|Q~combout\,
	combout => \disp2|Add11~0_combout\);

-- Location: LCCOMB_X114_Y36_N12
\disp2|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add8~0_combout\ = (\bit10|latch_2|Q~combout\ & (\bit11|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ $ (!\bit9|latch_2|Q~combout\)))) # (!\bit10|latch_2|Q~combout\ & (!\bit8|latch_2|Q~combout\ & (!\bit11|latch_2|Q~combout\ & 
-- \bit9|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8|latch_2|Q~combout\,
	datab => \bit10|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit9|latch_2|Q~combout\,
	combout => \disp2|Add8~0_combout\);

-- Location: LCCOMB_X114_Y36_N30
\disp2|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add6~0_combout\ = (\bit8|latch_2|Q~combout\ & (\bit10|latch_2|Q~combout\ $ (((!\bit9|latch_2|Q~combout\))))) # (!\bit8|latch_2|Q~combout\ & ((\bit10|latch_2|Q~combout\ & (!\bit11|latch_2|Q~combout\ & !\bit9|latch_2|Q~combout\)) # 
-- (!\bit10|latch_2|Q~combout\ & (\bit11|latch_2|Q~combout\ & \bit9|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8|latch_2|Q~combout\,
	datab => \bit10|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit9|latch_2|Q~combout\,
	combout => \disp2|Add6~0_combout\);

-- Location: LCCOMB_X114_Y36_N8
\disp2|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|out\(4) = (\bit8|latch_2|Q~combout\) # ((!\bit9|latch_2|Q~combout\ & \bit10|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit9|latch_2|Q~combout\,
	datac => \bit10|latch_2|Q~combout\,
	datad => \bit8|latch_2|Q~combout\,
	combout => \disp2|out\(4));

-- Location: LCCOMB_X114_Y36_N22
\disp2|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add3~0_combout\ = (\bit10|latch_2|Q~combout\ & ((\bit11|latch_2|Q~combout\ & ((!\bit9|latch_2|Q~combout\))) # (!\bit11|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ & \bit9|latch_2|Q~combout\)))) # (!\bit10|latch_2|Q~combout\ & 
-- (!\bit11|latch_2|Q~combout\ & ((\bit8|latch_2|Q~combout\) # (\bit9|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8|latch_2|Q~combout\,
	datab => \bit10|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit9|latch_2|Q~combout\,
	combout => \disp2|Add3~0_combout\);

-- Location: LCCOMB_X114_Y36_N28
\disp2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add0~0_combout\ = (\bit11|latch_2|Q~combout\) # ((\bit10|latch_2|Q~combout\ & ((!\bit9|latch_2|Q~combout\) # (!\bit8|latch_2|Q~combout\))) # (!\bit10|latch_2|Q~combout\ & ((\bit9|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8|latch_2|Q~combout\,
	datab => \bit10|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit9|latch_2|Q~combout\,
	combout => \disp2|Add0~0_combout\);

-- Location: LCCOMB_X114_Y40_N14
\bit13|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit13|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit13|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \bit13|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit13|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N6
\bit13|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit13|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit13|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit13|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \KEY[0]~input_o\,
	datad => \bit13|latch_1|Q~combout\,
	combout => \bit13|latch_2|Q~combout\);

-- Location: LCCOMB_X112_Y40_N22
\bit15|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit15|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit15|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \bit15|latch_1|Q~combout\,
	combout => \bit15|latch_1|Q~combout\);

-- Location: LCCOMB_X112_Y40_N28
\bit15|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit15|latch_2|Q~combout\ = (\KEY[0]~input_o\ & (\bit15|latch_1|Q~combout\)) # (!\KEY[0]~input_o\ & ((\bit15|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \bit15|latch_1|Q~combout\,
	datad => \bit15|latch_2|Q~combout\,
	combout => \bit15|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N30
\bit12|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit12|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit12|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \bit12|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit12|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N26
\bit12|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit12|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit12|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit12|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \bit12|latch_2|Q~combout\,
	datad => \bit12|latch_1|Q~combout\,
	combout => \bit12|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N0
\bit14|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit14|latch_1|Q~combout\ = (\KEY[0]~input_o\ & (\bit14|latch_1|Q~combout\)) # (!\KEY[0]~input_o\ & ((\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit14|latch_1|Q~combout\,
	datac => \SW[14]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \bit14|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N24
\bit14|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit14|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit14|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit14|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \bit14|latch_2|Q~combout\,
	datad => \bit14|latch_1|Q~combout\,
	combout => \bit14|latch_2|Q~combout\);

-- Location: LCCOMB_X111_Y29_N16
\disp3|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add14~0_combout\ = (\bit15|latch_2|Q~combout\ & (\bit12|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ $ (\bit14|latch_2|Q~combout\)))) # (!\bit15|latch_2|Q~combout\ & (!\bit13|latch_2|Q~combout\ & (\bit12|latch_2|Q~combout\ $ 
-- (\bit14|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit12|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add14~0_combout\);

-- Location: LCCOMB_X111_Y29_N26
\disp3|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add11~0_combout\ = (\bit14|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ $ (\bit15|latch_2|Q~combout\ $ (\bit12|latch_2|Q~combout\)))) # (!\bit14|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ & (\bit15|latch_2|Q~combout\ & 
-- \bit12|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit12|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add11~0_combout\);

-- Location: LCCOMB_X111_Y29_N4
\disp3|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add8~0_combout\ = (\bit15|latch_2|Q~combout\ & (\bit14|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ $ (!\bit12|latch_2|Q~combout\)))) # (!\bit15|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ & (!\bit12|latch_2|Q~combout\ & 
-- !\bit14|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit12|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add8~0_combout\);

-- Location: LCCOMB_X111_Y29_N6
\disp3|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add6~0_combout\ = (\bit12|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ $ (((!\bit14|latch_2|Q~combout\))))) # (!\bit12|latch_2|Q~combout\ & ((\bit13|latch_2|Q~combout\ & (\bit15|latch_2|Q~combout\ & !\bit14|latch_2|Q~combout\)) # 
-- (!\bit13|latch_2|Q~combout\ & (!\bit15|latch_2|Q~combout\ & \bit14|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit12|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add6~0_combout\);

-- Location: LCCOMB_X111_Y29_N0
\disp3|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|out\(4) = (\bit12|latch_2|Q~combout\) # ((!\bit13|latch_2|Q~combout\ & \bit14|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datac => \bit12|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|out\(4));

-- Location: LCCOMB_X111_Y29_N30
\disp3|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add3~0_combout\ = (\bit13|latch_2|Q~combout\ & (!\bit15|latch_2|Q~combout\ & ((\bit12|latch_2|Q~combout\) # (!\bit14|latch_2|Q~combout\)))) # (!\bit13|latch_2|Q~combout\ & ((\bit15|latch_2|Q~combout\ & ((\bit14|latch_2|Q~combout\))) # 
-- (!\bit15|latch_2|Q~combout\ & (\bit12|latch_2|Q~combout\ & !\bit14|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit12|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add3~0_combout\);

-- Location: LCCOMB_X111_Y29_N12
\disp3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add0~0_combout\ = (\bit15|latch_2|Q~combout\) # ((\bit13|latch_2|Q~combout\ & ((!\bit14|latch_2|Q~combout\) # (!\bit12|latch_2|Q~combout\))) # (!\bit13|latch_2|Q~combout\ & ((\bit14|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit12|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add0~0_combout\);

-- Location: LCCOMB_X98_Y4_N28
\disp4|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add14~0_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ $ (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \disp4|Add14~0_combout\);

-- Location: LCCOMB_X98_Y4_N14
\disp4|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add11~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (\SW[3]~input_o\ $ (\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \disp4|Add11~0_combout\);

-- Location: LCCOMB_X98_Y4_N20
\disp4|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add8~0_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \disp4|Add8~0_combout\);

-- Location: LCCOMB_X98_Y4_N22
\disp4|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add6~0_combout\ = (\SW[0]~input_o\ & (\SW[2]~input_o\ $ ((!\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[2]~input_o\ & (!\SW[1]~input_o\ & !\SW[3]~input_o\)) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \disp4|Add6~0_combout\);

-- Location: LCCOMB_X98_Y4_N24
\disp4|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|out\(4) = (\SW[0]~input_o\) # ((!\SW[1]~input_o\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \disp4|out\(4));

-- Location: LCCOMB_X98_Y4_N18
\disp4|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add3~0_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & (\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \disp4|Add3~0_combout\);

-- Location: LCCOMB_X98_Y4_N4
\disp4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add0~0_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\ & ((!\SW[0]~input_o\) # (!\SW[1]~input_o\))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \disp4|Add0~0_combout\);

-- Location: LCCOMB_X88_Y4_N24
\disp5|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add14~0_combout\ = (\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\SW[4]~input_o\ $ (!\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[4]~input_o\ & (\SW[5]~input_o\ $ (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \disp5|Add14~0_combout\);

-- Location: LCCOMB_X88_Y4_N26
\disp5|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add11~0_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\ $ (\SW[4]~input_o\ $ (\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[5]~input_o\ & (\SW[4]~input_o\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \disp5|Add11~0_combout\);

-- Location: LCCOMB_X88_Y4_N28
\disp5|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add8~0_combout\ = (\SW[6]~input_o\ & (\SW[7]~input_o\ & (\SW[5]~input_o\ $ (!\SW[4]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[5]~input_o\ & (!\SW[4]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \disp5|Add8~0_combout\);

-- Location: LCCOMB_X88_Y4_N18
\disp5|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add6~0_combout\ = (\SW[4]~input_o\ & (\SW[6]~input_o\ $ ((!\SW[5]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[6]~input_o\ & (!\SW[5]~input_o\ & !\SW[7]~input_o\)) # (!\SW[6]~input_o\ & (\SW[5]~input_o\ & \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \disp5|Add6~0_combout\);

-- Location: LCCOMB_X88_Y4_N16
\disp5|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|out\(4) = (\SW[4]~input_o\) # ((\SW[6]~input_o\ & !\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \disp5|out\(4));

-- Location: LCCOMB_X88_Y4_N14
\disp5|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add3~0_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\ & (\SW[4]~input_o\ & !\SW[7]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[7]~input_o\))))) # (!\SW[6]~input_o\ & (!\SW[7]~input_o\ & ((\SW[5]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \disp5|Add3~0_combout\);

-- Location: LCCOMB_X88_Y4_N12
\disp5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add0~0_combout\ = (\SW[7]~input_o\) # ((\SW[6]~input_o\ & ((!\SW[4]~input_o\) # (!\SW[5]~input_o\))) # (!\SW[6]~input_o\ & (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \disp5|Add0~0_combout\);

-- Location: LCCOMB_X90_Y4_N28
\disp6|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add14~0_combout\ = (\SW[11]~input_o\ & (\SW[8]~input_o\ & (\SW[10]~input_o\ $ (\SW[9]~input_o\)))) # (!\SW[11]~input_o\ & (!\SW[9]~input_o\ & (\SW[8]~input_o\ $ (\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \disp6|Add14~0_combout\);

-- Location: LCCOMB_X90_Y4_N26
\disp6|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add11~0_combout\ = (\SW[10]~input_o\ & (\SW[8]~input_o\ $ (\SW[11]~input_o\ $ (\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\ & (\SW[11]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \disp6|Add11~0_combout\);

-- Location: LCCOMB_X90_Y4_N24
\disp6|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add8~0_combout\ = (\SW[11]~input_o\ & (\SW[10]~input_o\ & (\SW[8]~input_o\ $ (!\SW[9]~input_o\)))) # (!\SW[11]~input_o\ & (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \disp6|Add8~0_combout\);

-- Location: LCCOMB_X90_Y4_N22
\disp6|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add6~0_combout\ = (\SW[8]~input_o\ & ((\SW[10]~input_o\ $ (!\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[11]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)) # (!\SW[11]~input_o\ & (\SW[10]~input_o\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \disp6|Add6~0_combout\);

-- Location: LCCOMB_X90_Y4_N16
\disp6|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|out\(4) = (\SW[8]~input_o\) # ((\SW[10]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \disp6|out\(4));

-- Location: LCCOMB_X90_Y4_N10
\disp6|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add3~0_combout\ = (\SW[11]~input_o\ & (((\SW[10]~input_o\ & !\SW[9]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[8]~input_o\ & ((\SW[9]~input_o\) # (!\SW[10]~input_o\))) # (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \disp6|Add3~0_combout\);

-- Location: LCCOMB_X90_Y4_N20
\disp6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add0~0_combout\ = (\SW[11]~input_o\) # ((\SW[10]~input_o\ & ((!\SW[9]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[10]~input_o\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \disp6|Add0~0_combout\);

-- Location: LCCOMB_X70_Y4_N28
\disp7|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add14~0_combout\ = (\SW[15]~input_o\ & (\SW[12]~input_o\ & (\SW[13]~input_o\ $ (\SW[14]~input_o\)))) # (!\SW[15]~input_o\ & (!\SW[13]~input_o\ & (\SW[12]~input_o\ $ (\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \disp7|Add14~0_combout\);

-- Location: LCCOMB_X70_Y4_N26
\disp7|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add11~0_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ $ (\SW[15]~input_o\ $ (\SW[12]~input_o\)))) # (!\SW[14]~input_o\ & (\SW[13]~input_o\ & (\SW[15]~input_o\ & \SW[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \disp7|Add11~0_combout\);

-- Location: LCCOMB_X70_Y4_N0
\disp7|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add8~0_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & (\SW[13]~input_o\ $ (!\SW[12]~input_o\)))) # (!\SW[15]~input_o\ & (\SW[13]~input_o\ & (!\SW[12]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \disp7|Add8~0_combout\);

-- Location: LCCOMB_X70_Y4_N22
\disp7|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add6~0_combout\ = (\SW[12]~input_o\ & (\SW[13]~input_o\ $ (((!\SW[14]~input_o\))))) # (!\SW[12]~input_o\ & ((\SW[13]~input_o\ & (\SW[15]~input_o\ & !\SW[14]~input_o\)) # (!\SW[13]~input_o\ & (!\SW[15]~input_o\ & \SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \disp7|Add6~0_combout\);

-- Location: LCCOMB_X70_Y4_N24
\disp7|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|out\(4) = (\SW[12]~input_o\) # ((!\SW[13]~input_o\ & \SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \disp7|out\(4));

-- Location: LCCOMB_X70_Y4_N10
\disp7|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add3~0_combout\ = (\SW[13]~input_o\ & (!\SW[15]~input_o\ & ((\SW[12]~input_o\) # (!\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[15]~input_o\ & ((\SW[14]~input_o\))) # (!\SW[15]~input_o\ & (\SW[12]~input_o\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \disp7|Add3~0_combout\);

-- Location: LCCOMB_X70_Y4_N12
\disp7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add0~0_combout\ = (\SW[15]~input_o\) # ((\SW[13]~input_o\ & ((!\SW[14]~input_o\) # (!\SW[12]~input_o\))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \disp7|Add0~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

ww_out2(0) <= \out2[0]~output_o\;

ww_out2(1) <= \out2[1]~output_o\;

ww_out2(2) <= \out2[2]~output_o\;

ww_out2(3) <= \out2[3]~output_o\;

ww_out2(4) <= \out2[4]~output_o\;

ww_out2(5) <= \out2[5]~output_o\;

ww_out2(6) <= \out2[6]~output_o\;

ww_out2(7) <= \out2[7]~output_o\;

ww_out2(8) <= \out2[8]~output_o\;

ww_out2(9) <= \out2[9]~output_o\;

ww_out2(10) <= \out2[10]~output_o\;

ww_out2(11) <= \out2[11]~output_o\;

ww_out2(12) <= \out2[12]~output_o\;

ww_out2(13) <= \out2[13]~output_o\;

ww_out2(14) <= \out2[14]~output_o\;

ww_out2(15) <= \out2[15]~output_o\;

ww_latch_in(0) <= \latch_in[0]~output_o\;

ww_latch_in(1) <= \latch_in[1]~output_o\;

ww_latch_in(2) <= \latch_in[2]~output_o\;

ww_latch_in(3) <= \latch_in[3]~output_o\;

ww_latch_in(4) <= \latch_in[4]~output_o\;

ww_latch_in(5) <= \latch_in[5]~output_o\;

ww_latch_in(6) <= \latch_in[6]~output_o\;

ww_latch_in(7) <= \latch_in[7]~output_o\;

ww_latch_in(8) <= \latch_in[8]~output_o\;

ww_latch_in(9) <= \latch_in[9]~output_o\;

ww_latch_in(10) <= \latch_in[10]~output_o\;

ww_latch_in(11) <= \latch_in[11]~output_o\;

ww_latch_in(12) <= \latch_in[12]~output_o\;

ww_latch_in(13) <= \latch_in[13]~output_o\;

ww_latch_in(14) <= \latch_in[14]~output_o\;

ww_latch_in(15) <= \latch_in[15]~output_o\;

ww_clk <= \clk~output_o\;

ww_key_state <= \key_state~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


