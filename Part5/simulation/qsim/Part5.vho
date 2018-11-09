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

-- DATE "11/08/2018 22:34:42"

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
	out2 : OUT std_logic_vector(15 DOWNTO 0);
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
-- KEY[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[0]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[1]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[3]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[5]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[7]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[8]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[10]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[11]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[12]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[13]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[14]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[15]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_state	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \KEY[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \key_state~reg0feeder_combout\ : std_logic;
SIGNAL \key_state~reg0_q\ : std_logic;
SIGNAL \key_state~reg0clkctrl_outclk\ : std_logic;
SIGNAL \out2[0]$latch~combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \out2[1]$latch~combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \out2[2]$latch~combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \out2[3]$latch~combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \out2[4]$latch~combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \out2[5]$latch~combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \out2[6]$latch~combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \out2[7]$latch~combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \out2[8]$latch~combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \out2[9]$latch~combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \out2[10]$latch~combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \out2[11]$latch~combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \out2[12]$latch~combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \out2[13]$latch~combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \out2[14]$latch~combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \out2[15]$latch~combout\ : std_logic;
SIGNAL \bit3|latch_1|Q~combout\ : std_logic;
SIGNAL \bit3|latch_2|Q~combout\ : std_logic;
SIGNAL \bit1|latch_1|Q~combout\ : std_logic;
SIGNAL \bit1|latch_2|Q~combout\ : std_logic;
SIGNAL \bit2|latch_1|Q~combout\ : std_logic;
SIGNAL \bit2|latch_2|Q~combout\ : std_logic;
SIGNAL \bit0|latch_1|Q~combout\ : std_logic;
SIGNAL \bit0|latch_2|Q~combout\ : std_logic;
SIGNAL \disp0|Add14~0_combout\ : std_logic;
SIGNAL \disp0|Add11~0_combout\ : std_logic;
SIGNAL \disp0|Add8~0_combout\ : std_logic;
SIGNAL \disp0|Add6~0_combout\ : std_logic;
SIGNAL \disp0|Add3~0_combout\ : std_logic;
SIGNAL \disp0|Add0~0_combout\ : std_logic;
SIGNAL \bit5|latch_1|Q~combout\ : std_logic;
SIGNAL \bit5|latch_2|Q~combout\ : std_logic;
SIGNAL \bit7|latch_1|Q~combout\ : std_logic;
SIGNAL \bit7|latch_2|Q~combout\ : std_logic;
SIGNAL \bit4|latch_1|Q~combout\ : std_logic;
SIGNAL \bit4|latch_2|Q~combout\ : std_logic;
SIGNAL \bit6|latch_1|Q~combout\ : std_logic;
SIGNAL \bit6|latch_2|Q~combout\ : std_logic;
SIGNAL \disp1|Add14~0_combout\ : std_logic;
SIGNAL \disp1|Add11~0_combout\ : std_logic;
SIGNAL \disp1|Add8~0_combout\ : std_logic;
SIGNAL \disp1|Add6~0_combout\ : std_logic;
SIGNAL \disp1|Add3~0_combout\ : std_logic;
SIGNAL \disp1|Add0~0_combout\ : std_logic;
SIGNAL \bit9|latch_1|Q~combout\ : std_logic;
SIGNAL \bit9|latch_2|Q~combout\ : std_logic;
SIGNAL \bit8|latch_1|Q~combout\ : std_logic;
SIGNAL \bit8|latch_2|Q~combout\ : std_logic;
SIGNAL \bit11|latch_1|Q~combout\ : std_logic;
SIGNAL \bit11|latch_2|Q~combout\ : std_logic;
SIGNAL \bit10|latch_1|Q~combout\ : std_logic;
SIGNAL \bit10|latch_2|Q~combout\ : std_logic;
SIGNAL \disp2|Add14~0_combout\ : std_logic;
SIGNAL \disp2|Add11~0_combout\ : std_logic;
SIGNAL \disp2|Add8~0_combout\ : std_logic;
SIGNAL \disp2|Add6~0_combout\ : std_logic;
SIGNAL \disp2|Add3~0_combout\ : std_logic;
SIGNAL \disp2|Add0~0_combout\ : std_logic;
SIGNAL \bit14|latch_1|Q~combout\ : std_logic;
SIGNAL \bit14|latch_2|Q~combout\ : std_logic;
SIGNAL \bit15|latch_1|Q~combout\ : std_logic;
SIGNAL \bit15|latch_2|Q~combout\ : std_logic;
SIGNAL \bit13|latch_1|Q~combout\ : std_logic;
SIGNAL \bit13|latch_2|Q~combout\ : std_logic;
SIGNAL \bit12|latch_1|Q~combout\ : std_logic;
SIGNAL \bit12|latch_2|Q~combout\ : std_logic;
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
out2 <= ww_out2;
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

\KEY[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[0]~input_o\);
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

-- Location: IOOBUF_X69_Y0_N9
\out2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\out2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\out2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[2]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\out2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[3]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\out2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[4]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\out2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[5]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\out2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[6]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\out2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[7]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[7]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\out2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[8]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[8]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\out2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[9]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\out2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[10]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\out2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[11]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[11]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\out2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[12]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[12]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\out2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[13]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[13]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\out2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[14]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[14]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\out2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2[15]$latch~combout\,
	devoe => ww_devoe,
	o => \out2[15]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X65_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X65_Y0_N23
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

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N23
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

-- Location: IOOBUF_X47_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N16
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X49_Y0_N23
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

-- Location: IOOBUF_X47_Y0_N9
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

-- Location: IOOBUF_X58_Y73_N2
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X58_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N16
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X58_Y73_N23
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X20_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X79_Y0_N23
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

-- Location: IOOBUF_X79_Y0_N16
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

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X74_Y0_N16
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

-- Location: IOOBUF_X74_Y0_N9
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

-- Location: IOOBUF_X81_Y0_N16
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

-- Location: IOOBUF_X56_Y0_N16
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X60_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N23
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X72_Y73_N23
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X33_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X27_Y0_N9
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

-- Location: IOOBUF_X33_Y0_N9
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

-- Location: IOOBUF_X35_Y0_N16
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

-- Location: IOIBUF_X67_Y0_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G2
\KEY[0]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~inputclkctrl_outclk\);

-- Location: LCCOMB_X57_Y1_N28
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

-- Location: FF_X57_Y1_N29
\key_state~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \key_state~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_state~reg0_q\);

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X66_Y1_N30
\out2[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[0]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[0]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \out2[0]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[0]$latch~combout\);

