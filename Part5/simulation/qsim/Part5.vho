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

-- DATE "11/09/2018 18:41:54"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Part5 IS
    PORT (
	SW : IN std_logic_vector(15 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	input1 : OUT std_logic_vector(15 DOWNTO 0);
	input2 : OUT std_logic_vector(15 DOWNTO 0);
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
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[0]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[2]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[3]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[4]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[5]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[7]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[8]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[9]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[10]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[11]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[12]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[13]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[14]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[15]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[0]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[2]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[3]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[4]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[5]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[6]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[7]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[8]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[9]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[10]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[11]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[12]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[13]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[14]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[15]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[2]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[3]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[8]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[9]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[10]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[11]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[12]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[14]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latch_in[15]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_state	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_input1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_input2 : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \key_state~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \input1[0]~output_o\ : std_logic;
SIGNAL \input1[1]~output_o\ : std_logic;
SIGNAL \input1[2]~output_o\ : std_logic;
SIGNAL \input1[3]~output_o\ : std_logic;
SIGNAL \input1[4]~output_o\ : std_logic;
SIGNAL \input1[5]~output_o\ : std_logic;
SIGNAL \input1[6]~output_o\ : std_logic;
SIGNAL \input1[7]~output_o\ : std_logic;
SIGNAL \input1[8]~output_o\ : std_logic;
SIGNAL \input1[9]~output_o\ : std_logic;
SIGNAL \input1[10]~output_o\ : std_logic;
SIGNAL \input1[11]~output_o\ : std_logic;
SIGNAL \input1[12]~output_o\ : std_logic;
SIGNAL \input1[13]~output_o\ : std_logic;
SIGNAL \input1[14]~output_o\ : std_logic;
SIGNAL \input1[15]~output_o\ : std_logic;
SIGNAL \input2[0]~output_o\ : std_logic;
SIGNAL \input2[1]~output_o\ : std_logic;
SIGNAL \input2[2]~output_o\ : std_logic;
SIGNAL \input2[3]~output_o\ : std_logic;
SIGNAL \input2[4]~output_o\ : std_logic;
SIGNAL \input2[5]~output_o\ : std_logic;
SIGNAL \input2[6]~output_o\ : std_logic;
SIGNAL \input2[7]~output_o\ : std_logic;
SIGNAL \input2[8]~output_o\ : std_logic;
SIGNAL \input2[9]~output_o\ : std_logic;
SIGNAL \input2[10]~output_o\ : std_logic;
SIGNAL \input2[11]~output_o\ : std_logic;
SIGNAL \input2[12]~output_o\ : std_logic;
SIGNAL \input2[13]~output_o\ : std_logic;
SIGNAL \input2[14]~output_o\ : std_logic;
SIGNAL \input2[15]~output_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \key_state~reg0feeder_combout\ : std_logic;
SIGNAL \key_state~reg0_q\ : std_logic;
SIGNAL \key_state~reg0clkctrl_outclk\ : std_logic;
SIGNAL \input1[0]$latch~combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \input1[1]$latch~combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \input1[2]$latch~combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \input1[3]$latch~combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \input1[4]$latch~combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \input1[5]$latch~combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \input1[6]$latch~combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \input1[7]$latch~combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \input1[8]$latch~combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \input1[9]$latch~combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \input1[10]$latch~combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \input1[11]$latch~combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \input1[12]$latch~combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \input1[13]$latch~combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \input1[14]$latch~combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \input1[15]$latch~combout\ : std_logic;
SIGNAL \input2[0]$latch~combout\ : std_logic;
SIGNAL \input2[1]$latch~combout\ : std_logic;
SIGNAL \input2[2]$latch~combout\ : std_logic;
SIGNAL \input2[3]$latch~combout\ : std_logic;
SIGNAL \input2[4]$latch~combout\ : std_logic;
SIGNAL \input2[5]$latch~combout\ : std_logic;
SIGNAL \input2[6]$latch~combout\ : std_logic;
SIGNAL \input2[7]$latch~combout\ : std_logic;
SIGNAL \input2[8]$latch~combout\ : std_logic;
SIGNAL \input2[9]$latch~combout\ : std_logic;
SIGNAL \input2[10]$latch~combout\ : std_logic;
SIGNAL \input2[11]$latch~combout\ : std_logic;
SIGNAL \input2[12]$latch~combout\ : std_logic;
SIGNAL \input2[13]$latch~combout\ : std_logic;
SIGNAL \input2[14]$latch~combout\ : std_logic;
SIGNAL \input2[15]$latch~combout\ : std_logic;
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
SIGNAL \bit6|latch_1|Q~combout\ : std_logic;
SIGNAL \bit6|latch_2|Q~combout\ : std_logic;
SIGNAL \bit7|latch_1|Q~combout\ : std_logic;
SIGNAL \bit7|latch_2|Q~combout\ : std_logic;
SIGNAL \bit4|latch_1|Q~combout\ : std_logic;
SIGNAL \bit4|latch_2|Q~combout\ : std_logic;
SIGNAL \bit5|latch_1|Q~combout\ : std_logic;
SIGNAL \bit5|latch_2|Q~combout\ : std_logic;
SIGNAL \disp1|Add14~0_combout\ : std_logic;
SIGNAL \disp1|Add11~0_combout\ : std_logic;
SIGNAL \disp1|Add8~0_combout\ : std_logic;
SIGNAL \disp1|Add6~0_combout\ : std_logic;
SIGNAL \disp1|Add3~0_combout\ : std_logic;
SIGNAL \disp1|Add0~0_combout\ : std_logic;
SIGNAL \bit9|latch_1|Q~combout\ : std_logic;
SIGNAL \bit9|latch_2|Q~combout\ : std_logic;
SIGNAL \bit11|latch_1|Q~combout\ : std_logic;
SIGNAL \bit11|latch_2|Q~combout\ : std_logic;
SIGNAL \bit10|latch_1|Q~combout\ : std_logic;
SIGNAL \bit10|latch_2|Q~combout\ : std_logic;
SIGNAL \bit8|latch_1|Q~combout\ : std_logic;
SIGNAL \bit8|latch_2|Q~combout\ : std_logic;
SIGNAL \disp2|Add14~0_combout\ : std_logic;
SIGNAL \disp2|Add11~0_combout\ : std_logic;
SIGNAL \disp2|Add8~0_combout\ : std_logic;
SIGNAL \disp2|Add6~0_combout\ : std_logic;
SIGNAL \disp2|Add3~0_combout\ : std_logic;
SIGNAL \disp2|Add0~0_combout\ : std_logic;
SIGNAL \bit13|latch_1|Q~combout\ : std_logic;
SIGNAL \bit13|latch_2|Q~combout\ : std_logic;
SIGNAL \bit12|latch_1|Q~combout\ : std_logic;
SIGNAL \bit12|latch_2|Q~combout\ : std_logic;
SIGNAL \bit15|latch_1|Q~combout\ : std_logic;
SIGNAL \bit15|latch_2|Q~combout\ : std_logic;
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
SIGNAL \disp7|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp6|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp5|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Add0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
input1 <= ww_input1;
input2 <= ww_input2;
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

\key_state~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \key_state~reg0_q\);
\disp7|ALT_INV_Add0~0_combout\ <= NOT \disp7|Add0~0_combout\;
\disp6|ALT_INV_Add0~0_combout\ <= NOT \disp6|Add0~0_combout\;
\disp5|ALT_INV_Add0~0_combout\ <= NOT \disp5|Add0~0_combout\;
\disp4|ALT_INV_Add0~0_combout\ <= NOT \disp4|Add0~0_combout\;
\disp3|ALT_INV_Add0~0_combout\ <= NOT \disp3|Add0~0_combout\;
\disp2|ALT_INV_Add0~0_combout\ <= NOT \disp2|Add0~0_combout\;
\disp1|ALT_INV_Add0~0_combout\ <= NOT \disp1|Add0~0_combout\;
\disp0|ALT_INV_Add0~0_combout\ <= NOT \disp0|Add0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y28_N2
\input1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[0]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\input1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[1]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\input1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[2]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\input1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[3]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[3]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\input1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[4]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[4]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\input1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[5]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[5]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\input1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[6]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[6]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\input1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[7]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[7]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\input1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[8]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[8]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\input1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[9]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[9]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\input1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[10]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[10]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\input1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[11]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\input1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[12]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\input1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[13]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[13]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\input1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[14]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[14]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\input1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]$latch~combout\,
	devoe => ww_devoe,
	o => \input1[15]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\input2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[0]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\input2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[1]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\input2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[2]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[2]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\input2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[3]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[3]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\input2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[4]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[4]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\input2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[5]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[5]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\input2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[6]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[6]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\input2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[7]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[7]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\input2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[8]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[8]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\input2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[9]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[9]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\input2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[10]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[10]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\input2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[11]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\input2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[12]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[12]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\input2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[13]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[13]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\input2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[14]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[14]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\input2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input2[15]$latch~combout\,
	devoe => ww_devoe,
	o => \input2[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
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

-- Location: IOOBUF_X38_Y73_N16
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

-- Location: IOOBUF_X89_Y73_N9
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

-- Location: IOOBUF_X113_Y73_N9
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

-- Location: IOOBUF_X18_Y73_N16
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

-- Location: IOOBUF_X27_Y73_N16
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

-- Location: IOOBUF_X60_Y73_N2
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

-- Location: IOOBUF_X79_Y73_N2
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

-- Location: IOOBUF_X0_Y44_N9
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

-- Location: IOOBUF_X0_Y55_N9
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

-- Location: IOOBUF_X115_Y59_N23
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

-- Location: IOOBUF_X74_Y73_N16
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

-- Location: IOOBUF_X0_Y62_N23
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

-- Location: IOOBUF_X81_Y73_N9
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

-- Location: IOOBUF_X52_Y73_N16
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

-- Location: IOOBUF_X115_Y34_N16
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

-- Location: IOOBUF_X65_Y73_N16
\clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\key_state~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_state~reg0_q\,
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

-- Location: LCCOMB_X114_Y37_N28
\key_state~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_state~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \key_state~reg0feeder_combout\);

