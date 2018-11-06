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
-- Generated on "11/06/2018 15:22:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Part3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Part3_vhd_vec_tst IS
END Part3_vhd_vec_tst;
ARCHITECTURE Part3_arch OF Part3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LEDR : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Part3
	PORT (
	LEDR : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Part3
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
	WAIT FOR 2000000 ps;
	SW(0) <= '1';
	WAIT FOR 2000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_0;

-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '1';
	WAIT FOR 23596 ps;
	SW(1) <= '0';
	WAIT FOR 610000 ps;
	SW(1) <= '1';
	WAIT FOR 390000 ps;
	SW(1) <= '0';
	WAIT FOR 610000 ps;
	SW(1) <= '1';
	WAIT FOR 372785 ps;
	SW(1) <= '0';
	WAIT FOR 346667 ps;
	SW(1) <= '1';
	WAIT FOR 319999 ps;
	SW(1) <= '0';
	WAIT FOR 346667 ps;
	SW(1) <= '1';
	WAIT FOR 319999 ps;
	SW(1) <= '0';
	WAIT FOR 346667 ps;
	SW(1) <= '1';
	WAIT FOR 327356 ps;
	SW(1) <= '0';
	WAIT FOR 420000 ps;
	SW(1) <= '1';
	WAIT FOR 580000 ps;
	SW(1) <= '0';
	WAIT FOR 420000 ps;
	SW(1) <= '1';
	WAIT FOR 582517 ps;
	SW(1) <= '0';
	WAIT FOR 176667 ps;
	SW(1) <= '1';
	WAIT FOR 156666 ps;
	SW(1) <= '0';
	WAIT FOR 176667 ps;
	SW(1) <= '1';
	WAIT FOR 156666 ps;
	SW(1) <= '0';
	WAIT FOR 176667 ps;
	SW(1) <= '1';
	WAIT FOR 164546 ps;
	SW(1) <= '0';
	WAIT FOR 1260000 ps;
	SW(1) <= '1';
	WAIT FOR 732468 ps;
	SW(1) <= '0';
	WAIT FOR 680000 ps;
	SW(1) <= '1';
	WAIT FOR 312541 ps;
	SW(1) <= '0';
	WAIT FOR 433333 ps;
	SW(1) <= '1';
	WAIT FOR 233333 ps;
	SW(1) <= '0';
	WAIT FOR 433333 ps;
	SW(1) <= '1';
	WAIT FOR 233333 ps;
	SW(1) <= '0';
	WAIT FOR 433333 ps;
	SW(1) <= '1';
	WAIT FOR 233864 ps;
	SW(1) <= '0';
	WAIT FOR 460000 ps;
	SW(1) <= '1';
	WAIT FOR 206666 ps;
	SW(1) <= '0';
	WAIT FOR 460000 ps;
	SW(1) <= '1';
	WAIT FOR 206666 ps;
	SW(1) <= '0';
	WAIT FOR 460000 ps;
	SW(1) <= '1';
	WAIT FOR 221438 ps;
	SW(1) <= '0';
	WAIT FOR 700000 ps;
	SW(1) <= '1';
	WAIT FOR 304251 ps;
	SW(1) <= '0';
	WAIT FOR 315000 ps;
	SW(1) <= '1';
	WAIT FOR 185000 ps;
	SW(1) <= '0';
	WAIT FOR 315000 ps;
	SW(1) <= '1';
WAIT;
END PROCESS t_prcs_SW_1;
END Part3_arch;