-- Location: IOIBUF_X67_Y0_N8
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X74_Y1_N18
\out2[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[1]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[1]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \out2[1]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[1]$latch~combout\);

-- Location: IOIBUF_X69_Y0_N1
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X74_Y1_N8
\out2[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[2]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[2]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \out2[2]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[2]$latch~combout\);

-- Location: IOIBUF_X74_Y0_N1
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X74_Y1_N30
\out2[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[3]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[3]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \out2[3]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[3]$latch~combout\);

-- Location: IOIBUF_X52_Y0_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X56_Y1_N30
\out2[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[4]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[4]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \out2[4]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[4]$latch~combout\);

-- Location: IOIBUF_X54_Y0_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X56_Y1_N4
\out2[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[5]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[5]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \out2[5]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[5]$latch~combout\);

-- Location: IOIBUF_X49_Y0_N8
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X52_Y1_N22
\out2[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[6]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[6]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \out2[6]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[6]$latch~combout\);

-- Location: IOIBUF_X52_Y0_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X56_Y1_N26
\out2[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[7]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[7]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \out2[7]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[7]$latch~combout\);

-- Location: IOIBUF_X60_Y73_N1
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X60_Y72_N22
\out2[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[8]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[8]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \out2[8]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[8]$latch~combout\);

-- Location: IOIBUF_X62_Y73_N15
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X66_Y72_N30
\out2[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[9]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[9]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \out2[9]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[9]$latch~combout\);

-- Location: IOIBUF_X67_Y73_N1
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X66_Y72_N28
\out2[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[10]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[10]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \key_state~reg0clkctrl_outclk\,
	datad => \out2[10]$latch~combout\,
	combout => \out2[10]$latch~combout\);

-- Location: IOIBUF_X58_Y73_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X66_Y72_N22
\out2[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[11]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[11]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[11]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datac => \out2[11]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[11]$latch~combout\);

-- Location: IOIBUF_X20_Y0_N1
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X20_Y1_N26
\out2[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[12]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[12]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \out2[12]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[12]$latch~combout\);

-- Location: IOIBUF_X16_Y0_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X20_Y1_N4
\out2[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[13]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[13]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \out2[13]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[13]$latch~combout\);

-- Location: IOIBUF_X23_Y0_N22
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X28_Y1_N14
\out2[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[14]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[14]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \out2[14]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[14]$latch~combout\);

-- Location: IOIBUF_X23_Y0_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X28_Y1_N8
\out2[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2[15]$latch~combout\ = (GLOBAL(\key_state~reg0clkctrl_outclk\) & (\SW[15]~input_o\)) # (!GLOBAL(\key_state~reg0clkctrl_outclk\) & ((\out2[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \out2[15]$latch~combout\,
	datad => \key_state~reg0clkctrl_outclk\,
	combout => \out2[15]$latch~combout\);

-- Location: LCCOMB_X66_Y1_N10
\bit3|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit3|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit3|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit3|latch_1|Q~combout\,
	combout => \bit3|latch_1|Q~combout\);

-- Location: LCCOMB_X66_Y1_N22
\bit3|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit3|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit3|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit3|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit3|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit3|latch_1|Q~combout\,
	combout => \bit3|latch_2|Q~combout\);

-- Location: LCCOMB_X66_Y1_N2
\bit1|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit1|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit1|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit1|latch_1|Q~combout\,
	combout => \bit1|latch_1|Q~combout\);

-- Location: LCCOMB_X66_Y1_N18
\bit1|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit1|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit1|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit1|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit1|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit1|latch_1|Q~combout\,
	combout => \bit1|latch_2|Q~combout\);

-- Location: LCCOMB_X66_Y1_N16
\bit2|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit2|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit2|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit2|latch_1|Q~combout\,
	combout => \bit2|latch_1|Q~combout\);

-- Location: LCCOMB_X66_Y1_N4
\bit2|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit2|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit2|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit2|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit2|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit2|latch_1|Q~combout\,
	combout => \bit2|latch_2|Q~combout\);

-- Location: LCCOMB_X66_Y1_N20
\bit0|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit0|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit0|latch_1|Q~combout\,
	combout => \bit0|latch_1|Q~combout\);

-- Location: LCCOMB_X66_Y1_N0
\bit0|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit0|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit0|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit0|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit0|latch_1|Q~combout\,
	combout => \bit0|latch_2|Q~combout\);

-- Location: LCCOMB_X66_Y1_N28
\disp0|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add14~0_combout\ = (\bit3|latch_2|Q~combout\ & (\bit0|latch_2|Q~combout\ & (\bit1|latch_2|Q~combout\ $ (\bit2|latch_2|Q~combout\)))) # (!\bit3|latch_2|Q~combout\ & (!\bit1|latch_2|Q~combout\ & (\bit2|latch_2|Q~combout\ $ 
-- (\bit0|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit3|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit0|latch_2|Q~combout\,
	combout => \disp0|Add14~0_combout\);

-- Location: LCCOMB_X66_Y1_N6
\disp0|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add11~0_combout\ = (\bit2|latch_2|Q~combout\ & (\bit3|latch_2|Q~combout\ $ (\bit1|latch_2|Q~combout\ $ (\bit0|latch_2|Q~combout\)))) # (!\bit2|latch_2|Q~combout\ & (\bit3|latch_2|Q~combout\ & (\bit1|latch_2|Q~combout\ & \bit0|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit3|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit0|latch_2|Q~combout\,
	combout => \disp0|Add11~0_combout\);