-- Location: FF_X114_Y37_N29
\key_state~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \key_state~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_state~reg0_q\);

-- Location: CLKCTRL_G7
\key_state~reg0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key_state~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_state~reg0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y20_N10
\input1[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[0]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[0]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \key_state~reg0clkctrl_outclk\,
	datad => \input1[0]$latch~combout\,
	combout => \input1[0]$latch~combout\);

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

-- Location: LCCOMB_X114_Y20_N0
\input1[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[1]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\input1[1]$latch~combout\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1[1]$latch~combout\,
	datac => \SW[1]~input_o\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[1]$latch~combout\);

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

-- Location: LCCOMB_X114_Y20_N22
\input1[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[2]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[2]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \input1[2]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[2]$latch~combout\);

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

-- Location: LCCOMB_X114_Y20_N4
\input1[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[3]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[3]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \input1[3]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[3]$latch~combout\);

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

-- Location: LCCOMB_X114_Y27_N26
\input1[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[4]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[4]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \input1[4]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[4]$latch~combout\);

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

-- Location: LCCOMB_X114_Y27_N4
\input1[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[5]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[5]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \input1[5]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[5]$latch~combout\);

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

-- Location: LCCOMB_X114_Y27_N14
\input1[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[6]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[6]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \input1[6]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[6]$latch~combout\);

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

-- Location: LCCOMB_X114_Y27_N28
\input1[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[7]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[7]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \input1[7]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[7]$latch~combout\);

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

-- Location: LCCOMB_X114_Y20_N30
\input1[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[8]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[8]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \input1[8]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[8]$latch~combout\);

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

-- Location: LCCOMB_X114_Y8_N18
\input1[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[9]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\input1[9]$latch~combout\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1[9]$latch~combout\,
	datac => \SW[9]~input_o\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[9]$latch~combout\);

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

-- Location: LCCOMB_X114_Y8_N12
\input1[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[10]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\input1[10]$latch~combout\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[10]$latch~combout\,
	datab => \SW[10]~input_o\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[10]$latch~combout\);

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

-- Location: LCCOMB_X114_Y8_N14
\input1[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[11]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[11]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[11]~input_o\,
	datac => \input1[11]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[11]$latch~combout\);

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

-- Location: LCCOMB_X67_Y4_N14
\input1[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[12]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[12]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \input1[12]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[12]$latch~combout\);

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

-- Location: LCCOMB_X68_Y36_N4
\input1[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[13]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[13]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \input1[13]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[13]$latch~combout\);

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

-- Location: LCCOMB_X67_Y4_N4
\input1[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[14]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[14]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \input1[14]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[14]$latch~combout\);

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

