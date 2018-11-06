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

-- DATE "11/06/2018 15:22:15"

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

ENTITY 	Part3 IS
    PORT (
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END Part3;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Part3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \comb_3|comb_3|S~combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \comb_3|comb_3|S_g~combout\ : std_logic;
SIGNAL \comb_3|comb_3|R~combout\ : std_logic;
SIGNAL \comb_3|comb_3|R_g~combout\ : std_logic;
SIGNAL \comb_3|comb_3|Qb~combout\ : std_logic;
SIGNAL \comb_3|comb_3|Qa~combout\ : std_logic;
SIGNAL \comb_3|comb_5|S~combout\ : std_logic;
SIGNAL \comb_3|comb_5|S_g~combout\ : std_logic;
SIGNAL \comb_3|comb_5|R~combout\ : std_logic;
SIGNAL \comb_3|comb_5|R_g~combout\ : std_logic;
SIGNAL \comb_3|comb_5|Qb~combout\ : std_logic;
SIGNAL \comb_3|comb_5|Qa~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_5|Qa~combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

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

-- Location: LCCOMB_X114_Y17_N28
\comb_3|comb_3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|S~combout\ = LCELL(\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \comb_3|comb_3|S~combout\);

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

-- Location: LCCOMB_X114_Y17_N12
\comb_3|comb_3|S_g\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|S_g~combout\ = LCELL((\comb_3|comb_3|S~combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|S~combout\,
	datad => \SW[0]~input_o\,
	combout => \comb_3|comb_3|S_g~combout\);

-- Location: LCCOMB_X114_Y17_N14
\comb_3|comb_3|R\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|R~combout\ = LCELL(!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \comb_3|comb_3|R~combout\);

-- Location: LCCOMB_X114_Y17_N6
\comb_3|comb_3|R_g\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|R_g~combout\ = LCELL((\comb_3|comb_3|R~combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|comb_3|R~combout\,
	datad => \SW[0]~input_o\,
	combout => \comb_3|comb_3|R_g~combout\);

-- Location: LCCOMB_X114_Y17_N26
\comb_3|comb_3|Qb\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Qb~combout\ = LCELL((\comb_3|comb_3|R_g~combout\) # (!\comb_3|comb_3|Qa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|R_g~combout\,
	datad => \comb_3|comb_3|Qa~combout\,
	combout => \comb_3|comb_3|Qb~combout\);

-- Location: LCCOMB_X114_Y17_N16
\comb_3|comb_3|Qa\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Qa~combout\ = LCELL((\comb_3|comb_3|S_g~combout\) # (!\comb_3|comb_3|Qb~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|S_g~combout\,
	datac => \comb_3|comb_3|Qb~combout\,
	combout => \comb_3|comb_3|Qa~combout\);

-- Location: LCCOMB_X114_Y17_N24
\comb_3|comb_5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_5|S~combout\ = LCELL(\comb_3|comb_3|Qa~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|comb_3|Qa~combout\,
	combout => \comb_3|comb_5|S~combout\);

-- Location: LCCOMB_X114_Y17_N20
\comb_3|comb_5|S_g\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_5|S_g~combout\ = LCELL((\comb_3|comb_5|S~combout\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_5|S~combout\,
	datad => \SW[0]~input_o\,
	combout => \comb_3|comb_5|S_g~combout\);

-- Location: LCCOMB_X114_Y17_N18
\comb_3|comb_5|R\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_5|R~combout\ = LCELL(!\comb_3|comb_3|Qa~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|comb_3|Qa~combout\,
	combout => \comb_3|comb_5|R~combout\);

-- Location: LCCOMB_X114_Y17_N22
\comb_3|comb_5|R_g\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_5|R_g~combout\ = LCELL((\comb_3|comb_5|R~combout\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_5|R~combout\,
	datad => \SW[0]~input_o\,
	combout => \comb_3|comb_5|R_g~combout\);

-- Location: LCCOMB_X114_Y17_N10
\comb_3|comb_5|Qb\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_5|Qb~combout\ = LCELL((\comb_3|comb_5|R_g~combout\) # (!\comb_3|comb_5|Qa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|comb_5|R_g~combout\,
	datad => \comb_3|comb_5|Qa~combout\,
	combout => \comb_3|comb_5|Qb~combout\);

-- Location: LCCOMB_X114_Y17_N0
\comb_3|comb_5|Qa\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_5|Qa~combout\ = LCELL((\comb_3|comb_5|S_g~combout\) # (!\comb_3|comb_5|Qb~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_5|S_g~combout\,
	datad => \comb_3|comb_5|Qb~combout\,
	combout => \comb_3|comb_5|Qa~combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;
END structure;