-- Location: LCCOMB_X66_Y1_N12
\disp0|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add8~0_combout\ = (\bit3|latch_2|Q~combout\ & (\bit2|latch_2|Q~combout\ & (\bit1|latch_2|Q~combout\ $ (!\bit0|latch_2|Q~combout\)))) # (!\bit3|latch_2|Q~combout\ & (\bit1|latch_2|Q~combout\ & (!\bit2|latch_2|Q~combout\ & 
-- !\bit0|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit3|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit0|latch_2|Q~combout\,
	combout => \disp0|Add8~0_combout\);

-- Location: LCCOMB_X66_Y1_N26
\disp0|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add6~0_combout\ = (\bit0|latch_2|Q~combout\ & ((\bit1|latch_2|Q~combout\ $ (!\bit2|latch_2|Q~combout\)))) # (!\bit0|latch_2|Q~combout\ & ((\bit3|latch_2|Q~combout\ & (\bit1|latch_2|Q~combout\ & !\bit2|latch_2|Q~combout\)) # 
-- (!\bit3|latch_2|Q~combout\ & (!\bit1|latch_2|Q~combout\ & \bit2|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit3|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit0|latch_2|Q~combout\,
	combout => \disp0|Add6~0_combout\);

-- Location: LCCOMB_X66_Y1_N24
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

-- Location: LCCOMB_X66_Y1_N14
\disp0|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add3~0_combout\ = (\bit3|latch_2|Q~combout\ & (!\bit1|latch_2|Q~combout\ & (\bit2|latch_2|Q~combout\))) # (!\bit3|latch_2|Q~combout\ & ((\bit1|latch_2|Q~combout\ & ((\bit0|latch_2|Q~combout\) # (!\bit2|latch_2|Q~combout\))) # 
-- (!\bit1|latch_2|Q~combout\ & (!\bit2|latch_2|Q~combout\ & \bit0|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit3|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit0|latch_2|Q~combout\,
	combout => \disp0|Add3~0_combout\);

-- Location: LCCOMB_X66_Y1_N8
\disp0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Add0~0_combout\ = (\bit3|latch_2|Q~combout\) # ((\bit1|latch_2|Q~combout\ & ((!\bit0|latch_2|Q~combout\) # (!\bit2|latch_2|Q~combout\))) # (!\bit1|latch_2|Q~combout\ & (\bit2|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit3|latch_2|Q~combout\,
	datab => \bit1|latch_2|Q~combout\,
	datac => \bit2|latch_2|Q~combout\,
	datad => \bit0|latch_2|Q~combout\,
	combout => \disp0|Add0~0_combout\);

-- Location: LCCOMB_X52_Y1_N6
\bit5|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit5|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit5|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit5|latch_1|Q~combout\,
	combout => \bit5|latch_1|Q~combout\);

-- Location: LCCOMB_X52_Y1_N30
\bit5|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit5|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit5|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit5|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit5|latch_1|Q~combout\,
	combout => \bit5|latch_2|Q~combout\);

-- Location: LCCOMB_X52_Y1_N18
\bit7|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit7|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit7|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit7|latch_1|Q~combout\,
	combout => \bit7|latch_1|Q~combout\);

-- Location: LCCOMB_X52_Y1_N14
\bit7|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit7|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit7|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit7|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit7|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit7|latch_1|Q~combout\,
	combout => \bit7|latch_2|Q~combout\);

-- Location: LCCOMB_X52_Y1_N0
\bit4|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit4|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit4|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit4|latch_1|Q~combout\,
	combout => \bit4|latch_1|Q~combout\);

-- Location: LCCOMB_X52_Y1_N4
\bit4|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit4|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit4|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit4|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit4|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit4|latch_1|Q~combout\,
	combout => \bit4|latch_2|Q~combout\);

-- Location: LCCOMB_X52_Y1_N20
\bit6|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit6|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit6|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \bit6|latch_1|Q~combout\,
	datad => \KEY[0]~inputclkctrl_outclk\,
	combout => \bit6|latch_1|Q~combout\);

-- Location: LCCOMB_X52_Y1_N12
\bit6|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit6|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit6|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit6|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit6|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit6|latch_1|Q~combout\,
	combout => \bit6|latch_2|Q~combout\);

-- Location: LCCOMB_X52_Y1_N24
\disp1|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add14~0_combout\ = (\bit7|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ $ (\bit6|latch_2|Q~combout\)))) # (!\bit7|latch_2|Q~combout\ & (!\bit5|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ $ 
-- (\bit6|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add14~0_combout\);

-- Location: LCCOMB_X52_Y1_N10
\disp1|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add11~0_combout\ = (\bit6|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ $ (\bit7|latch_2|Q~combout\ $ (\bit4|latch_2|Q~combout\)))) # (!\bit6|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ & (\bit7|latch_2|Q~combout\ & \bit4|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add11~0_combout\);

-- Location: LCCOMB_X52_Y1_N16
\disp1|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add8~0_combout\ = (\bit7|latch_2|Q~combout\ & (\bit6|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ $ (!\bit4|latch_2|Q~combout\)))) # (!\bit7|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ & (!\bit4|latch_2|Q~combout\ & 
-- !\bit6|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add8~0_combout\);