-- Location: LCCOMB_X67_Y4_N26
\input1[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input1[15]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input1[15]$latch~combout\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \input1[15]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input1[15]$latch~combout\);

-- Location: LCCOMB_X114_Y20_N8
\input2[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[0]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[0]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \input2[0]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[0]$latch~combout\);

-- Location: LCCOMB_X114_Y20_N18
\input2[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[1]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[1]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \key_state~reg0clkctrl_outclk\,
	datad => \input2[1]$latch~combout\,
	combout => \input2[1]$latch~combout\);

-- Location: LCCOMB_X114_Y20_N16
\input2[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[2]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[2]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \key_state~reg0clkctrl_outclk\,
	datad => \input2[2]$latch~combout\,
	combout => \input2[2]$latch~combout\);

-- Location: LCCOMB_X114_Y20_N14
\input2[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[3]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[3]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \input2[3]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[3]$latch~combout\);

-- Location: LCCOMB_X114_Y27_N10
\input2[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[4]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[4]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \key_state~reg0clkctrl_outclk\,
	datad => \input2[4]$latch~combout\,
	combout => \input2[4]$latch~combout\);

-- Location: LCCOMB_X114_Y27_N8
\input2[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[5]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[5]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \input2[5]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[5]$latch~combout\);

-- Location: LCCOMB_X114_Y27_N30
\input2[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[6]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[6]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \input2[6]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[6]$latch~combout\);

