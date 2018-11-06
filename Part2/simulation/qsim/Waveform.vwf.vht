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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/06/2018 15:28:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Part2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Part2_vhd_vec_tst IS
END Part2_vhd_vec_tst;
ARCHITECTURE Part2_arch OF Part2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LEDR : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Part2
	PORT (
	LEDR : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Part2
	PORT MAP (
-- list connections between master ports and signals
	LEDR => LEDR,
	SW => SW
	);

-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
LOOP
	SW(0) <= '0';
	WAIT FOR 2000 ps;
	SW(0) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 20000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_0;

-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
	WAIT FOR 2036 ps;
	SW(1) <= '1';
	WAIT FOR 1560 ps;
	SW(1) <= '0';
	WAIT FOR 2440 ps;
	SW(1) <= '1';
	WAIT FOR 1560 ps;
	SW(1) <= '0';
	WAIT FOR 404 ps;
	SW(1) <= '1';
	WAIT FOR 1049 ps;
	FOR i IN 1 TO 2
	LOOP
		SW(1) <= '0';
		WAIT FOR 1387 ps;
		SW(1) <= '1';
		WAIT FOR 1279 ps;
	END LOOP;
	SW(1) <= '0';
	WAIT FOR 1387 ps;
	SW(1) <= '1';
	WAIT FOR 232 ps;
	SW(1) <= '0';
	WAIT FOR 576 ps;
	SW(1) <= '1';
	WAIT FOR 1160 ps;
	SW(1) <= '0';
	WAIT FOR 840 ps;
	SW(1) <= '1';
	WAIT FOR 1160 ps;
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
END Part2_arch;