-- Location: LCCOMB_X52_Y1_N2
\disp1|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add6~0_combout\ = (\bit4|latch_2|Q~combout\ & (\bit5|latch_2|Q~combout\ $ (((!\bit6|latch_2|Q~combout\))))) # (!\bit4|latch_2|Q~combout\ & ((\bit5|latch_2|Q~combout\ & (\bit7|latch_2|Q~combout\ & !\bit6|latch_2|Q~combout\)) # 
-- (!\bit5|latch_2|Q~combout\ & (!\bit7|latch_2|Q~combout\ & \bit6|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add6~0_combout\);

-- Location: LCCOMB_X52_Y1_N8
\disp1|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|out\(4) = (\bit4|latch_2|Q~combout\) # ((!\bit5|latch_2|Q~combout\ & \bit6|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|out\(4));

-- Location: LCCOMB_X52_Y1_N26
\disp1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add3~0_combout\ = (\bit5|latch_2|Q~combout\ & (!\bit7|latch_2|Q~combout\ & ((\bit4|latch_2|Q~combout\) # (!\bit6|latch_2|Q~combout\)))) # (!\bit5|latch_2|Q~combout\ & ((\bit7|latch_2|Q~combout\ & ((\bit6|latch_2|Q~combout\))) # 
-- (!\bit7|latch_2|Q~combout\ & (\bit4|latch_2|Q~combout\ & !\bit6|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add3~0_combout\);

-- Location: LCCOMB_X52_Y1_N28
\disp1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Add0~0_combout\ = (\bit7|latch_2|Q~combout\) # ((\bit5|latch_2|Q~combout\ & ((!\bit6|latch_2|Q~combout\) # (!\bit4|latch_2|Q~combout\))) # (!\bit5|latch_2|Q~combout\ & ((\bit6|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit5|latch_2|Q~combout\,
	datab => \bit7|latch_2|Q~combout\,
	datac => \bit4|latch_2|Q~combout\,
	datad => \bit6|latch_2|Q~combout\,
	combout => \disp1|Add0~0_combout\);

-- Location: LCCOMB_X60_Y72_N10
\bit9|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit9|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit9|latch_1|Q~combout\)) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_1|Q~combout\,
	datab => \SW[9]~input_o\,
	datad => \KEY[0]~inputclkctrl_outclk\,
	combout => \bit9|latch_1|Q~combout\);

-- Location: LCCOMB_X60_Y72_N14
\bit9|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit9|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit9|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit9|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit9|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit9|latch_1|Q~combout\,
	combout => \bit9|latch_2|Q~combout\);

-- Location: LCCOMB_X60_Y72_N24
\bit8|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit8|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit8|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \bit8|latch_1|Q~combout\,
	datad => \KEY[0]~inputclkctrl_outclk\,
	combout => \bit8|latch_1|Q~combout\);

-- Location: LCCOMB_X60_Y72_N4
\bit8|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit8|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit8|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit8|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit8|latch_1|Q~combout\,
	combout => \bit8|latch_2|Q~combout\);

-- Location: LCCOMB_X60_Y72_N2
\bit11|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit11|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit11|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datac => \bit11|latch_1|Q~combout\,
	datad => \KEY[0]~inputclkctrl_outclk\,
	combout => \bit11|latch_1|Q~combout\);

-- Location: LCCOMB_X60_Y72_N30
\bit11|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit11|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit11|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit11|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit11|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit11|latch_1|Q~combout\,
	combout => \bit11|latch_2|Q~combout\);

-- Location: LCCOMB_X60_Y72_N0
\bit10|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit10|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit10|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \bit10|latch_1|Q~combout\,
	datad => \KEY[0]~inputclkctrl_outclk\,
	combout => \bit10|latch_1|Q~combout\);

-- Location: LCCOMB_X60_Y72_N12
\bit10|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit10|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit10|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit10|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit10|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit10|latch_1|Q~combout\,
	combout => \bit10|latch_2|Q~combout\);

-- Location: LCCOMB_X60_Y72_N28
\disp2|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add14~0_combout\ = (\bit11|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ $ (\bit10|latch_2|Q~combout\)))) # (!\bit11|latch_2|Q~combout\ & (!\bit9|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ $ 
-- (\bit10|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit8|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit10|latch_2|Q~combout\,
	combout => \disp2|Add14~0_combout\);

-- Location: LCCOMB_X60_Y72_N6
\disp2|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add11~0_combout\ = (\bit10|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ $ (\bit8|latch_2|Q~combout\ $ (\bit11|latch_2|Q~combout\)))) # (!\bit10|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ & 
-- \bit11|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit8|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit10|latch_2|Q~combout\,
	combout => \disp2|Add11~0_combout\);

-- Location: LCCOMB_X60_Y72_N20
\disp2|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add8~0_combout\ = (\bit11|latch_2|Q~combout\ & (\bit10|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ $ (!\bit8|latch_2|Q~combout\)))) # (!\bit11|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ & (!\bit8|latch_2|Q~combout\ & 
-- !\bit10|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit8|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit10|latch_2|Q~combout\,
	combout => \disp2|Add8~0_combout\);

-- Location: LCCOMB_X60_Y72_N26
\disp2|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add6~0_combout\ = (\bit8|latch_2|Q~combout\ & (\bit9|latch_2|Q~combout\ $ (((!\bit10|latch_2|Q~combout\))))) # (!\bit8|latch_2|Q~combout\ & ((\bit9|latch_2|Q~combout\ & (\bit11|latch_2|Q~combout\ & !\bit10|latch_2|Q~combout\)) # 
-- (!\bit9|latch_2|Q~combout\ & (!\bit11|latch_2|Q~combout\ & \bit10|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit8|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit10|latch_2|Q~combout\,
	combout => \disp2|Add6~0_combout\);

-- Location: LCCOMB_X60_Y72_N16
\disp2|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|out\(4) = (\bit8|latch_2|Q~combout\) # ((!\bit9|latch_2|Q~combout\ & \bit10|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8|latch_2|Q~combout\,
	datac => \bit9|latch_2|Q~combout\,
	datad => \bit10|latch_2|Q~combout\,
	combout => \disp2|out\(4));