-- Location: LCCOMB_X114_Y27_N12
\input2[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[7]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\SW[7]~input_o\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\input2[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[7]$latch~combout\,
	datac => \SW[7]~input_o\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[7]$latch~combout\);

-- Location: LCCOMB_X114_Y8_N8
\input2[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[8]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[8]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \input2[8]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[8]$latch~combout\);

-- Location: LCCOMB_X114_Y8_N22
\input2[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[9]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[9]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \input2[9]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[9]$latch~combout\);

-- Location: LCCOMB_X114_Y8_N4
\input2[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[10]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[10]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \input2[10]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[10]$latch~combout\);

-- Location: LCCOMB_X114_Y8_N26
\input2[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[11]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[11]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[11]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[11]~input_o\,
	datac => \input2[11]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[11]$latch~combout\);

-- Location: LCCOMB_X67_Y4_N8
\input2[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[12]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[12]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \input2[12]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[12]$latch~combout\);

-- Location: LCCOMB_X68_Y36_N30
\input2[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[13]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[13]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \input2[13]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[13]$latch~combout\);

-- Location: LCCOMB_X67_Y4_N22
\input2[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[14]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[14]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\input2[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \input2[14]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[14]$latch~combout\);

-- Location: LCCOMB_X67_Y4_N12
\input2[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \input2[15]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\SW[15]~input_o\))) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & (\input2[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[15]$latch~combout\,
	datab => \SW[15]~input_o\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \input2[15]$latch~combout\);

-- Location: LCCOMB_X114_Y40_N28
\bit0|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|latch_1|Q~combout\ = (\KEY[0]~input_o\ & (\bit0|latch_1|Q~combout\)) # (!\KEY[0]~input_o\ & ((\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit0|latch_1|Q~combout\,
	datac => \SW[0]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \bit0|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N4
\bit0|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit0|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit0|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit0|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit0|latch_1|Q~combout\,
	combout => \bit0|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N2
\bit1|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit1|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit1|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \bit1|latch_1|Q~combout\,
	combout => \bit1|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N18
\bit1|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit1|latch_2|Q~combout\ = (\KEY[0]~input_o\ & (\bit1|latch_1|Q~combout\)) # (!\KEY[0]~input_o\ & ((\bit1|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit1|latch_1|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit1|latch_2|Q~combout\,
	combout => \bit1|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N24
\bit2|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit2|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit2|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \bit2|latch_1|Q~combout\,
	combout => \bit2|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N12
\bit2|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit2|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit2|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit2|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit2|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit2|latch_1|Q~combout\,
	combout => \bit2|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N14
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

-- Location: LCCOMB_X114_Y40_N6
\bit3|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit3|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit3|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit3|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit3|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit3|latch_1|Q~combout\,
	combout => \bit3|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y39_N0
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

-- Location: LCCOMB_X114_Y39_N10
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

-- Location: LCCOMB_X114_Y39_N28
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

-- Location: LCCOMB_X114_Y39_N30
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

-- Location: LCCOMB_X114_Y39_N20
\disp0|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|out\(4) = (\bit0|latch_2|Q~combout\) # ((!\bit1|latch_2|Q~combout\ & \bit2|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit0|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	combout => \disp0|out\(4));

-- Location: LCCOMB_X114_Y37_N16
\disp0|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add3~0_combout\ = (\bit1|latch_2|Q~combout\ & (!\bit3|latch_2|Q~combout\ & ((\bit0|latch_2|Q~combout\) # (!\bit2|latch_2|Q~combout\)))) # (!\bit1|latch_2|Q~combout\ & ((\bit2|latch_2|Q~combout\ & ((\bit3|latch_2|Q~combout\))) # 
-- (!\bit2|latch_2|Q~combout\ & (\bit0|latch_2|Q~combout\ & !\bit3|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit1|latch_2|Q~combout\,
	datab => \bit0|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit3|latch_2|Q~combout\,
	combout => \disp0|Add3~0_combout\);

-- Location: LCCOMB_X114_Y37_N24
\disp0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add0~0_combout\ = (\bit3|latch_2|Q~combout\) # ((\bit1|latch_2|Q~combout\ & ((!\bit2|latch_2|Q~combout\) # (!\bit0|latch_2|Q~combout\))) # (!\bit1|latch_2|Q~combout\ & ((\bit2|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit1|latch_2|Q~combout\,
	datab => \bit0|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit3|latch_2|Q~combout\,
	combout => \disp0|Add0~0_combout\);

-- Location: LCCOMB_X114_Y38_N14
\bit6|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit6|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit6|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \bit6|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit6|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y38_N10
\bit6|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit6|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit6|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit6|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit6|latch_2|Q~combout\,
	datac => \bit6|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit6|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y38_N4
\bit7|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit7|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit7|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \bit7|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit7|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y38_N28
\bit7|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit7|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit7|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit7|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit7|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit7|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y38_N30
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

-- Location: LCCOMB_X114_Y38_N18
\bit4|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit4|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit4|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit4|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit4|latch_2|Q~combout\,
	datac => \bit4|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit4|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y38_N8
\bit5|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit5|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit5|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \bit5|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit5|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y38_N16
\bit5|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit5|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit5|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit5|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit5|latch_2|Q~combout\,
	datac => \bit5|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit5|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y38_N0
\disp1|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add14~0_combout\ = (\bit6|latch_2|Q~combout\ & (!\bit5|latch_2|Q~combout\ & (\bit7|latch_2|Q~combout\ $ (!\bit4|latch_2|Q~combout\)))) # (!\bit6|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ & (\bit7|latch_2|Q~combout\ $ 
-- (!\bit5|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit6|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit5|latch_2|Q~combout\,
	combout => \disp1|Add14~0_combout\);

-- Location: LCCOMB_X114_Y38_N22
\disp1|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add11~0_combout\ = (\bit6|latch_2|Q~combout\ & (\bit7|latch_2|Q~combout\ $ (\bit4|latch_2|Q~combout\ $ (\bit5|latch_2|Q~combout\)))) # (!\bit6|latch_2|Q~combout\ & (\bit7|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ & \bit5|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit6|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit5|latch_2|Q~combout\,
	combout => \disp1|Add11~0_combout\);

-- Location: LCCOMB_X114_Y38_N20
\disp1|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add8~0_combout\ = (\bit6|latch_2|Q~combout\ & (\bit7|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ $ (!\bit5|latch_2|Q~combout\)))) # (!\bit6|latch_2|Q~combout\ & (!\bit7|latch_2|Q~combout\ & (!\bit4|latch_2|Q~combout\ & 
-- \bit5|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit6|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit5|latch_2|Q~combout\,
	combout => \disp1|Add8~0_combout\);

-- Location: LCCOMB_X114_Y38_N26
\disp1|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add6~0_combout\ = (\bit4|latch_2|Q~combout\ & (\bit6|latch_2|Q~combout\ $ (((!\bit5|latch_2|Q~combout\))))) # (!\bit4|latch_2|Q~combout\ & ((\bit6|latch_2|Q~combout\ & (!\bit7|latch_2|Q~combout\ & !\bit5|latch_2|Q~combout\)) # 
-- (!\bit6|latch_2|Q~combout\ & (\bit7|latch_2|Q~combout\ & \bit5|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit6|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit5|latch_2|Q~combout\,
	combout => \disp1|Add6~0_combout\);

-- Location: LCCOMB_X114_Y38_N12
\disp1|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|out\(4) = (\bit4|latch_2|Q~combout\) # ((\bit6|latch_2|Q~combout\ & !\bit5|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit6|latch_2|Q~combout\,
	datab => \bit4|latch_2|Q~combout\,
	datad => \bit5|latch_2|Q~combout\,
	combout => \disp1|out\(4));

-- Location: LCCOMB_X114_Y38_N2
\disp1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add3~0_combout\ = (\bit6|latch_2|Q~combout\ & ((\bit7|latch_2|Q~combout\ & ((!\bit5|latch_2|Q~combout\))) # (!\bit7|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ & \bit5|latch_2|Q~combout\)))) # (!\bit6|latch_2|Q~combout\ & 
-- (!\bit7|latch_2|Q~combout\ & ((\bit4|latch_2|Q~combout\) # (\bit5|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit6|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit5|latch_2|Q~combout\,
	combout => \disp1|Add3~0_combout\);

-- Location: LCCOMB_X114_Y38_N24
\disp1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add0~0_combout\ = (\bit7|latch_2|Q~combout\) # ((\bit6|latch_2|Q~combout\ & ((!\bit5|latch_2|Q~combout\) # (!\bit4|latch_2|Q~combout\))) # (!\bit6|latch_2|Q~combout\ & ((\bit5|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit6|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit5|latch_2|Q~combout\,
	combout => \disp1|Add0~0_combout\);

-- Location: LCCOMB_X114_Y39_N18
\bit9|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit9|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit9|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \bit9|latch_1|Q~combout\,
	combout => \bit9|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y39_N22
\bit9|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit9|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit9|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit9|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit9|latch_1|Q~combout\,
	combout => \bit9|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N26
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

-- Location: LCCOMB_X114_Y40_N30
\bit11|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit11|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit11|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit11|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit11|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit11|latch_1|Q~combout\,
	combout => \bit11|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y39_N24
\bit10|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit10|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit10|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \bit10|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit10|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y39_N8
\bit10|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit10|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit10|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit10|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit10|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit10|latch_1|Q~combout\,
	combout => \bit10|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N0
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

-- Location: LCCOMB_X114_Y40_N8
\bit8|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit8|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit8|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit8|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8|latch_2|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit8|latch_1|Q~combout\,
	combout => \bit8|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y39_N6
\disp2|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add14~0_combout\ = (\bit11|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ $ (\bit10|latch_2|Q~combout\)))) # (!\bit11|latch_2|Q~combout\ & (!\bit9|latch_2|Q~combout\ & (\bit10|latch_2|Q~combout\ $ 
-- (\bit8|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit11|latch_2|Q~combout\,
	datac => \bit10|latch_2|Q~combout\,
	datad => \bit8|latch_2|Q~combout\,
	combout => \disp2|Add14~0_combout\);

-- Location: LCCOMB_X114_Y39_N12
\disp2|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add11~0_combout\ = (\bit10|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ $ (\bit11|latch_2|Q~combout\ $ (\bit8|latch_2|Q~combout\)))) # (!\bit10|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ & (\bit11|latch_2|Q~combout\ & 
-- \bit8|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit11|latch_2|Q~combout\,
	datac => \bit10|latch_2|Q~combout\,
	datad => \bit8|latch_2|Q~combout\,
	combout => \disp2|Add11~0_combout\);

-- Location: LCCOMB_X114_Y39_N26
\disp2|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add8~0_combout\ = (\bit11|latch_2|Q~combout\ & (\bit10|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ $ (!\bit8|latch_2|Q~combout\)))) # (!\bit11|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ & (!\bit10|latch_2|Q~combout\ & 
-- !\bit8|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit11|latch_2|Q~combout\,
	datac => \bit10|latch_2|Q~combout\,
	datad => \bit8|latch_2|Q~combout\,
	combout => \disp2|Add8~0_combout\);

