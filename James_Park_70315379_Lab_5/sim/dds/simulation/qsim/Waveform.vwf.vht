-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- Generated on "06/26/2023 22:31:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          dds
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY dds_vhd_vec_tst IS
END dds_vhd_vec_tst;
ARCHITECTURE dds_arch OF dds_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL actual_sel_mod : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL actual_sel_sig : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dds_increment : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL lfsr_0 : STD_LOGIC;
SIGNAL lfsr_clk : STD_LOGIC;
SIGNAL mod_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL outclk : STD_LOGIC;
SIGNAL sig_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT dds
	PORT (
	actual_sel_mod : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	actual_sel_sig : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	clk : IN STD_LOGIC;
	dds_increment : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	lfsr_0 : IN STD_LOGIC;
	lfsr_clk : IN STD_LOGIC;
	mod_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	outclk : IN STD_LOGIC;
	sig_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : dds
	PORT MAP (
-- list connections between master ports and signals
	actual_sel_mod => actual_sel_mod,
	actual_sel_sig => actual_sel_sig,
	clk => clk,
	dds_increment => dds_increment,
	lfsr_0 => lfsr_0,
	lfsr_clk => lfsr_clk,
	mod_sel => mod_sel,
	outclk => outclk,
	sig_sel => sig_sel
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- outclk
t_prcs_outclk: PROCESS
BEGIN
LOOP
	outclk <= '0';
	WAIT FOR 20000 ps;
	outclk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_outclk;
-- mod_sel[1]
t_prcs_mod_sel_1: PROCESS
BEGIN
	mod_sel(1) <= '0';
WAIT;
END PROCESS t_prcs_mod_sel_1;
-- mod_sel[0]
t_prcs_mod_sel_0: PROCESS
BEGIN
	mod_sel(0) <= '0';
WAIT;
END PROCESS t_prcs_mod_sel_0;
-- sig_sel[1]
t_prcs_sig_sel_1: PROCESS
BEGIN
	sig_sel(1) <= '1';
WAIT;
END PROCESS t_prcs_sig_sel_1;
-- sig_sel[0]
t_prcs_sig_sel_0: PROCESS
BEGIN
	sig_sel(0) <= '1';
WAIT;
END PROCESS t_prcs_sig_sel_0;
END dds_arch;