-- Location: LCCOMB_X60_Y72_N18
\disp2|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add3~0_combout\ = (\bit9|latch_2|Q~combout\ & (!\bit11|latch_2|Q~combout\ & ((\bit8|latch_2|Q~combout\) # (!\bit10|latch_2|Q~combout\)))) # (!\bit9|latch_2|Q~combout\ & ((\bit11|latch_2|Q~combout\ & ((\bit10|latch_2|Q~combout\))) # 
-- (!\bit11|latch_2|Q~combout\ & (\bit8|latch_2|Q~combout\ & !\bit10|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit8|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit10|latch_2|Q~combout\,
	combout => \disp2|Add3~0_combout\);

-- Location: LCCOMB_X60_Y72_N8
\disp2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Add0~0_combout\ = (\bit11|latch_2|Q~combout\) # ((\bit9|latch_2|Q~combout\ & ((!\bit10|latch_2|Q~combout\) # (!\bit8|latch_2|Q~combout\))) # (!\bit9|latch_2|Q~combout\ & ((\bit10|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit9|latch_2|Q~combout\,
	datab => \bit8|latch_2|Q~combout\,
	datac => \bit11|latch_2|Q~combout\,
	datad => \bit10|latch_2|Q~combout\,
	combout => \disp2|Add0~0_combout\);

-- Location: LCCOMB_X20_Y1_N18
\bit14|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit14|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit14|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \bit14|latch_1|Q~combout\,
	datad => \KEY[0]~inputclkctrl_outclk\,
	combout => \bit14|latch_1|Q~combout\);

-- Location: LCCOMB_X20_Y1_N30
\bit14|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit14|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit14|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit14|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit14|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit14|latch_1|Q~combout\,
	combout => \bit14|latch_2|Q~combout\);

-- Location: LCCOMB_X20_Y1_N20
\bit15|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit15|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit15|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \bit15|latch_1|Q~combout\,
	datad => \KEY[0]~inputclkctrl_outclk\,
	combout => \bit15|latch_1|Q~combout\);

-- Location: LCCOMB_X20_Y1_N16
\bit15|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit15|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit15|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit15|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit15|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit15|latch_1|Q~combout\,
	combout => \bit15|latch_2|Q~combout\);

-- Location: LCCOMB_X20_Y1_N28
\bit13|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit13|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit13|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit13|latch_1|Q~combout\,
	combout => \bit13|latch_1|Q~combout\);

-- Location: LCCOMB_X20_Y1_N12
\bit13|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit13|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit13|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit13|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit13|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit13|latch_1|Q~combout\,
	combout => \bit13|latch_2|Q~combout\);

-- Location: LCCOMB_X20_Y1_N10
\bit12|latch_1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit12|latch_1|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit12|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit12|latch_1|Q~combout\,
	combout => \bit12|latch_1|Q~combout\);

-- Location: LCCOMB_X20_Y1_N22
\bit12|latch_2|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit12|latch_2|Q~combout\ = (GLOBAL(\KEY[0]~inputclkctrl_outclk\) & ((\bit12|latch_1|Q~combout\))) # (!GLOBAL(\KEY[0]~inputclkctrl_outclk\) & (\bit12|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit12|latch_2|Q~combout\,
	datac => \KEY[0]~inputclkctrl_outclk\,
	datad => \bit12|latch_1|Q~combout\,
	combout => \bit12|latch_2|Q~combout\);

-- Location: LCCOMB_X19_Y1_N28
\disp3|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add14~0_combout\ = (\bit14|latch_2|Q~combout\ & (!\bit13|latch_2|Q~combout\ & (\bit15|latch_2|Q~combout\ $ (!\bit12|latch_2|Q~combout\)))) # (!\bit14|latch_2|Q~combout\ & (\bit12|latch_2|Q~combout\ & (\bit15|latch_2|Q~combout\ $ 
-- (!\bit13|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit14|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit13|latch_2|Q~combout\,
	datad => \bit12|latch_2|Q~combout\,
	combout => \disp3|Add14~0_combout\);

-- Location: LCCOMB_X19_Y1_N22
\disp3|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add11~0_combout\ = (\bit14|latch_2|Q~combout\ & (\bit15|latch_2|Q~combout\ $ (\bit13|latch_2|Q~combout\ $ (\bit12|latch_2|Q~combout\)))) # (!\bit14|latch_2|Q~combout\ & (\bit15|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ & 
-- \bit12|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit14|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit13|latch_2|Q~combout\,
	datad => \bit12|latch_2|Q~combout\,
	combout => \disp3|Add11~0_combout\);

-- Location: LCCOMB_X19_Y1_N12
\disp3|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add8~0_combout\ = (\bit14|latch_2|Q~combout\ & (\bit15|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ $ (!\bit12|latch_2|Q~combout\)))) # (!\bit14|latch_2|Q~combout\ & (!\bit15|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ & 
-- !\bit12|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit14|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit13|latch_2|Q~combout\,
	datad => \bit12|latch_2|Q~combout\,
	combout => \disp3|Add8~0_combout\);

-- Location: LCCOMB_X20_Y1_N24
\disp3|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add6~0_combout\ = (\bit12|latch_2|Q~combout\ & ((\bit13|latch_2|Q~combout\ $ (!\bit14|latch_2|Q~combout\)))) # (!\bit12|latch_2|Q~combout\ & ((\bit15|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ & !\bit14|latch_2|Q~combout\)) # 
-- (!\bit15|latch_2|Q~combout\ & (!\bit13|latch_2|Q~combout\ & \bit14|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit12|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit13|latch_2|Q~combout\,
	datad => \bit14|latch_2|Q~combout\,
	combout => \disp3|Add6~0_combout\);

-- Location: LCCOMB_X19_Y1_N26
\disp3|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|out\(4) = (\bit12|latch_2|Q~combout\) # ((\bit14|latch_2|Q~combout\ & !\bit13|latch_2|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit14|latch_2|Q~combout\,
	datab => \bit12|latch_2|Q~combout\,
	datac => \bit13|latch_2|Q~combout\,
	combout => \disp3|out\(4));