-- Location: LCCOMB_X114_Y39_N16
\disp2|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add6~0_combout\ = (\bit8|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ $ (((!\bit10|latch_2|Q~combout\))))) # (!\bit8|latch_2|Q~combout\ & ((\bit9|latch_2|Q~combout\ & (\bit11|latch_2|Q~combout\ & !\bit10|latch_2|Q~combout\)) # 
-- (!\bit9|latch_2|Q~combout\ & (!\bit11|latch_2|Q~combout\ & \bit10|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit11|latch_2|Q~combout\,
	datac => \bit10|latch_2|Q~combout\,
	datad => \bit8|latch_2|Q~combout\,
	combout => \disp2|Add6~0_combout\);

-- Location: LCCOMB_X114_Y39_N2
\disp2|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|out\(4) = (\bit8|latch_2|Q~combout\) # ((\bit10|latch_2|Q~combout\ & !\bit9|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit10|latch_2|Q~combout\,
	datac => \bit9|latch_2|Q~combout\,
	datad => \bit8|latch_2|Q~combout\,
	combout => \disp2|out\(4));

-- Location: LCCOMB_X114_Y39_N4
\disp2|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add3~0_combout\ = (\bit9|latch_2|Q~combout\ & (!\bit11|latch_2|Q~combout\ & ((\bit8|latch_2|Q~combout\) # (!\bit10|latch_2|Q~combout\)))) # (!\bit9|latch_2|Q~combout\ & ((\bit11|latch_2|Q~combout\ & (\bit10|latch_2|Q~combout\)) # 
-- (!\bit11|latch_2|Q~combout\ & (!\bit10|latch_2|Q~combout\ & \bit8|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit11|latch_2|Q~combout\,
	datac => \bit10|latch_2|Q~combout\,
	datad => \bit8|latch_2|Q~combout\,
	combout => \disp2|Add3~0_combout\);

-- Location: LCCOMB_X114_Y39_N14
\disp2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add0~0_combout\ = (\bit11|latch_2|Q~combout\) # ((\bit9|latch_2|Q~combout\ & ((!\bit8|latch_2|Q~combout\) # (!\bit10|latch_2|Q~combout\))) # (!\bit9|latch_2|Q~combout\ & (\bit10|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit11|latch_2|Q~combout\,
	datac => \bit10|latch_2|Q~combout\,
	datad => \bit8|latch_2|Q~combout\,
	combout => \disp2|Add0~0_combout\);

-- Location: LCCOMB_X114_Y40_N10
\bit13|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit13|latch_1|Q~combout\ = (\KEY[0]~input_o\ & (\bit13|latch_1|Q~combout\)) # (!\KEY[0]~input_o\ & ((\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_1|Q~combout\,
	datab => \SW[13]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \bit13|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N22
\bit13|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit13|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit13|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit13|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \bit13|latch_2|Q~combout\,
	datad => \bit13|latch_1|Q~combout\,
	combout => \bit13|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y37_N22
\bit12|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit12|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit12|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \bit12|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit12|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y37_N8
\bit12|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit12|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit12|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit12|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit12|latch_2|Q~combout\,
	datac => \bit12|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit12|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y37_N4
\bit15|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit15|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit15|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \bit15|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit15|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y37_N30
\bit15|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit15|latch_2|Q~combout\ = (\KEY[0]~input_o\ & ((\bit15|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\bit15|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit15|latch_2|Q~combout\,
	datac => \bit15|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit15|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y40_N20
\bit14|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit14|latch_1|Q~combout\ = (\KEY[0]~input_o\ & ((\bit14|latch_1|Q~combout\))) # (!\KEY[0]~input_o\ & (\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \bit14|latch_1|Q~combout\,
	datad => \KEY[0]~input_o\,
	combout => \bit14|latch_1|Q~combout\);

-- Location: LCCOMB_X114_Y40_N16
\bit14|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit14|latch_2|Q~combout\ = (\KEY[0]~input_o\ & (\bit14|latch_1|Q~combout\)) # (!\KEY[0]~input_o\ & ((\bit14|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit14|latch_1|Q~combout\,
	datac => \KEY[0]~input_o\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \bit14|latch_2|Q~combout\);

-- Location: LCCOMB_X114_Y37_N14
\disp3|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add14~0_combout\ = (\bit15|latch_2|Q~combout\ & (\bit12|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ $ (\bit14|latch_2|Q~combout\)))) # (!\bit15|latch_2|Q~combout\ & (!\bit13|latch_2|Q~combout\ & (\bit12|latch_2|Q~combout\ $ 
-- (\bit14|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit12|latch_2|Q~combout\,
	datac => \bit15|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add14~0_combout\);

-- Location: LCCOMB_X114_Y37_N6
\disp3|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add11~0_combout\ = (\bit14|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ $ (\bit12|latch_2|Q~combout\ $ (\bit15|latch_2|Q~combout\)))) # (!\bit14|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ & (\bit12|latch_2|Q~combout\ & 
-- \bit15|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit12|latch_2|Q~combout\,
	datac => \bit15|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add11~0_combout\);

-- Location: LCCOMB_X114_Y37_N20
\disp3|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add8~0_combout\ = (\bit15|latch_2|Q~combout\ & (\bit14|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ $ (!\bit12|latch_2|Q~combout\)))) # (!\bit15|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ & (!\bit12|latch_2|Q~combout\ & 
-- !\bit14|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit12|latch_2|Q~combout\,
	datac => \bit15|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add8~0_combout\);

