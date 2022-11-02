-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/15/2022 14:12:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          microaddress_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY microaddress_counter_vhd_vec_tst IS
END microaddress_counter_vhd_vec_tst;
ARCHITECTURE microaddress_counter_arch OF microaddress_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL cmd : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL load_addr : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT microaddress_counter
	PORT (
	addr : BUFFER STD_LOGIC_VECTOR(10 DOWNTO 0);
	clk : IN STD_LOGIC;
	cmd : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	load_addr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : microaddress_counter
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	cmd => cmd,
	load_addr => load_addr,
	rst => rst
	);

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- cmd[1]
t_prcs_cmd_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		cmd(1) <= '0';
		WAIT FOR 200000 ps;
		cmd(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	cmd(1) <= '0';
WAIT;
END PROCESS t_prcs_cmd_1;
-- cmd[0]
t_prcs_cmd_0: PROCESS
BEGIN
LOOP
	cmd(0) <= '0';
	WAIT FOR 100000 ps;
	cmd(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_cmd_0;
-- load_addr[10]
t_prcs_load_addr_10: PROCESS
BEGIN
	load_addr(10) <= '0';
WAIT;
END PROCESS t_prcs_load_addr_10;
-- load_addr[9]
t_prcs_load_addr_9: PROCESS
BEGIN
	load_addr(9) <= '0';
WAIT;
END PROCESS t_prcs_load_addr_9;
-- load_addr[8]
t_prcs_load_addr_8: PROCESS
BEGIN
	load_addr(8) <= '0';
WAIT;
END PROCESS t_prcs_load_addr_8;
-- load_addr[7]
t_prcs_load_addr_7: PROCESS
BEGIN
	load_addr(7) <= '0';
WAIT;
END PROCESS t_prcs_load_addr_7;
-- load_addr[6]
t_prcs_load_addr_6: PROCESS
BEGIN
	load_addr(6) <= '0';
WAIT;
END PROCESS t_prcs_load_addr_6;
-- load_addr[5]
t_prcs_load_addr_5: PROCESS
BEGIN
	load_addr(5) <= '0';
WAIT;
END PROCESS t_prcs_load_addr_5;
-- load_addr[4]
t_prcs_load_addr_4: PROCESS
BEGIN
	load_addr(4) <= '0';
WAIT;
END PROCESS t_prcs_load_addr_4;
-- load_addr[3]
t_prcs_load_addr_3: PROCESS
BEGIN
	load_addr(3) <= '0';
WAIT;
END PROCESS t_prcs_load_addr_3;
-- load_addr[2]
t_prcs_load_addr_2: PROCESS
BEGIN
	load_addr(2) <= '1';
WAIT;
END PROCESS t_prcs_load_addr_2;
-- load_addr[1]
t_prcs_load_addr_1: PROCESS
BEGIN
	load_addr(1) <= '1';
WAIT;
END PROCESS t_prcs_load_addr_1;
-- load_addr[0]
t_prcs_load_addr_0: PROCESS
BEGIN
	load_addr(0) <= '1';
WAIT;
END PROCESS t_prcs_load_addr_0;
END microaddress_counter_arch;