-- Location: LCCOMB_X19_Y1_N24
\disp3|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add3~0_combout\ = (\bit14|latch_2|Q~combout\ & ((\bit15|latch_2|Q~combout\ & (!\bit13|latch_2|Q~combout\)) # (!\bit15|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\ & \bit12|latch_2|Q~combout\)))) # (!\bit14|latch_2|Q~combout\ & 
-- (!\bit15|latch_2|Q~combout\ & ((\bit13|latch_2|Q~combout\) # (\bit12|latch_2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit14|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit13|latch_2|Q~combout\,
	datad => \bit12|latch_2|Q~combout\,
	combout => \disp3|Add3~0_combout\);

-- Location: LCCOMB_X19_Y1_N10
\disp3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Add0~0_combout\ = (\bit15|latch_2|Q~combout\) # ((\bit14|latch_2|Q~combout\ & ((!\bit12|latch_2|Q~combout\) # (!\bit13|latch_2|Q~combout\))) # (!\bit14|latch_2|Q~combout\ & (\bit13|latch_2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit14|latch_2|Q~combout\,
	datab => \bit15|latch_2|Q~combout\,
	datac => \bit13|latch_2|Q~combout\,
	datad => \bit12|latch_2|Q~combout\,
	combout => \disp3|Add0~0_combout\);

-- Location: LCCOMB_X74_Y1_N24
\disp4|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add14~0_combout\ = (\out2[2]$latch~combout\ & (!\out2[1]$latch~combout\ & (\out2[0]$latch~combout\ $ (!\out2[3]$latch~combout\)))) # (!\out2[2]$latch~combout\ & (\out2[0]$latch~combout\ & (\out2[3]$latch~combout\ $ (!\out2[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[0]$latch~combout\,
	datab => \out2[2]$latch~combout\,
	datac => \out2[3]$latch~combout\,
	datad => \out2[1]$latch~combout\,
	combout => \disp4|Add14~0_combout\);

-- Location: LCCOMB_X74_Y1_N26
\disp4|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add11~0_combout\ = (\out2[2]$latch~combout\ & (\out2[0]$latch~combout\ $ (\out2[3]$latch~combout\ $ (\out2[1]$latch~combout\)))) # (!\out2[2]$latch~combout\ & (\out2[0]$latch~combout\ & (\out2[3]$latch~combout\ & \out2[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[0]$latch~combout\,
	datab => \out2[2]$latch~combout\,
	datac => \out2[3]$latch~combout\,
	datad => \out2[1]$latch~combout\,
	combout => \disp4|Add11~0_combout\);

-- Location: LCCOMB_X74_Y1_N28
\disp4|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add8~0_combout\ = (\out2[2]$latch~combout\ & (\out2[3]$latch~combout\ & (\out2[0]$latch~combout\ $ (!\out2[1]$latch~combout\)))) # (!\out2[2]$latch~combout\ & (!\out2[0]$latch~combout\ & (!\out2[3]$latch~combout\ & \out2[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[0]$latch~combout\,
	datab => \out2[2]$latch~combout\,
	datac => \out2[3]$latch~combout\,
	datad => \out2[1]$latch~combout\,
	combout => \disp4|Add8~0_combout\);

-- Location: LCCOMB_X74_Y1_N22
\disp4|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add6~0_combout\ = (\out2[0]$latch~combout\ & (\out2[2]$latch~combout\ $ (((!\out2[1]$latch~combout\))))) # (!\out2[0]$latch~combout\ & ((\out2[2]$latch~combout\ & (!\out2[3]$latch~combout\ & !\out2[1]$latch~combout\)) # (!\out2[2]$latch~combout\ & 
-- (\out2[3]$latch~combout\ & \out2[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[0]$latch~combout\,
	datab => \out2[2]$latch~combout\,
	datac => \out2[3]$latch~combout\,
	datad => \out2[1]$latch~combout\,
	combout => \disp4|Add6~0_combout\);

-- Location: LCCOMB_X74_Y1_N16
\disp4|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|out\(4) = (\out2[0]$latch~combout\) # ((\out2[2]$latch~combout\ & !\out2[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out2[2]$latch~combout\,
	datac => \out2[0]$latch~combout\,
	datad => \out2[1]$latch~combout\,
	combout => \disp4|out\(4));

-- Location: LCCOMB_X74_Y1_N14
\disp4|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add3~0_combout\ = (\out2[2]$latch~combout\ & ((\out2[3]$latch~combout\ & ((!\out2[1]$latch~combout\))) # (!\out2[3]$latch~combout\ & (\out2[0]$latch~combout\ & \out2[1]$latch~combout\)))) # (!\out2[2]$latch~combout\ & (!\out2[3]$latch~combout\ & 
-- ((\out2[0]$latch~combout\) # (\out2[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[0]$latch~combout\,
	datab => \out2[2]$latch~combout\,
	datac => \out2[3]$latch~combout\,
	datad => \out2[1]$latch~combout\,
	combout => \disp4|Add3~0_combout\);

-- Location: LCCOMB_X74_Y1_N20
\disp4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|Add0~0_combout\ = (\out2[3]$latch~combout\) # ((\out2[2]$latch~combout\ & ((!\out2[1]$latch~combout\) # (!\out2[0]$latch~combout\))) # (!\out2[2]$latch~combout\ & ((\out2[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[0]$latch~combout\,
	datab => \out2[2]$latch~combout\,
	datac => \out2[3]$latch~combout\,
	datad => \out2[1]$latch~combout\,
	combout => \disp4|Add0~0_combout\);

-- Location: LCCOMB_X56_Y1_N16
\disp5|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add14~0_combout\ = (\out2[7]$latch~combout\ & (\out2[4]$latch~combout\ & (\out2[5]$latch~combout\ $ (\out2[6]$latch~combout\)))) # (!\out2[7]$latch~combout\ & (!\out2[5]$latch~combout\ & (\out2[4]$latch~combout\ $ (\out2[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[7]$latch~combout\,
	datab => \out2[5]$latch~combout\,
	datac => \out2[4]$latch~combout\,
	datad => \out2[6]$latch~combout\,
	combout => \disp5|Add14~0_combout\);