-- Location: LCCOMB_X114_Y37_N12
\disp3|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add6~0_combout\ = (\bit12|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ $ (((!\bit14|latch_2|Q~combout\))))) # (!\bit12|latch_2|Q~combout\ & ((\bit13|latch_2|Q~combout\ & (\bit15|latch_2|Q~combout\ & !\bit14|latch_2|Q~combout\)) # 
-- (!\bit13|latch_2|Q~combout\ & (!\bit15|latch_2|Q~combout\ & \bit14|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit12|latch_2|Q~combout\,
	datac => \bit15|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add6~0_combout\);

-- Location: LCCOMB_X114_Y37_N26
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

-- Location: LCCOMB_X114_Y37_N10
\disp3|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add3~0_combout\ = (\bit13|latch_2|Q~combout\ & (!\bit15|latch_2|Q~combout\ & ((\bit12|latch_2|Q~combout\) # (!\bit14|latch_2|Q~combout\)))) # (!\bit13|latch_2|Q~combout\ & ((\bit15|latch_2|Q~combout\ & ((\bit14|latch_2|Q~combout\))) # 
-- (!\bit15|latch_2|Q~combout\ & (\bit12|latch_2|Q~combout\ & !\bit14|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit12|latch_2|Q~combout\,
	datac => \bit15|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add3~0_combout\);

-- Location: LCCOMB_X114_Y37_N18
\disp3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add0~0_combout\ = (\bit15|latch_2|Q~combout\) # ((\bit13|latch_2|Q~combout\ & ((!\bit14|latch_2|Q~combout\) # (!\bit12|latch_2|Q~combout\))) # (!\bit13|latch_2|Q~combout\ & ((\bit14|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datab => \bit12|latch_2|Q~combout\,
	datac => \bit15|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add0~0_combout\);

-- Location: LCCOMB_X114_Y20_N28
\disp4|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add14~0_combout\ = (\input2[2]$latch~combout\ & (!\input2[1]$latch~combout\ & (\input2[3]$latch~combout\ $ (!\input2[0]$latch~combout\)))) # (!\input2[2]$latch~combout\ & (\input2[0]$latch~combout\ & (\input2[1]$latch~combout\ $ 
-- (!\input2[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]$latch~combout\,
	datab => \input2[2]$latch~combout\,
	datac => \input2[3]$latch~combout\,
	datad => \input2[0]$latch~combout\,
	combout => \disp4|Add14~0_combout\);

-- Location: LCCOMB_X114_Y20_N6
\disp4|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add11~0_combout\ = (\input2[2]$latch~combout\ & (\input2[1]$latch~combout\ $ (\input2[3]$latch~combout\ $ (\input2[0]$latch~combout\)))) # (!\input2[2]$latch~combout\ & (\input2[1]$latch~combout\ & (\input2[3]$latch~combout\ & 
-- \input2[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]$latch~combout\,
	datab => \input2[2]$latch~combout\,
	datac => \input2[3]$latch~combout\,
	datad => \input2[0]$latch~combout\,
	combout => \disp4|Add11~0_combout\);

-- Location: LCCOMB_X114_Y20_N24
\disp4|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add8~0_combout\ = (\input2[2]$latch~combout\ & (\input2[3]$latch~combout\ & (\input2[1]$latch~combout\ $ (!\input2[0]$latch~combout\)))) # (!\input2[2]$latch~combout\ & (\input2[1]$latch~combout\ & (!\input2[3]$latch~combout\ & 
-- !\input2[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]$latch~combout\,
	datab => \input2[2]$latch~combout\,
	datac => \input2[3]$latch~combout\,
	datad => \input2[0]$latch~combout\,
	combout => \disp4|Add8~0_combout\);

-- Location: LCCOMB_X114_Y20_N26
\disp4|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add6~0_combout\ = (\input2[0]$latch~combout\ & (\input2[1]$latch~combout\ $ ((!\input2[2]$latch~combout\)))) # (!\input2[0]$latch~combout\ & ((\input2[1]$latch~combout\ & (!\input2[2]$latch~combout\ & \input2[3]$latch~combout\)) # 
-- (!\input2[1]$latch~combout\ & (\input2[2]$latch~combout\ & !\input2[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]$latch~combout\,
	datab => \input2[2]$latch~combout\,
	datac => \input2[3]$latch~combout\,
	datad => \input2[0]$latch~combout\,
	combout => \disp4|Add6~0_combout\);

-- Location: LCCOMB_X114_Y20_N20
\disp4|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|out\(4) = (\input2[0]$latch~combout\) # ((!\input2[1]$latch~combout\ & \input2[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]$latch~combout\,
	datab => \input2[2]$latch~combout\,
	datac => \input2[0]$latch~combout\,
	combout => \disp4|out\(4));

-- Location: LCCOMB_X114_Y20_N2
\disp4|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add3~0_combout\ = (\input2[1]$latch~combout\ & (!\input2[3]$latch~combout\ & ((\input2[0]$latch~combout\) # (!\input2[2]$latch~combout\)))) # (!\input2[1]$latch~combout\ & ((\input2[2]$latch~combout\ & (\input2[3]$latch~combout\)) # 
-- (!\input2[2]$latch~combout\ & (!\input2[3]$latch~combout\ & \input2[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]$latch~combout\,
	datab => \input2[2]$latch~combout\,
	datac => \input2[3]$latch~combout\,
	datad => \input2[0]$latch~combout\,
	combout => \disp4|Add3~0_combout\);

-- Location: LCCOMB_X114_Y20_N12
\disp4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add0~0_combout\ = (\input2[3]$latch~combout\) # ((\input2[1]$latch~combout\ & ((!\input2[0]$latch~combout\) # (!\input2[2]$latch~combout\))) # (!\input2[1]$latch~combout\ & (\input2[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]$latch~combout\,
	datab => \input2[2]$latch~combout\,
	datac => \input2[3]$latch~combout\,
	datad => \input2[0]$latch~combout\,
	combout => \disp4|Add0~0_combout\);

-- Location: LCCOMB_X114_Y27_N16
\disp5|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add14~0_combout\ = (\input2[6]$latch~combout\ & (!\input2[5]$latch~combout\ & (\input2[4]$latch~combout\ $ (!\input2[7]$latch~combout\)))) # (!\input2[6]$latch~combout\ & (\input2[4]$latch~combout\ & (\input2[5]$latch~combout\ $ 
-- (!\input2[7]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]$latch~combout\,
	datab => \input2[5]$latch~combout\,
	datac => \input2[6]$latch~combout\,
	datad => \input2[7]$latch~combout\,
	combout => \disp5|Add14~0_combout\);

-- Location: LCCOMB_X114_Y27_N18
\disp5|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add11~0_combout\ = (\input2[6]$latch~combout\ & (\input2[4]$latch~combout\ $ (\input2[5]$latch~combout\ $ (\input2[7]$latch~combout\)))) # (!\input2[6]$latch~combout\ & (\input2[4]$latch~combout\ & (\input2[5]$latch~combout\ & 
-- \input2[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]$latch~combout\,
	datab => \input2[5]$latch~combout\,
	datac => \input2[6]$latch~combout\,
	datad => \input2[7]$latch~combout\,
	combout => \disp5|Add11~0_combout\);

-- Location: LCCOMB_X114_Y27_N20
\disp5|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add8~0_combout\ = (\input2[6]$latch~combout\ & (\input2[7]$latch~combout\ & (\input2[4]$latch~combout\ $ (!\input2[5]$latch~combout\)))) # (!\input2[6]$latch~combout\ & (!\input2[4]$latch~combout\ & (\input2[5]$latch~combout\ & 
-- !\input2[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]$latch~combout\,
	datab => \input2[5]$latch~combout\,
	datac => \input2[6]$latch~combout\,
	datad => \input2[7]$latch~combout\,
	combout => \disp5|Add8~0_combout\);

-- Location: LCCOMB_X114_Y27_N22
\disp5|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add6~0_combout\ = (\input2[4]$latch~combout\ & (\input2[5]$latch~combout\ $ ((!\input2[6]$latch~combout\)))) # (!\input2[4]$latch~combout\ & ((\input2[5]$latch~combout\ & (!\input2[6]$latch~combout\ & \input2[7]$latch~combout\)) # 
-- (!\input2[5]$latch~combout\ & (\input2[6]$latch~combout\ & !\input2[7]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]$latch~combout\,
	datab => \input2[5]$latch~combout\,
	datac => \input2[6]$latch~combout\,
	datad => \input2[7]$latch~combout\,
	combout => \disp5|Add6~0_combout\);

-- Location: LCCOMB_X114_Y27_N0
\disp5|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|out\(4) = (\input2[4]$latch~combout\) # ((!\input2[5]$latch~combout\ & \input2[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[5]$latch~combout\,
	datac => \input2[6]$latch~combout\,
	datad => \input2[4]$latch~combout\,
	combout => \disp5|out\(4));

-- Location: LCCOMB_X114_Y27_N6
\disp5|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add3~0_combout\ = (\input2[5]$latch~combout\ & (!\input2[7]$latch~combout\ & ((\input2[4]$latch~combout\) # (!\input2[6]$latch~combout\)))) # (!\input2[5]$latch~combout\ & ((\input2[6]$latch~combout\ & ((\input2[7]$latch~combout\))) # 
-- (!\input2[6]$latch~combout\ & (\input2[4]$latch~combout\ & !\input2[7]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]$latch~combout\,
	datab => \input2[5]$latch~combout\,
	datac => \input2[6]$latch~combout\,
	datad => \input2[7]$latch~combout\,
	combout => \disp5|Add3~0_combout\);

-- Location: LCCOMB_X114_Y27_N24
\disp5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add0~0_combout\ = (\input2[7]$latch~combout\) # ((\input2[5]$latch~combout\ & ((!\input2[6]$latch~combout\) # (!\input2[4]$latch~combout\))) # (!\input2[5]$latch~combout\ & ((\input2[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]$latch~combout\,
	datab => \input2[5]$latch~combout\,
	datac => \input2[6]$latch~combout\,
	datad => \input2[7]$latch~combout\,
	combout => \disp5|Add0~0_combout\);

-- Location: LCCOMB_X114_Y8_N24
\disp6|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add14~0_combout\ = (\input2[10]$latch~combout\ & (!\input2[9]$latch~combout\ & (\input2[11]$latch~combout\ $ (!\input2[8]$latch~combout\)))) # (!\input2[10]$latch~combout\ & (\input2[8]$latch~combout\ & (\input2[9]$latch~combout\ $ 
-- (!\input2[11]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[9]$latch~combout\,
	datab => \input2[10]$latch~combout\,
	datac => \input2[11]$latch~combout\,
	datad => \input2[8]$latch~combout\,
	combout => \disp6|Add14~0_combout\);

-- Location: LCCOMB_X114_Y8_N6
\disp6|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add11~0_combout\ = (\input2[10]$latch~combout\ & (\input2[9]$latch~combout\ $ (\input2[11]$latch~combout\ $ (\input2[8]$latch~combout\)))) # (!\input2[10]$latch~combout\ & (\input2[9]$latch~combout\ & (\input2[11]$latch~combout\ & 
-- \input2[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[9]$latch~combout\,
	datab => \input2[10]$latch~combout\,
	datac => \input2[11]$latch~combout\,
	datad => \input2[8]$latch~combout\,
	combout => \disp6|Add11~0_combout\);

-- Location: LCCOMB_X114_Y8_N16
\disp6|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add8~0_combout\ = (\input2[10]$latch~combout\ & (\input2[11]$latch~combout\ & (\input2[9]$latch~combout\ $ (!\input2[8]$latch~combout\)))) # (!\input2[10]$latch~combout\ & (\input2[9]$latch~combout\ & (!\input2[11]$latch~combout\ & 
-- !\input2[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[9]$latch~combout\,
	datab => \input2[10]$latch~combout\,
	datac => \input2[11]$latch~combout\,
	datad => \input2[8]$latch~combout\,
	combout => \disp6|Add8~0_combout\);

-- Location: LCCOMB_X114_Y8_N10
\disp6|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add6~0_combout\ = (\input2[8]$latch~combout\ & (\input2[9]$latch~combout\ $ ((!\input2[10]$latch~combout\)))) # (!\input2[8]$latch~combout\ & ((\input2[9]$latch~combout\ & (!\input2[10]$latch~combout\ & \input2[11]$latch~combout\)) # 
-- (!\input2[9]$latch~combout\ & (\input2[10]$latch~combout\ & !\input2[11]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[9]$latch~combout\,
	datab => \input2[10]$latch~combout\,
	datac => \input2[11]$latch~combout\,
	datad => \input2[8]$latch~combout\,
	combout => \disp6|Add6~0_combout\);

-- Location: LCCOMB_X114_Y8_N28
\disp6|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|out\(4) = (\input2[8]$latch~combout\) # ((!\input2[9]$latch~combout\ & \input2[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[8]$latch~combout\,
	datac => \input2[9]$latch~combout\,
	datad => \input2[10]$latch~combout\,
	combout => \disp6|out\(4));

-- Location: LCCOMB_X114_Y8_N30
\disp6|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add3~0_combout\ = (\input2[9]$latch~combout\ & (!\input2[11]$latch~combout\ & ((\input2[8]$latch~combout\) # (!\input2[10]$latch~combout\)))) # (!\input2[9]$latch~combout\ & ((\input2[10]$latch~combout\ & (\input2[11]$latch~combout\)) # 
-- (!\input2[10]$latch~combout\ & (!\input2[11]$latch~combout\ & \input2[8]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[9]$latch~combout\,
	datab => \input2[10]$latch~combout\,
	datac => \input2[11]$latch~combout\,
	datad => \input2[8]$latch~combout\,
	combout => \disp6|Add3~0_combout\);

-- Location: LCCOMB_X114_Y8_N20
\disp6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add0~0_combout\ = (\input2[11]$latch~combout\) # ((\input2[9]$latch~combout\ & ((!\input2[8]$latch~combout\) # (!\input2[10]$latch~combout\))) # (!\input2[9]$latch~combout\ & (\input2[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[9]$latch~combout\,
	datab => \input2[10]$latch~combout\,
	datac => \input2[11]$latch~combout\,
	datad => \input2[8]$latch~combout\,
	combout => \disp6|Add0~0_combout\);

-- Location: LCCOMB_X67_Y4_N24
\disp7|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add14~0_combout\ = (\input2[15]$latch~combout\ & (\input2[12]$latch~combout\ & (\input2[13]$latch~combout\ $ (\input2[14]$latch~combout\)))) # (!\input2[15]$latch~combout\ & (!\input2[13]$latch~combout\ & (\input2[12]$latch~combout\ $ 
-- (\input2[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[15]$latch~combout\,
	datab => \input2[12]$latch~combout\,
	datac => \input2[13]$latch~combout\,
	datad => \input2[14]$latch~combout\,
	combout => \disp7|Add14~0_combout\);

-- Location: LCCOMB_X67_Y4_N10
\disp7|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add11~0_combout\ = (\input2[14]$latch~combout\ & (\input2[15]$latch~combout\ $ (\input2[12]$latch~combout\ $ (\input2[13]$latch~combout\)))) # (!\input2[14]$latch~combout\ & (\input2[15]$latch~combout\ & (\input2[12]$latch~combout\ & 
-- \input2[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[15]$latch~combout\,
	datab => \input2[12]$latch~combout\,
	datac => \input2[13]$latch~combout\,
	datad => \input2[14]$latch~combout\,
	combout => \disp7|Add11~0_combout\);

-- Location: LCCOMB_X67_Y4_N20
\disp7|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add8~0_combout\ = (\input2[15]$latch~combout\ & (\input2[14]$latch~combout\ & (\input2[12]$latch~combout\ $ (!\input2[13]$latch~combout\)))) # (!\input2[15]$latch~combout\ & (!\input2[12]$latch~combout\ & (\input2[13]$latch~combout\ & 
-- !\input2[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[15]$latch~combout\,
	datab => \input2[12]$latch~combout\,
	datac => \input2[13]$latch~combout\,
	datad => \input2[14]$latch~combout\,
	combout => \disp7|Add8~0_combout\);

-- Location: LCCOMB_X67_Y4_N30
\disp7|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add6~0_combout\ = (\input2[12]$latch~combout\ & ((\input2[13]$latch~combout\ $ (!\input2[14]$latch~combout\)))) # (!\input2[12]$latch~combout\ & ((\input2[15]$latch~combout\ & (\input2[13]$latch~combout\ & !\input2[14]$latch~combout\)) # 
-- (!\input2[15]$latch~combout\ & (!\input2[13]$latch~combout\ & \input2[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[15]$latch~combout\,
	datab => \input2[12]$latch~combout\,
	datac => \input2[13]$latch~combout\,
	datad => \input2[14]$latch~combout\,
	combout => \disp7|Add6~0_combout\);

-- Location: LCCOMB_X67_Y4_N16
\disp7|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|out\(4) = (\input2[12]$latch~combout\) # ((\input2[14]$latch~combout\ & !\input2[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[14]$latch~combout\,
	datab => \input2[12]$latch~combout\,
	datac => \input2[13]$latch~combout\,
	combout => \disp7|out\(4));

-- Location: LCCOMB_X67_Y4_N18
\disp7|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add3~0_combout\ = (\input2[15]$latch~combout\ & (((!\input2[13]$latch~combout\ & \input2[14]$latch~combout\)))) # (!\input2[15]$latch~combout\ & ((\input2[12]$latch~combout\ & ((\input2[13]$latch~combout\) # (!\input2[14]$latch~combout\))) # 
-- (!\input2[12]$latch~combout\ & (\input2[13]$latch~combout\ & !\input2[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[15]$latch~combout\,
	datab => \input2[12]$latch~combout\,
	datac => \input2[13]$latch~combout\,
	datad => \input2[14]$latch~combout\,
	combout => \disp7|Add3~0_combout\);

-- Location: LCCOMB_X67_Y4_N28
\disp7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add0~0_combout\ = (\input2[15]$latch~combout\) # ((\input2[13]$latch~combout\ & ((!\input2[14]$latch~combout\) # (!\input2[12]$latch~combout\))) # (!\input2[13]$latch~combout\ & ((\input2[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[15]$latch~combout\,
	datab => \input2[12]$latch~combout\,
	datac => \input2[13]$latch~combout\,
	datad => \input2[14]$latch~combout\,
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

ww_input1(0) <= \input1[0]~output_o\;

ww_input1(1) <= \input1[1]~output_o\;

ww_input1(2) <= \input1[2]~output_o\;

ww_input1(3) <= \input1[3]~output_o\;

ww_input1(4) <= \input1[4]~output_o\;

ww_input1(5) <= \input1[5]~output_o\;

ww_input1(6) <= \input1[6]~output_o\;

ww_input1(7) <= \input1[7]~output_o\;

ww_input1(8) <= \input1[8]~output_o\;

ww_input1(9) <= \input1[9]~output_o\;

ww_input1(10) <= \input1[10]~output_o\;

ww_input1(11) <= \input1[11]~output_o\;

ww_input1(12) <= \input1[12]~output_o\;

ww_input1(13) <= \input1[13]~output_o\;

ww_input1(14) <= \input1[14]~output_o\;

ww_input1(15) <= \input1[15]~output_o\;

ww_input2(0) <= \input2[0]~output_o\;

ww_input2(1) <= \input2[1]~output_o\;

ww_input2(2) <= \input2[2]~output_o\;

ww_input2(3) <= \input2[3]~output_o\;

ww_input2(4) <= \input2[4]~output_o\;

ww_input2(5) <= \input2[5]~output_o\;

ww_input2(6) <= \input2[6]~output_o\;

ww_input2(7) <= \input2[7]~output_o\;

ww_input2(8) <= \input2[8]~output_o\;

ww_input2(9) <= \input2[9]~output_o\;

ww_input2(10) <= \input2[10]~output_o\;

ww_input2(11) <= \input2[11]~output_o\;

ww_input2(12) <= \input2[12]~output_o\;

ww_input2(13) <= \input2[13]~output_o\;

ww_input2(14) <= \input2[14]~output_o\;

ww_input2(15) <= \input2[15]~output_o\;

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