-- Location: LCCOMB_X56_Y1_N22
\disp5|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add11~0_combout\ = (\out2[6]$latch~combout\ & (\out2[7]$latch~combout\ $ (\out2[5]$latch~combout\ $ (\out2[4]$latch~combout\)))) # (!\out2[6]$latch~combout\ & (\out2[7]$latch~combout\ & (\out2[5]$latch~combout\ & \out2[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[7]$latch~combout\,
	datab => \out2[5]$latch~combout\,
	datac => \out2[4]$latch~combout\,
	datad => \out2[6]$latch~combout\,
	combout => \disp5|Add11~0_combout\);

-- Location: LCCOMB_X56_Y1_N24
\disp5|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add8~0_combout\ = (\out2[7]$latch~combout\ & (\out2[6]$latch~combout\ & (\out2[5]$latch~combout\ $ (!\out2[4]$latch~combout\)))) # (!\out2[7]$latch~combout\ & (\out2[5]$latch~combout\ & (!\out2[4]$latch~combout\ & !\out2[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[7]$latch~combout\,
	datab => \out2[5]$latch~combout\,
	datac => \out2[4]$latch~combout\,
	datad => \out2[6]$latch~combout\,
	combout => \disp5|Add8~0_combout\);

-- Location: LCCOMB_X56_Y1_N14
\disp5|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add6~0_combout\ = (\out2[4]$latch~combout\ & ((\out2[5]$latch~combout\ $ (!\out2[6]$latch~combout\)))) # (!\out2[4]$latch~combout\ & ((\out2[7]$latch~combout\ & (\out2[5]$latch~combout\ & !\out2[6]$latch~combout\)) # (!\out2[7]$latch~combout\ & 
-- (!\out2[5]$latch~combout\ & \out2[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[7]$latch~combout\,
	datab => \out2[5]$latch~combout\,
	datac => \out2[4]$latch~combout\,
	datad => \out2[6]$latch~combout\,
	combout => \disp5|Add6~0_combout\);

-- Location: LCCOMB_X56_Y1_N28
\disp5|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|out\(4) = (\out2[4]$latch~combout\) # ((!\out2[5]$latch~combout\ & \out2[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out2[5]$latch~combout\,
	datac => \out2[4]$latch~combout\,
	datad => \out2[6]$latch~combout\,
	combout => \disp5|out\(4));

-- Location: LCCOMB_X56_Y1_N18
\disp5|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add3~0_combout\ = (\out2[7]$latch~combout\ & (!\out2[5]$latch~combout\ & ((\out2[6]$latch~combout\)))) # (!\out2[7]$latch~combout\ & ((\out2[5]$latch~combout\ & ((\out2[4]$latch~combout\) # (!\out2[6]$latch~combout\))) # (!\out2[5]$latch~combout\ & 
-- (\out2[4]$latch~combout\ & !\out2[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[7]$latch~combout\,
	datab => \out2[5]$latch~combout\,
	datac => \out2[4]$latch~combout\,
	datad => \out2[6]$latch~combout\,
	combout => \disp5|Add3~0_combout\);

-- Location: LCCOMB_X56_Y1_N8
\disp5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|Add0~0_combout\ = (\out2[7]$latch~combout\) # ((\out2[5]$latch~combout\ & ((!\out2[6]$latch~combout\) # (!\out2[4]$latch~combout\))) # (!\out2[5]$latch~combout\ & ((\out2[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[7]$latch~combout\,
	datab => \out2[5]$latch~combout\,
	datac => \out2[4]$latch~combout\,
	datad => \out2[6]$latch~combout\,
	combout => \disp5|Add0~0_combout\);

-- Location: LCCOMB_X66_Y72_N16
\disp6|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add14~0_combout\ = (\out2[11]$latch~combout\ & (\out2[8]$latch~combout\ & (\out2[9]$latch~combout\ $ (\out2[10]$latch~combout\)))) # (!\out2[11]$latch~combout\ & (!\out2[9]$latch~combout\ & (\out2[8]$latch~combout\ $ (\out2[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[11]$latch~combout\,
	datab => \out2[8]$latch~combout\,
	datac => \out2[9]$latch~combout\,
	datad => \out2[10]$latch~combout\,
	combout => \disp6|Add14~0_combout\);

-- Location: LCCOMB_X66_Y72_N2
\disp6|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add11~0_combout\ = (\out2[10]$latch~combout\ & (\out2[11]$latch~combout\ $ (\out2[8]$latch~combout\ $ (\out2[9]$latch~combout\)))) # (!\out2[10]$latch~combout\ & (\out2[11]$latch~combout\ & (\out2[8]$latch~combout\ & \out2[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[11]$latch~combout\,
	datab => \out2[8]$latch~combout\,
	datac => \out2[9]$latch~combout\,
	datad => \out2[10]$latch~combout\,
	combout => \disp6|Add11~0_combout\);

-- Location: LCCOMB_X66_Y72_N0
\disp6|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add8~0_combout\ = (\out2[11]$latch~combout\ & (\out2[10]$latch~combout\ & (\out2[8]$latch~combout\ $ (!\out2[9]$latch~combout\)))) # (!\out2[11]$latch~combout\ & (!\out2[8]$latch~combout\ & (\out2[9]$latch~combout\ & !\out2[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[11]$latch~combout\,
	datab => \out2[8]$latch~combout\,
	datac => \out2[9]$latch~combout\,
	datad => \out2[10]$latch~combout\,
	combout => \disp6|Add8~0_combout\);

-- Location: LCCOMB_X66_Y72_N26
\disp6|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add6~0_combout\ = (\out2[8]$latch~combout\ & ((\out2[9]$latch~combout\ $ (!\out2[10]$latch~combout\)))) # (!\out2[8]$latch~combout\ & ((\out2[11]$latch~combout\ & (\out2[9]$latch~combout\ & !\out2[10]$latch~combout\)) # (!\out2[11]$latch~combout\ & 
-- (!\out2[9]$latch~combout\ & \out2[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[11]$latch~combout\,
	datab => \out2[8]$latch~combout\,
	datac => \out2[9]$latch~combout\,
	datad => \out2[10]$latch~combout\,
	combout => \disp6|Add6~0_combout\);

-- Location: LCCOMB_X66_Y72_N24
\disp6|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|out\(4) = (\out2[8]$latch~combout\) # ((!\out2[9]$latch~combout\ & \out2[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[9]$latch~combout\,
	datab => \out2[8]$latch~combout\,
	datad => \out2[10]$latch~combout\,
	combout => \disp6|out\(4));

-- Location: LCCOMB_X66_Y72_N10
\disp6|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add3~0_combout\ = (\out2[11]$latch~combout\ & (((!\out2[9]$latch~combout\ & \out2[10]$latch~combout\)))) # (!\out2[11]$latch~combout\ & ((\out2[8]$latch~combout\ & ((\out2[9]$latch~combout\) # (!\out2[10]$latch~combout\))) # 
-- (!\out2[8]$latch~combout\ & (\out2[9]$latch~combout\ & !\out2[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[11]$latch~combout\,
	datab => \out2[8]$latch~combout\,
	datac => \out2[9]$latch~combout\,
	datad => \out2[10]$latch~combout\,
	combout => \disp6|Add3~0_combout\);

-- Location: LCCOMB_X66_Y72_N20
\disp6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|Add0~0_combout\ = (\out2[11]$latch~combout\) # ((\out2[9]$latch~combout\ & ((!\out2[10]$latch~combout\) # (!\out2[8]$latch~combout\))) # (!\out2[9]$latch~combout\ & ((\out2[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[11]$latch~combout\,
	datab => \out2[8]$latch~combout\,
	datac => \out2[9]$latch~combout\,
	datad => \out2[10]$latch~combout\,
	combout => \disp6|Add0~0_combout\);

-- Location: LCCOMB_X28_Y1_N16
\disp7|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add14~0_combout\ = (\out2[15]$latch~combout\ & (\out2[12]$latch~combout\ & (\out2[13]$latch~combout\ $ (\out2[14]$latch~combout\)))) # (!\out2[15]$latch~combout\ & (!\out2[13]$latch~combout\ & (\out2[14]$latch~combout\ $ 
-- (\out2[12]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[13]$latch~combout\,
	datab => \out2[15]$latch~combout\,
	datac => \out2[14]$latch~combout\,
	datad => \out2[12]$latch~combout\,
	combout => \disp7|Add14~0_combout\);

-- Location: LCCOMB_X28_Y1_N30
\disp7|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add11~0_combout\ = (\out2[14]$latch~combout\ & (\out2[13]$latch~combout\ $ (\out2[15]$latch~combout\ $ (\out2[12]$latch~combout\)))) # (!\out2[14]$latch~combout\ & (\out2[13]$latch~combout\ & (\out2[15]$latch~combout\ & \out2[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[13]$latch~combout\,
	datab => \out2[15]$latch~combout\,
	datac => \out2[14]$latch~combout\,
	datad => \out2[12]$latch~combout\,
	combout => \disp7|Add11~0_combout\);

-- Location: LCCOMB_X28_Y1_N24
\disp7|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add8~0_combout\ = (\out2[15]$latch~combout\ & (\out2[14]$latch~combout\ & (\out2[13]$latch~combout\ $ (!\out2[12]$latch~combout\)))) # (!\out2[15]$latch~combout\ & (\out2[13]$latch~combout\ & (!\out2[14]$latch~combout\ & 
-- !\out2[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[13]$latch~combout\,
	datab => \out2[15]$latch~combout\,
	datac => \out2[14]$latch~combout\,
	datad => \out2[12]$latch~combout\,
	combout => \disp7|Add8~0_combout\);

-- Location: LCCOMB_X28_Y1_N22
\disp7|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add6~0_combout\ = (\out2[12]$latch~combout\ & (\out2[13]$latch~combout\ $ (((!\out2[14]$latch~combout\))))) # (!\out2[12]$latch~combout\ & ((\out2[13]$latch~combout\ & (\out2[15]$latch~combout\ & !\out2[14]$latch~combout\)) # 
-- (!\out2[13]$latch~combout\ & (!\out2[15]$latch~combout\ & \out2[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[13]$latch~combout\,
	datab => \out2[15]$latch~combout\,
	datac => \out2[14]$latch~combout\,
	datad => \out2[12]$latch~combout\,
	combout => \disp7|Add6~0_combout\);

-- Location: LCCOMB_X28_Y1_N28
\disp7|out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|out\(4) = (\out2[12]$latch~combout\) # ((!\out2[13]$latch~combout\ & \out2[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[13]$latch~combout\,
	datab => \out2[14]$latch~combout\,
	datad => \out2[12]$latch~combout\,
	combout => \disp7|out\(4));

-- Location: LCCOMB_X28_Y1_N26
\disp7|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add3~0_combout\ = (\out2[13]$latch~combout\ & (!\out2[15]$latch~combout\ & ((\out2[12]$latch~combout\) # (!\out2[14]$latch~combout\)))) # (!\out2[13]$latch~combout\ & ((\out2[15]$latch~combout\ & (\out2[14]$latch~combout\)) # 
-- (!\out2[15]$latch~combout\ & (!\out2[14]$latch~combout\ & \out2[12]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[13]$latch~combout\,
	datab => \out2[15]$latch~combout\,
	datac => \out2[14]$latch~combout\,
	datad => \out2[12]$latch~combout\,
	combout => \disp7|Add3~0_combout\);

-- Location: LCCOMB_X28_Y1_N20
\disp7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|Add0~0_combout\ = (\out2[15]$latch~combout\) # ((\out2[13]$latch~combout\ & ((!\out2[12]$latch~combout\) # (!\out2[14]$latch~combout\))) # (!\out2[13]$latch~combout\ & (\out2[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out2[13]$latch~combout\,
	datab => \out2[15]$latch~combout\,
	datac => \out2[14]$latch~combout\,
	datad => \out2[12]$latch~combout\,
	combout => \disp7|Add0~0_combout\);

-- Location: IOIBUF_X89_Y0_N22
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


