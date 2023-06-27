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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Lite Edition"

-- DATE "06/26/2023 22:31:50"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dds IS
    PORT (
	clk : IN std_logic;
	lfsr_clk : IN std_logic;
	outclk : IN std_logic;
	lfsr_0 : IN std_logic;
	dds_increment : IN std_logic_vector(31 DOWNTO 0);
	mod_sel : IN std_logic_vector(1 DOWNTO 0);
	sig_sel : IN std_logic_vector(1 DOWNTO 0);
	actual_sel_mod : OUT std_logic_vector(11 DOWNTO 0);
	actual_sel_sig : OUT std_logic_vector(11 DOWNTO 0)
	);
END dds;

-- Design Ports Information
-- actual_sel_mod[0]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[4]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[6]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[8]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[9]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[10]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_mod[11]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[0]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[1]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[2]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[4]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[7]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[8]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[9]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[10]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- actual_sel_sig[11]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outclk	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mod_sel[0]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mod_sel[1]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_sel[0]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_sel[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[20]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[21]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[22]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[23]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[24]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[25]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[26]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[27]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[28]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[29]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[30]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[31]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lfsr_0	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lfsr_clk	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[19]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[18]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[17]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[16]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[15]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[14]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[13]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[12]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[11]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[10]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[9]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[8]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[6]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[5]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[1]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dds_increment[0]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF dds IS
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
SIGNAL ww_lfsr_clk : std_logic;
SIGNAL ww_outclk : std_logic;
SIGNAL ww_lfsr_0 : std_logic;
SIGNAL ww_dds_increment : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_mod_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sig_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_actual_sel_mod : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_actual_sel_sig : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \outclk~input_o\ : std_logic;
SIGNAL \outclk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \mod_sel[1]~input_o\ : std_logic;
SIGNAL \mod_sel[0]~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \state_mod[0]~feeder_combout\ : std_logic;
SIGNAL \dds_increment[20]~input_o\ : std_logic;
SIGNAL \dds_increment[19]~input_o\ : std_logic;
SIGNAL \dds_increment[18]~input_o\ : std_logic;
SIGNAL \dds_increment[17]~input_o\ : std_logic;
SIGNAL \dds_increment[16]~input_o\ : std_logic;
SIGNAL \dds_increment[15]~input_o\ : std_logic;
SIGNAL \dds_increment[14]~input_o\ : std_logic;
SIGNAL \dds_increment[13]~input_o\ : std_logic;
SIGNAL \dds_increment[12]~input_o\ : std_logic;
SIGNAL \dds_increment[11]~input_o\ : std_logic;
SIGNAL \dds_increment[10]~input_o\ : std_logic;
SIGNAL \dds_increment[9]~input_o\ : std_logic;
SIGNAL \dds_increment[8]~input_o\ : std_logic;
SIGNAL \dds_increment[7]~input_o\ : std_logic;
SIGNAL \dds_increment[6]~input_o\ : std_logic;
SIGNAL \dds_increment[5]~input_o\ : std_logic;
SIGNAL \dds_increment[4]~input_o\ : std_logic;
SIGNAL \dds_increment[3]~input_o\ : std_logic;
SIGNAL \dds_increment[2]~input_o\ : std_logic;
SIGNAL \dds_increment[1]~input_o\ : std_logic;
SIGNAL \dds_increment[0]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~125_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~126\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~121_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~122\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~117_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~118\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~113_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~114\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~109_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~110\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~105_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~106\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~101_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~102\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~97_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~98\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~93_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~94\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~89_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~90\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~85_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~86\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~81_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~82\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~77_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~78\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~73_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~74\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~69_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~70\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~65_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~66\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~61_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~62\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~57_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~58\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~53_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~54\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~49_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~50\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~1_sumout\ : std_logic;
SIGNAL \dds_increment[21]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~2\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~5_sumout\ : std_logic;
SIGNAL \dds_increment[22]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~6\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~9_sumout\ : std_logic;
SIGNAL \dds_increment[23]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~10\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~13_sumout\ : std_logic;
SIGNAL \dds_increment[24]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~14\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~17_sumout\ : std_logic;
SIGNAL \dds_increment[25]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~18\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~21_sumout\ : std_logic;
SIGNAL \dds_increment[26]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~22\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~25_sumout\ : std_logic;
SIGNAL \dds_increment[27]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~26\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~29_sumout\ : std_logic;
SIGNAL \dds_increment[28]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~30\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~33_sumout\ : std_logic;
SIGNAL \dds_increment[29]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~34\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~37_sumout\ : std_logic;
SIGNAL \dds_increment[30]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~38\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~41_sumout\ : std_logic;
SIGNAL \dds_increment[31]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~42\ : std_logic;
SIGNAL \waveform_gen_inst|Add0~45_sumout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \lfsr_clk~input_o\ : std_logic;
SIGNAL \clk_up_lfsr|ff~q\ : std_logic;
SIGNAL \clk_up_lfsr|en~feeder_combout\ : std_logic;
SIGNAL \clk_up_lfsr|en~q\ : std_logic;
SIGNAL \lfsr_0~input_o\ : std_logic;
SIGNAL \clk_up_lfsr|reg1[0]~feeder_combout\ : std_logic;
SIGNAL \clk_up_lfsr|reg3[0]~0_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \reg_mod_out[3]~0_combout\ : std_logic;
SIGNAL \clk_down_modulation|ff~feeder_combout\ : std_logic;
SIGNAL \clk_down_modulation|ff~q\ : std_logic;
SIGNAL \clk_down_modulation|en~feeder_combout\ : std_logic;
SIGNAL \clk_down_modulation|en~q\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \clk_down_modulation|reg3[1]~feeder_combout\ : std_logic;
SIGNAL \clk_down_modulation|outdata[1]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \clk_down_modulation|outdata[5]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \clk_down_modulation|reg1[6]~feeder_combout\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \clk_down_modulation|reg1[7]~feeder_combout\ : std_logic;
SIGNAL \clk_down_modulation|outdata[7]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \clk_down_modulation|reg3[8]~feeder_combout\ : std_logic;
SIGNAL \clk_down_modulation|outdata[8]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \clk_down_modulation|reg3[11]~feeder_combout\ : std_logic;
SIGNAL \clk_down_modulation|outdata[11]~feeder_combout\ : std_logic;
SIGNAL \sig_sel[0]~input_o\ : std_logic;
SIGNAL \sig_sel[1]~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|lut_addr_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \clk_down_signal|reg1[0]~feeder_combout\ : std_logic;
SIGNAL \clk_down_signal|outdata[0]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut_addr_reg[1]~feeder_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \clk_down_signal|reg1[1]~feeder_combout\ : std_logic;
SIGNAL \clk_down_signal|outdata[1]~feeder_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \clk_down_signal|outdata[2]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut_addr_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \clk_down_signal|outdata[3]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut_addr_reg[4]~feeder_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \clk_down_signal|outdata[4]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut_addr_reg[5]~feeder_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \clk_down_signal|outdata[5]~feeder_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \clk_down_signal|reg1[6]~feeder_combout\ : std_logic;
SIGNAL \clk_down_signal|outdata[6]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut_addr_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \clk_down_signal|reg1[8]~feeder_combout\ : std_logic;
SIGNAL \clk_down_signal|outdata[8]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut_addr_reg[9]~feeder_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \clk_down_signal|reg1[9]~feeder_combout\ : std_logic;
SIGNAL \clk_down_signal|reg3[9]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut_addr_reg[10]~feeder_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \clk_down_signal|outdata[10]~feeder_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \clk_down_signal|reg1[11]~feeder_combout\ : std_logic;
SIGNAL \clk_down_signal|outdata[11]~feeder_combout\ : std_logic;
SIGNAL \waveform_gen_inst|lut_addr_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk_down_modulation|reg1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk_down_signal|reg1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk_down_signal|reg3\ : std_logic_vector(11 DOWNTO 0);
SIGNAL reg_mod_out : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk_down_modulation|outdata\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk_down_signal|outdata\ : std_logic_vector(11 DOWNTO 0);
SIGNAL reg_sig_out : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk_down_modulation|reg3\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \waveform_gen_inst|phase_acc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk_up_lfsr|reg3\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk_up_lfsr|reg1\ : std_logic_vector(0 DOWNTO 0);
SIGNAL state_mod : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_dds_increment[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_lfsr_0~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_dds_increment[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_sig_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sig_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_mod_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_mod_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_outclk~input_o\ : std_logic;
SIGNAL \waveform_gen_inst|ALT_INV_phase_acc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \clk_up_lfsr|ALT_INV_ff~q\ : std_logic;
SIGNAL ALT_INV_state_mod : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk_up_lfsr|ALT_INV_reg1\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk_up_lfsr|ALT_INV_en~q\ : std_logic;
SIGNAL \clk_up_lfsr|ALT_INV_reg3\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \waveform_gen_inst|ALT_INV_lut_addr_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\ : std_logic;
SIGNAL ALT_INV_reg_sig_out : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk_down_modulation|ALT_INV_ff~q\ : std_logic;
SIGNAL \clk_down_signal|ALT_INV_reg1\ : std_logic_vector(9 DOWNTO 9);
SIGNAL \clk_down_modulation|ALT_INV_reg1\ : std_logic_vector(11 DOWNTO 1);
SIGNAL \clk_down_signal|ALT_INV_reg3\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk_down_modulation|ALT_INV_reg3\ : std_logic_vector(11 DOWNTO 1);
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ : std_logic;
SIGNAL \ALT_INV_Mult0~19\ : std_logic;
SIGNAL \ALT_INV_Mult0~18\ : std_logic;
SIGNAL \ALT_INV_Mult0~17\ : std_logic;
SIGNAL \ALT_INV_Mult0~16\ : std_logic;
SIGNAL \ALT_INV_Mult0~15\ : std_logic;
SIGNAL \ALT_INV_Mult0~14\ : std_logic;
SIGNAL \ALT_INV_Mult0~13\ : std_logic;
SIGNAL \ALT_INV_Mult0~12\ : std_logic;
SIGNAL \ALT_INV_Mult0~11\ : std_logic;
SIGNAL \ALT_INV_Mult0~10\ : std_logic;
SIGNAL \ALT_INV_Mult0~9\ : std_logic;
SIGNAL \ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a0\ : std_logic;
SIGNAL \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL ALT_INV_reg_mod_out : std_logic_vector(7 DOWNTO 6);

BEGIN

ww_clk <= clk;
ww_lfsr_clk <= lfsr_clk;
ww_outclk <= outclk;
ww_lfsr_0 <= lfsr_0;
ww_dds_increment <= dds_increment;
ww_mod_sel <= mod_sel;
ww_sig_sel <= sig_sel;
actual_sel_mod <= ww_actual_sel_mod;
actual_sel_sig <= ww_actual_sel_sig;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult0~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult0~8_AX_bus\(0) <= \clk_up_lfsr|reg3\(0);

\Mult0~8_AY_bus\ <= (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\ & 
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a6\ & 
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\ & 
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a6\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\waveform_gen_inst|phase_acc\(31) & \waveform_gen_inst|phase_acc\(30) & \waveform_gen_inst|phase_acc\(29) & \waveform_gen_inst|phase_acc\(28) & 
\waveform_gen_inst|phase_acc\(27) & \waveform_gen_inst|phase_acc\(26) & \waveform_gen_inst|phase_acc\(25) & \waveform_gen_inst|phase_acc\(24) & \waveform_gen_inst|phase_acc\(23) & \waveform_gen_inst|phase_acc\(22) & 
\waveform_gen_inst|phase_acc\(21) & \waveform_gen_inst|phase_acc\(20));

\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\ <= \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\ALT_INV_dds_increment[0]~input_o\ <= NOT \dds_increment[0]~input_o\;
\ALT_INV_dds_increment[1]~input_o\ <= NOT \dds_increment[1]~input_o\;
\ALT_INV_dds_increment[2]~input_o\ <= NOT \dds_increment[2]~input_o\;
\ALT_INV_dds_increment[3]~input_o\ <= NOT \dds_increment[3]~input_o\;
\ALT_INV_dds_increment[4]~input_o\ <= NOT \dds_increment[4]~input_o\;
\ALT_INV_dds_increment[5]~input_o\ <= NOT \dds_increment[5]~input_o\;
\ALT_INV_dds_increment[6]~input_o\ <= NOT \dds_increment[6]~input_o\;
\ALT_INV_dds_increment[7]~input_o\ <= NOT \dds_increment[7]~input_o\;
\ALT_INV_dds_increment[8]~input_o\ <= NOT \dds_increment[8]~input_o\;
\ALT_INV_dds_increment[9]~input_o\ <= NOT \dds_increment[9]~input_o\;
\ALT_INV_dds_increment[10]~input_o\ <= NOT \dds_increment[10]~input_o\;
\ALT_INV_dds_increment[11]~input_o\ <= NOT \dds_increment[11]~input_o\;
\ALT_INV_dds_increment[12]~input_o\ <= NOT \dds_increment[12]~input_o\;
\ALT_INV_dds_increment[13]~input_o\ <= NOT \dds_increment[13]~input_o\;
\ALT_INV_dds_increment[14]~input_o\ <= NOT \dds_increment[14]~input_o\;
\ALT_INV_dds_increment[15]~input_o\ <= NOT \dds_increment[15]~input_o\;
\ALT_INV_dds_increment[16]~input_o\ <= NOT \dds_increment[16]~input_o\;
\ALT_INV_dds_increment[17]~input_o\ <= NOT \dds_increment[17]~input_o\;
\ALT_INV_dds_increment[18]~input_o\ <= NOT \dds_increment[18]~input_o\;
\ALT_INV_dds_increment[19]~input_o\ <= NOT \dds_increment[19]~input_o\;
\ALT_INV_lfsr_0~input_o\ <= NOT \lfsr_0~input_o\;
\ALT_INV_dds_increment[31]~input_o\ <= NOT \dds_increment[31]~input_o\;
\ALT_INV_dds_increment[30]~input_o\ <= NOT \dds_increment[30]~input_o\;
\ALT_INV_dds_increment[29]~input_o\ <= NOT \dds_increment[29]~input_o\;
\ALT_INV_dds_increment[28]~input_o\ <= NOT \dds_increment[28]~input_o\;
\ALT_INV_dds_increment[27]~input_o\ <= NOT \dds_increment[27]~input_o\;
\ALT_INV_dds_increment[26]~input_o\ <= NOT \dds_increment[26]~input_o\;
\ALT_INV_dds_increment[25]~input_o\ <= NOT \dds_increment[25]~input_o\;
\ALT_INV_dds_increment[24]~input_o\ <= NOT \dds_increment[24]~input_o\;
\ALT_INV_dds_increment[23]~input_o\ <= NOT \dds_increment[23]~input_o\;
\ALT_INV_dds_increment[22]~input_o\ <= NOT \dds_increment[22]~input_o\;
\ALT_INV_dds_increment[21]~input_o\ <= NOT \dds_increment[21]~input_o\;
\ALT_INV_dds_increment[20]~input_o\ <= NOT \dds_increment[20]~input_o\;
\ALT_INV_sig_sel[1]~input_o\ <= NOT \sig_sel[1]~input_o\;
\ALT_INV_sig_sel[0]~input_o\ <= NOT \sig_sel[0]~input_o\;
\ALT_INV_mod_sel[1]~input_o\ <= NOT \mod_sel[1]~input_o\;
\ALT_INV_mod_sel[0]~input_o\ <= NOT \mod_sel[0]~input_o\;
\ALT_INV_outclk~input_o\ <= NOT \outclk~input_o\;
\waveform_gen_inst|ALT_INV_phase_acc\(0) <= NOT \waveform_gen_inst|phase_acc\(0);
\waveform_gen_inst|ALT_INV_phase_acc\(1) <= NOT \waveform_gen_inst|phase_acc\(1);
\waveform_gen_inst|ALT_INV_phase_acc\(2) <= NOT \waveform_gen_inst|phase_acc\(2);
\waveform_gen_inst|ALT_INV_phase_acc\(3) <= NOT \waveform_gen_inst|phase_acc\(3);
\waveform_gen_inst|ALT_INV_phase_acc\(4) <= NOT \waveform_gen_inst|phase_acc\(4);
\waveform_gen_inst|ALT_INV_phase_acc\(5) <= NOT \waveform_gen_inst|phase_acc\(5);
\waveform_gen_inst|ALT_INV_phase_acc\(6) <= NOT \waveform_gen_inst|phase_acc\(6);
\waveform_gen_inst|ALT_INV_phase_acc\(7) <= NOT \waveform_gen_inst|phase_acc\(7);
\waveform_gen_inst|ALT_INV_phase_acc\(8) <= NOT \waveform_gen_inst|phase_acc\(8);
\waveform_gen_inst|ALT_INV_phase_acc\(9) <= NOT \waveform_gen_inst|phase_acc\(9);
\waveform_gen_inst|ALT_INV_phase_acc\(10) <= NOT \waveform_gen_inst|phase_acc\(10);
\waveform_gen_inst|ALT_INV_phase_acc\(11) <= NOT \waveform_gen_inst|phase_acc\(11);
\waveform_gen_inst|ALT_INV_phase_acc\(12) <= NOT \waveform_gen_inst|phase_acc\(12);
\waveform_gen_inst|ALT_INV_phase_acc\(13) <= NOT \waveform_gen_inst|phase_acc\(13);
\waveform_gen_inst|ALT_INV_phase_acc\(14) <= NOT \waveform_gen_inst|phase_acc\(14);
\waveform_gen_inst|ALT_INV_phase_acc\(15) <= NOT \waveform_gen_inst|phase_acc\(15);
\waveform_gen_inst|ALT_INV_phase_acc\(16) <= NOT \waveform_gen_inst|phase_acc\(16);
\waveform_gen_inst|ALT_INV_phase_acc\(17) <= NOT \waveform_gen_inst|phase_acc\(17);
\waveform_gen_inst|ALT_INV_phase_acc\(18) <= NOT \waveform_gen_inst|phase_acc\(18);
\waveform_gen_inst|ALT_INV_phase_acc\(19) <= NOT \waveform_gen_inst|phase_acc\(19);
\ALT_INV_Decoder0~0_combout\ <= NOT \Decoder0~0_combout\;
\clk_up_lfsr|ALT_INV_ff~q\ <= NOT \clk_up_lfsr|ff~q\;
ALT_INV_state_mod(0) <= NOT state_mod(0);
\clk_up_lfsr|ALT_INV_reg1\(0) <= NOT \clk_up_lfsr|reg1\(0);
\clk_up_lfsr|ALT_INV_en~q\ <= NOT \clk_up_lfsr|en~q\;
\clk_up_lfsr|ALT_INV_reg3\(0) <= NOT \clk_up_lfsr|reg3\(0);
\waveform_gen_inst|ALT_INV_phase_acc\(31) <= NOT \waveform_gen_inst|phase_acc\(31);
\waveform_gen_inst|ALT_INV_phase_acc\(30) <= NOT \waveform_gen_inst|phase_acc\(30);
\waveform_gen_inst|ALT_INV_phase_acc\(29) <= NOT \waveform_gen_inst|phase_acc\(29);
\waveform_gen_inst|ALT_INV_phase_acc\(28) <= NOT \waveform_gen_inst|phase_acc\(28);
\waveform_gen_inst|ALT_INV_phase_acc\(27) <= NOT \waveform_gen_inst|phase_acc\(27);
\waveform_gen_inst|ALT_INV_phase_acc\(26) <= NOT \waveform_gen_inst|phase_acc\(26);
\waveform_gen_inst|ALT_INV_phase_acc\(25) <= NOT \waveform_gen_inst|phase_acc\(25);
\waveform_gen_inst|ALT_INV_phase_acc\(24) <= NOT \waveform_gen_inst|phase_acc\(24);
\waveform_gen_inst|ALT_INV_phase_acc\(23) <= NOT \waveform_gen_inst|phase_acc\(23);
\waveform_gen_inst|ALT_INV_phase_acc\(22) <= NOT \waveform_gen_inst|phase_acc\(22);
\waveform_gen_inst|ALT_INV_phase_acc\(21) <= NOT \waveform_gen_inst|phase_acc\(21);
\waveform_gen_inst|ALT_INV_phase_acc\(20) <= NOT \waveform_gen_inst|phase_acc\(20);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(10) <= NOT \waveform_gen_inst|lut_addr_reg\(10);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(9) <= NOT \waveform_gen_inst|lut_addr_reg\(9);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(8) <= NOT \waveform_gen_inst|lut_addr_reg\(8);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(7) <= NOT \waveform_gen_inst|lut_addr_reg\(7);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(6) <= NOT \waveform_gen_inst|lut_addr_reg\(6);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(5) <= NOT \waveform_gen_inst|lut_addr_reg\(5);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(4) <= NOT \waveform_gen_inst|lut_addr_reg\(4);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(3) <= NOT \waveform_gen_inst|lut_addr_reg\(3);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(2) <= NOT \waveform_gen_inst|lut_addr_reg\(2);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(1) <= NOT \waveform_gen_inst|lut_addr_reg\(1);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(11) <= NOT \waveform_gen_inst|lut_addr_reg\(11);
\waveform_gen_inst|ALT_INV_lut_addr_reg\(0) <= NOT \waveform_gen_inst|lut_addr_reg\(0);
\clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\ <= NOT \clk_up_lfsr|outdata[0]~_Duplicate_1_q\;
ALT_INV_reg_sig_out(11) <= NOT reg_sig_out(11);
ALT_INV_reg_sig_out(9) <= NOT reg_sig_out(9);
ALT_INV_reg_sig_out(8) <= NOT reg_sig_out(8);
ALT_INV_reg_sig_out(6) <= NOT reg_sig_out(6);
ALT_INV_reg_sig_out(1) <= NOT reg_sig_out(1);
ALT_INV_reg_sig_out(0) <= NOT reg_sig_out(0);
\clk_down_modulation|ALT_INV_ff~q\ <= NOT \clk_down_modulation|ff~q\;
\clk_down_signal|ALT_INV_reg1\(9) <= NOT \clk_down_signal|reg1\(9);
\clk_down_modulation|ALT_INV_reg1\(11) <= NOT \clk_down_modulation|reg1\(11);
\clk_down_modulation|ALT_INV_reg1\(8) <= NOT \clk_down_modulation|reg1\(8);
\clk_down_modulation|ALT_INV_reg1\(1) <= NOT \clk_down_modulation|reg1\(1);
\clk_down_signal|ALT_INV_reg3\(11) <= NOT \clk_down_signal|reg3\(11);
\clk_down_signal|ALT_INV_reg3\(10) <= NOT \clk_down_signal|reg3\(10);
\clk_down_signal|ALT_INV_reg3\(8) <= NOT \clk_down_signal|reg3\(8);
\clk_down_signal|ALT_INV_reg3\(6) <= NOT \clk_down_signal|reg3\(6);
\clk_down_signal|ALT_INV_reg3\(5) <= NOT \clk_down_signal|reg3\(5);
\clk_down_signal|ALT_INV_reg3\(4) <= NOT \clk_down_signal|reg3\(4);
\clk_down_signal|ALT_INV_reg3\(3) <= NOT \clk_down_signal|reg3\(3);
\clk_down_signal|ALT_INV_reg3\(2) <= NOT \clk_down_signal|reg3\(2);
\clk_down_signal|ALT_INV_reg3\(1) <= NOT \clk_down_signal|reg3\(1);
\clk_down_signal|ALT_INV_reg3\(0) <= NOT \clk_down_signal|reg3\(0);
\clk_down_modulation|ALT_INV_reg3\(11) <= NOT \clk_down_modulation|reg3\(11);
\clk_down_modulation|ALT_INV_reg3\(8) <= NOT \clk_down_modulation|reg3\(8);
\clk_down_modulation|ALT_INV_reg3\(7) <= NOT \clk_down_modulation|reg3\(7);
\clk_down_modulation|ALT_INV_reg3\(5) <= NOT \clk_down_modulation|reg3\(5);
\clk_down_modulation|ALT_INV_reg3\(1) <= NOT \clk_down_modulation|reg3\(1);
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11~portadataout\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7~portadataout\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a6\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5~portadataout\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2~portadataout\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\;
\ALT_INV_Mult0~19\ <= NOT \Mult0~19\;
\ALT_INV_Mult0~18\ <= NOT \Mult0~18\;
\ALT_INV_Mult0~17\ <= NOT \Mult0~17\;
\ALT_INV_Mult0~16\ <= NOT \Mult0~16\;
\ALT_INV_Mult0~15\ <= NOT \Mult0~15\;
\ALT_INV_Mult0~14\ <= NOT \Mult0~14\;
\ALT_INV_Mult0~13\ <= NOT \Mult0~13\;
\ALT_INV_Mult0~12\ <= NOT \Mult0~12\;
\ALT_INV_Mult0~11\ <= NOT \Mult0~11\;
\ALT_INV_Mult0~10\ <= NOT \Mult0~10\;
\ALT_INV_Mult0~9\ <= NOT \Mult0~9\;
\ALT_INV_Mult0~8_resulta\ <= NOT \Mult0~8_resulta\;
\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a0\ <= NOT \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\;
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\;
ALT_INV_reg_mod_out(7) <= NOT reg_mod_out(7);
ALT_INV_reg_mod_out(6) <= NOT reg_mod_out(6);

-- Location: IOOBUF_X89_Y4_N96
\actual_sel_mod[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(0),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(0));

-- Location: IOOBUF_X89_Y4_N62
\actual_sel_mod[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(1),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(1));

-- Location: IOOBUF_X89_Y20_N45
\actual_sel_mod[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(2),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(2));

-- Location: IOOBUF_X89_Y16_N56
\actual_sel_mod[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(3),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(3));

-- Location: IOOBUF_X89_Y20_N62
\actual_sel_mod[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(4),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(4));

-- Location: IOOBUF_X89_Y20_N96
\actual_sel_mod[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(5),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(5));

-- Location: IOOBUF_X89_Y4_N45
\actual_sel_mod[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(6),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(6));

-- Location: IOOBUF_X89_Y6_N5
\actual_sel_mod[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(7),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(7));

-- Location: IOOBUF_X89_Y16_N5
\actual_sel_mod[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(8),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(8));

-- Location: IOOBUF_X89_Y13_N56
\actual_sel_mod[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(9),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(9));

-- Location: IOOBUF_X89_Y16_N39
\actual_sel_mod[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(10),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(10));

-- Location: IOOBUF_X89_Y20_N79
\actual_sel_mod[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_modulation|outdata\(11),
	devoe => ww_devoe,
	o => ww_actual_sel_mod(11));

-- Location: IOOBUF_X89_Y15_N56
\actual_sel_sig[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(0),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(0));

-- Location: IOOBUF_X89_Y13_N39
\actual_sel_sig[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(1),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(1));

-- Location: IOOBUF_X89_Y15_N39
\actual_sel_sig[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(2),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(2));

-- Location: IOOBUF_X89_Y11_N96
\actual_sel_sig[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(3),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(3));

-- Location: IOOBUF_X89_Y4_N79
\actual_sel_sig[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(4),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(4));

-- Location: IOOBUF_X89_Y11_N62
\actual_sel_sig[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(5),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(5));

-- Location: IOOBUF_X89_Y15_N5
\actual_sel_sig[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(6),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(6));

-- Location: IOOBUF_X89_Y11_N79
\actual_sel_sig[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(7),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(7));

-- Location: IOOBUF_X86_Y0_N36
\actual_sel_sig[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(8),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(8));

-- Location: IOOBUF_X89_Y13_N5
\actual_sel_sig[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(9),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(9));

-- Location: IOOBUF_X89_Y13_N22
\actual_sel_sig[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(10),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(10));

-- Location: IOOBUF_X89_Y15_N22
\actual_sel_sig[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_down_signal|outdata\(11),
	devoe => ww_devoe,
	o => ww_actual_sel_sig(11));

-- Location: IOIBUF_X89_Y23_N4
\outclk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_outclk,
	o => \outclk~input_o\);

-- Location: CLKCTRL_G8
\outclk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \outclk~input_o\,
	outclk => \outclk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y25_N55
\mod_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mod_sel(1),
	o => \mod_sel[1]~input_o\);

-- Location: IOIBUF_X89_Y25_N4
\mod_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mod_sel(0),
	o => \mod_sel[0]~input_o\);

-- Location: LABCELL_X85_Y24_N18
\Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = ( \mod_sel[0]~input_o\ & ( !\mod_sel[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_mod_sel[0]~input_o\,
	dataf => \ALT_INV_mod_sel[1]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: MLABCELL_X84_Y24_N27
\state_mod[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mod[0]~feeder_combout\ = ( \Decoder0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Decoder0~0_combout\,
	combout => \state_mod[0]~feeder_combout\);

-- Location: FF_X84_Y24_N29
\state_mod[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state_mod[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_mod(0));

-- Location: IOIBUF_X74_Y0_N41
\dds_increment[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(20),
	o => \dds_increment[20]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\dds_increment[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(19),
	o => \dds_increment[19]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\dds_increment[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(18),
	o => \dds_increment[18]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\dds_increment[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(17),
	o => \dds_increment[17]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\dds_increment[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(16),
	o => \dds_increment[16]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\dds_increment[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(15),
	o => \dds_increment[15]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\dds_increment[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(14),
	o => \dds_increment[14]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\dds_increment[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(13),
	o => \dds_increment[13]~input_o\);

-- Location: IOIBUF_X80_Y0_N18
\dds_increment[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(12),
	o => \dds_increment[12]~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\dds_increment[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(11),
	o => \dds_increment[11]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\dds_increment[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(10),
	o => \dds_increment[10]~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\dds_increment[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(9),
	o => \dds_increment[9]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\dds_increment[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(8),
	o => \dds_increment[8]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\dds_increment[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(7),
	o => \dds_increment[7]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\dds_increment[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(6),
	o => \dds_increment[6]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\dds_increment[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(5),
	o => \dds_increment[5]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\dds_increment[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(4),
	o => \dds_increment[4]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\dds_increment[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(3),
	o => \dds_increment[3]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\dds_increment[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(2),
	o => \dds_increment[2]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\dds_increment[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(1),
	o => \dds_increment[1]~input_o\);

-- Location: IOIBUF_X78_Y0_N1
\dds_increment[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(0),
	o => \dds_increment[0]~input_o\);

-- Location: MLABCELL_X78_Y21_N0
\waveform_gen_inst|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~125_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(0) ) + ( (state_mod(0) & \dds_increment[0]~input_o\) ) + ( !VCC ))
-- \waveform_gen_inst|Add0~126\ = CARRY(( \waveform_gen_inst|phase_acc\(0) ) + ( (state_mod(0) & \dds_increment[0]~input_o\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[0]~input_o\,
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(0),
	cin => GND,
	sumout => \waveform_gen_inst|Add0~125_sumout\,
	cout => \waveform_gen_inst|Add0~126\);

-- Location: FF_X78_Y21_N2
\waveform_gen_inst|phase_acc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~125_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(0));

-- Location: MLABCELL_X78_Y21_N3
\waveform_gen_inst|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~121_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(1) ) + ( (state_mod(0) & \dds_increment[1]~input_o\) ) + ( \waveform_gen_inst|Add0~126\ ))
-- \waveform_gen_inst|Add0~122\ = CARRY(( \waveform_gen_inst|phase_acc\(1) ) + ( (state_mod(0) & \dds_increment[1]~input_o\) ) + ( \waveform_gen_inst|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[1]~input_o\,
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(1),
	cin => \waveform_gen_inst|Add0~126\,
	sumout => \waveform_gen_inst|Add0~121_sumout\,
	cout => \waveform_gen_inst|Add0~122\);

-- Location: FF_X78_Y21_N5
\waveform_gen_inst|phase_acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(1));

-- Location: MLABCELL_X78_Y21_N6
\waveform_gen_inst|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~117_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(2) ) + ( (state_mod(0) & \dds_increment[2]~input_o\) ) + ( \waveform_gen_inst|Add0~122\ ))
-- \waveform_gen_inst|Add0~118\ = CARRY(( \waveform_gen_inst|phase_acc\(2) ) + ( (state_mod(0) & \dds_increment[2]~input_o\) ) + ( \waveform_gen_inst|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(2),
	dataf => \ALT_INV_dds_increment[2]~input_o\,
	cin => \waveform_gen_inst|Add0~122\,
	sumout => \waveform_gen_inst|Add0~117_sumout\,
	cout => \waveform_gen_inst|Add0~118\);

-- Location: FF_X78_Y21_N7
\waveform_gen_inst|phase_acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(2));

-- Location: MLABCELL_X78_Y21_N9
\waveform_gen_inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~113_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(3) ) + ( (state_mod(0) & \dds_increment[3]~input_o\) ) + ( \waveform_gen_inst|Add0~118\ ))
-- \waveform_gen_inst|Add0~114\ = CARRY(( \waveform_gen_inst|phase_acc\(3) ) + ( (state_mod(0) & \dds_increment[3]~input_o\) ) + ( \waveform_gen_inst|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(3),
	dataf => \ALT_INV_dds_increment[3]~input_o\,
	cin => \waveform_gen_inst|Add0~118\,
	sumout => \waveform_gen_inst|Add0~113_sumout\,
	cout => \waveform_gen_inst|Add0~114\);

-- Location: FF_X78_Y21_N11
\waveform_gen_inst|phase_acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(3));

-- Location: MLABCELL_X78_Y21_N12
\waveform_gen_inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~109_sumout\ = SUM(( (state_mod(0) & \dds_increment[4]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(4) ) + ( \waveform_gen_inst|Add0~114\ ))
-- \waveform_gen_inst|Add0~110\ = CARRY(( (state_mod(0) & \dds_increment[4]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(4) ) + ( \waveform_gen_inst|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[4]~input_o\,
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(4),
	cin => \waveform_gen_inst|Add0~114\,
	sumout => \waveform_gen_inst|Add0~109_sumout\,
	cout => \waveform_gen_inst|Add0~110\);

-- Location: FF_X78_Y21_N14
\waveform_gen_inst|phase_acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(4));

-- Location: MLABCELL_X78_Y21_N15
\waveform_gen_inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~105_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(5) ) + ( (state_mod(0) & \dds_increment[5]~input_o\) ) + ( \waveform_gen_inst|Add0~110\ ))
-- \waveform_gen_inst|Add0~106\ = CARRY(( \waveform_gen_inst|phase_acc\(5) ) + ( (state_mod(0) & \dds_increment[5]~input_o\) ) + ( \waveform_gen_inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(5),
	dataf => \ALT_INV_dds_increment[5]~input_o\,
	cin => \waveform_gen_inst|Add0~110\,
	sumout => \waveform_gen_inst|Add0~105_sumout\,
	cout => \waveform_gen_inst|Add0~106\);

-- Location: FF_X78_Y21_N17
\waveform_gen_inst|phase_acc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(5));

-- Location: MLABCELL_X78_Y21_N18
\waveform_gen_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~101_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(6) ) + ( (state_mod(0) & \dds_increment[6]~input_o\) ) + ( \waveform_gen_inst|Add0~106\ ))
-- \waveform_gen_inst|Add0~102\ = CARRY(( \waveform_gen_inst|phase_acc\(6) ) + ( (state_mod(0) & \dds_increment[6]~input_o\) ) + ( \waveform_gen_inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(6),
	dataf => \ALT_INV_dds_increment[6]~input_o\,
	cin => \waveform_gen_inst|Add0~106\,
	sumout => \waveform_gen_inst|Add0~101_sumout\,
	cout => \waveform_gen_inst|Add0~102\);

-- Location: FF_X78_Y21_N20
\waveform_gen_inst|phase_acc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(6));

-- Location: MLABCELL_X78_Y21_N21
\waveform_gen_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~97_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(7) ) + ( (state_mod(0) & \dds_increment[7]~input_o\) ) + ( \waveform_gen_inst|Add0~102\ ))
-- \waveform_gen_inst|Add0~98\ = CARRY(( \waveform_gen_inst|phase_acc\(7) ) + ( (state_mod(0) & \dds_increment[7]~input_o\) ) + ( \waveform_gen_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[7]~input_o\,
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(7),
	cin => \waveform_gen_inst|Add0~102\,
	sumout => \waveform_gen_inst|Add0~97_sumout\,
	cout => \waveform_gen_inst|Add0~98\);

-- Location: FF_X78_Y21_N23
\waveform_gen_inst|phase_acc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(7));

-- Location: MLABCELL_X78_Y21_N24
\waveform_gen_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~93_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(8) ) + ( (state_mod(0) & \dds_increment[8]~input_o\) ) + ( \waveform_gen_inst|Add0~98\ ))
-- \waveform_gen_inst|Add0~94\ = CARRY(( \waveform_gen_inst|phase_acc\(8) ) + ( (state_mod(0) & \dds_increment[8]~input_o\) ) + ( \waveform_gen_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(8),
	dataf => \ALT_INV_dds_increment[8]~input_o\,
	cin => \waveform_gen_inst|Add0~98\,
	sumout => \waveform_gen_inst|Add0~93_sumout\,
	cout => \waveform_gen_inst|Add0~94\);

-- Location: FF_X78_Y21_N26
\waveform_gen_inst|phase_acc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(8));

-- Location: MLABCELL_X78_Y21_N27
\waveform_gen_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~89_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(9) ) + ( (state_mod(0) & \dds_increment[9]~input_o\) ) + ( \waveform_gen_inst|Add0~94\ ))
-- \waveform_gen_inst|Add0~90\ = CARRY(( \waveform_gen_inst|phase_acc\(9) ) + ( (state_mod(0) & \dds_increment[9]~input_o\) ) + ( \waveform_gen_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(9),
	dataf => \ALT_INV_dds_increment[9]~input_o\,
	cin => \waveform_gen_inst|Add0~94\,
	sumout => \waveform_gen_inst|Add0~89_sumout\,
	cout => \waveform_gen_inst|Add0~90\);

-- Location: FF_X78_Y21_N29
\waveform_gen_inst|phase_acc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(9));

-- Location: MLABCELL_X78_Y21_N30
\waveform_gen_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~85_sumout\ = SUM(( (state_mod(0) & \dds_increment[10]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(10) ) + ( \waveform_gen_inst|Add0~90\ ))
-- \waveform_gen_inst|Add0~86\ = CARRY(( (state_mod(0) & \dds_increment[10]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(10) ) + ( \waveform_gen_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datad => \ALT_INV_dds_increment[10]~input_o\,
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(10),
	cin => \waveform_gen_inst|Add0~90\,
	sumout => \waveform_gen_inst|Add0~85_sumout\,
	cout => \waveform_gen_inst|Add0~86\);

-- Location: FF_X78_Y21_N32
\waveform_gen_inst|phase_acc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(10));

-- Location: MLABCELL_X78_Y21_N33
\waveform_gen_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~81_sumout\ = SUM(( (state_mod(0) & \dds_increment[11]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(11) ) + ( \waveform_gen_inst|Add0~86\ ))
-- \waveform_gen_inst|Add0~82\ = CARRY(( (state_mod(0) & \dds_increment[11]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(11) ) + ( \waveform_gen_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[11]~input_o\,
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(11),
	cin => \waveform_gen_inst|Add0~86\,
	sumout => \waveform_gen_inst|Add0~81_sumout\,
	cout => \waveform_gen_inst|Add0~82\);

-- Location: FF_X78_Y21_N35
\waveform_gen_inst|phase_acc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(11));

-- Location: MLABCELL_X78_Y21_N36
\waveform_gen_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~77_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(12) ) + ( (state_mod(0) & \dds_increment[12]~input_o\) ) + ( \waveform_gen_inst|Add0~82\ ))
-- \waveform_gen_inst|Add0~78\ = CARRY(( \waveform_gen_inst|phase_acc\(12) ) + ( (state_mod(0) & \dds_increment[12]~input_o\) ) + ( \waveform_gen_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[12]~input_o\,
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(12),
	cin => \waveform_gen_inst|Add0~82\,
	sumout => \waveform_gen_inst|Add0~77_sumout\,
	cout => \waveform_gen_inst|Add0~78\);

-- Location: FF_X78_Y21_N38
\waveform_gen_inst|phase_acc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(12));

-- Location: MLABCELL_X78_Y21_N39
\waveform_gen_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~73_sumout\ = SUM(( (state_mod(0) & \dds_increment[13]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(13) ) + ( \waveform_gen_inst|Add0~78\ ))
-- \waveform_gen_inst|Add0~74\ = CARRY(( (state_mod(0) & \dds_increment[13]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(13) ) + ( \waveform_gen_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(13),
	datad => \ALT_INV_dds_increment[13]~input_o\,
	cin => \waveform_gen_inst|Add0~78\,
	sumout => \waveform_gen_inst|Add0~73_sumout\,
	cout => \waveform_gen_inst|Add0~74\);

-- Location: FF_X78_Y21_N41
\waveform_gen_inst|phase_acc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(13));

-- Location: MLABCELL_X78_Y21_N42
\waveform_gen_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~69_sumout\ = SUM(( (state_mod(0) & \dds_increment[14]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(14) ) + ( \waveform_gen_inst|Add0~74\ ))
-- \waveform_gen_inst|Add0~70\ = CARRY(( (state_mod(0) & \dds_increment[14]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(14) ) + ( \waveform_gen_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datad => \ALT_INV_dds_increment[14]~input_o\,
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(14),
	cin => \waveform_gen_inst|Add0~74\,
	sumout => \waveform_gen_inst|Add0~69_sumout\,
	cout => \waveform_gen_inst|Add0~70\);

-- Location: FF_X78_Y21_N44
\waveform_gen_inst|phase_acc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(14));

-- Location: MLABCELL_X78_Y21_N45
\waveform_gen_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~65_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(15) ) + ( (state_mod(0) & \dds_increment[15]~input_o\) ) + ( \waveform_gen_inst|Add0~70\ ))
-- \waveform_gen_inst|Add0~66\ = CARRY(( \waveform_gen_inst|phase_acc\(15) ) + ( (state_mod(0) & \dds_increment[15]~input_o\) ) + ( \waveform_gen_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[15]~input_o\,
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(15),
	cin => \waveform_gen_inst|Add0~70\,
	sumout => \waveform_gen_inst|Add0~65_sumout\,
	cout => \waveform_gen_inst|Add0~66\);

-- Location: FF_X78_Y21_N47
\waveform_gen_inst|phase_acc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(15));

-- Location: MLABCELL_X78_Y21_N48
\waveform_gen_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~61_sumout\ = SUM(( (state_mod(0) & \dds_increment[16]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(16) ) + ( \waveform_gen_inst|Add0~66\ ))
-- \waveform_gen_inst|Add0~62\ = CARRY(( (state_mod(0) & \dds_increment[16]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(16) ) + ( \waveform_gen_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(16),
	datad => \ALT_INV_dds_increment[16]~input_o\,
	cin => \waveform_gen_inst|Add0~66\,
	sumout => \waveform_gen_inst|Add0~61_sumout\,
	cout => \waveform_gen_inst|Add0~62\);

-- Location: FF_X78_Y21_N50
\waveform_gen_inst|phase_acc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(16));

-- Location: MLABCELL_X78_Y21_N51
\waveform_gen_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~57_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(17) ) + ( (state_mod(0) & \dds_increment[17]~input_o\) ) + ( \waveform_gen_inst|Add0~62\ ))
-- \waveform_gen_inst|Add0~58\ = CARRY(( \waveform_gen_inst|phase_acc\(17) ) + ( (state_mod(0) & \dds_increment[17]~input_o\) ) + ( \waveform_gen_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(17),
	dataf => \ALT_INV_dds_increment[17]~input_o\,
	cin => \waveform_gen_inst|Add0~62\,
	sumout => \waveform_gen_inst|Add0~57_sumout\,
	cout => \waveform_gen_inst|Add0~58\);

-- Location: FF_X78_Y21_N52
\waveform_gen_inst|phase_acc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(17));

-- Location: MLABCELL_X78_Y21_N54
\waveform_gen_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~53_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(18) ) + ( (state_mod(0) & \dds_increment[18]~input_o\) ) + ( \waveform_gen_inst|Add0~58\ ))
-- \waveform_gen_inst|Add0~54\ = CARRY(( \waveform_gen_inst|phase_acc\(18) ) + ( (state_mod(0) & \dds_increment[18]~input_o\) ) + ( \waveform_gen_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101110111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datab => \ALT_INV_dds_increment[18]~input_o\,
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(18),
	cin => \waveform_gen_inst|Add0~58\,
	sumout => \waveform_gen_inst|Add0~53_sumout\,
	cout => \waveform_gen_inst|Add0~54\);

-- Location: FF_X78_Y21_N56
\waveform_gen_inst|phase_acc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(18));

-- Location: MLABCELL_X78_Y21_N57
\waveform_gen_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~49_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(19) ) + ( (state_mod(0) & \dds_increment[19]~input_o\) ) + ( \waveform_gen_inst|Add0~54\ ))
-- \waveform_gen_inst|Add0~50\ = CARRY(( \waveform_gen_inst|phase_acc\(19) ) + ( (state_mod(0) & \dds_increment[19]~input_o\) ) + ( \waveform_gen_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(19),
	dataf => \ALT_INV_dds_increment[19]~input_o\,
	cin => \waveform_gen_inst|Add0~54\,
	sumout => \waveform_gen_inst|Add0~49_sumout\,
	cout => \waveform_gen_inst|Add0~50\);

-- Location: FF_X78_Y21_N59
\waveform_gen_inst|phase_acc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(19));

-- Location: MLABCELL_X78_Y20_N0
\waveform_gen_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~1_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(20) ) + ( (state_mod(0) & \dds_increment[20]~input_o\) ) + ( \waveform_gen_inst|Add0~50\ ))
-- \waveform_gen_inst|Add0~2\ = CARRY(( \waveform_gen_inst|phase_acc\(20) ) + ( (state_mod(0) & \dds_increment[20]~input_o\) ) + ( \waveform_gen_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[20]~input_o\,
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(20),
	cin => \waveform_gen_inst|Add0~50\,
	sumout => \waveform_gen_inst|Add0~1_sumout\,
	cout => \waveform_gen_inst|Add0~2\);

-- Location: FF_X78_Y20_N2
\waveform_gen_inst|phase_acc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(20));

-- Location: IOIBUF_X89_Y8_N55
\dds_increment[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(21),
	o => \dds_increment[21]~input_o\);

-- Location: MLABCELL_X78_Y20_N3
\waveform_gen_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~5_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(21) ) + ( (state_mod(0) & \dds_increment[21]~input_o\) ) + ( \waveform_gen_inst|Add0~2\ ))
-- \waveform_gen_inst|Add0~6\ = CARRY(( \waveform_gen_inst|phase_acc\(21) ) + ( (state_mod(0) & \dds_increment[21]~input_o\) ) + ( \waveform_gen_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[21]~input_o\,
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(21),
	cin => \waveform_gen_inst|Add0~2\,
	sumout => \waveform_gen_inst|Add0~5_sumout\,
	cout => \waveform_gen_inst|Add0~6\);

-- Location: FF_X78_Y20_N5
\waveform_gen_inst|phase_acc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(21));

-- Location: IOIBUF_X76_Y0_N1
\dds_increment[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(22),
	o => \dds_increment[22]~input_o\);

-- Location: MLABCELL_X78_Y20_N6
\waveform_gen_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~9_sumout\ = SUM(( (state_mod(0) & \dds_increment[22]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(22) ) + ( \waveform_gen_inst|Add0~6\ ))
-- \waveform_gen_inst|Add0~10\ = CARRY(( (state_mod(0) & \dds_increment[22]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(22) ) + ( \waveform_gen_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[22]~input_o\,
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(22),
	cin => \waveform_gen_inst|Add0~6\,
	sumout => \waveform_gen_inst|Add0~9_sumout\,
	cout => \waveform_gen_inst|Add0~10\);

-- Location: FF_X78_Y20_N8
\waveform_gen_inst|phase_acc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(22));

-- Location: IOIBUF_X76_Y0_N52
\dds_increment[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(23),
	o => \dds_increment[23]~input_o\);

-- Location: MLABCELL_X78_Y20_N9
\waveform_gen_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~13_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(23) ) + ( (state_mod(0) & \dds_increment[23]~input_o\) ) + ( \waveform_gen_inst|Add0~10\ ))
-- \waveform_gen_inst|Add0~14\ = CARRY(( \waveform_gen_inst|phase_acc\(23) ) + ( (state_mod(0) & \dds_increment[23]~input_o\) ) + ( \waveform_gen_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(23),
	dataf => \ALT_INV_dds_increment[23]~input_o\,
	cin => \waveform_gen_inst|Add0~10\,
	sumout => \waveform_gen_inst|Add0~13_sumout\,
	cout => \waveform_gen_inst|Add0~14\);

-- Location: FF_X78_Y20_N11
\waveform_gen_inst|phase_acc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(23));

-- Location: IOIBUF_X78_Y0_N52
\dds_increment[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(24),
	o => \dds_increment[24]~input_o\);

-- Location: MLABCELL_X78_Y20_N12
\waveform_gen_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~17_sumout\ = SUM(( (state_mod(0) & \dds_increment[24]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(24) ) + ( \waveform_gen_inst|Add0~14\ ))
-- \waveform_gen_inst|Add0~18\ = CARRY(( (state_mod(0) & \dds_increment[24]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(24) ) + ( \waveform_gen_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[24]~input_o\,
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(24),
	cin => \waveform_gen_inst|Add0~14\,
	sumout => \waveform_gen_inst|Add0~17_sumout\,
	cout => \waveform_gen_inst|Add0~18\);

-- Location: FF_X78_Y20_N14
\waveform_gen_inst|phase_acc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(24));

-- Location: IOIBUF_X89_Y8_N38
\dds_increment[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(25),
	o => \dds_increment[25]~input_o\);

-- Location: MLABCELL_X78_Y20_N15
\waveform_gen_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~21_sumout\ = SUM(( (state_mod(0) & \dds_increment[25]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(25) ) + ( \waveform_gen_inst|Add0~18\ ))
-- \waveform_gen_inst|Add0~22\ = CARRY(( (state_mod(0) & \dds_increment[25]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(25) ) + ( \waveform_gen_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(25),
	datad => \ALT_INV_dds_increment[25]~input_o\,
	cin => \waveform_gen_inst|Add0~18\,
	sumout => \waveform_gen_inst|Add0~21_sumout\,
	cout => \waveform_gen_inst|Add0~22\);

-- Location: FF_X78_Y20_N17
\waveform_gen_inst|phase_acc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(25));

-- Location: IOIBUF_X80_Y0_N35
\dds_increment[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(26),
	o => \dds_increment[26]~input_o\);

-- Location: MLABCELL_X78_Y20_N18
\waveform_gen_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~25_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(26) ) + ( (state_mod(0) & \dds_increment[26]~input_o\) ) + ( \waveform_gen_inst|Add0~22\ ))
-- \waveform_gen_inst|Add0~26\ = CARRY(( \waveform_gen_inst|phase_acc\(26) ) + ( (state_mod(0) & \dds_increment[26]~input_o\) ) + ( \waveform_gen_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(26),
	dataf => \ALT_INV_dds_increment[26]~input_o\,
	cin => \waveform_gen_inst|Add0~22\,
	sumout => \waveform_gen_inst|Add0~25_sumout\,
	cout => \waveform_gen_inst|Add0~26\);

-- Location: FF_X78_Y20_N20
\waveform_gen_inst|phase_acc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(26));

-- Location: IOIBUF_X89_Y8_N21
\dds_increment[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(27),
	o => \dds_increment[27]~input_o\);

-- Location: MLABCELL_X78_Y20_N21
\waveform_gen_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~29_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(27) ) + ( (state_mod(0) & \dds_increment[27]~input_o\) ) + ( \waveform_gen_inst|Add0~26\ ))
-- \waveform_gen_inst|Add0~30\ = CARRY(( \waveform_gen_inst|phase_acc\(27) ) + ( (state_mod(0) & \dds_increment[27]~input_o\) ) + ( \waveform_gen_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(27),
	dataf => \ALT_INV_dds_increment[27]~input_o\,
	cin => \waveform_gen_inst|Add0~26\,
	sumout => \waveform_gen_inst|Add0~29_sumout\,
	cout => \waveform_gen_inst|Add0~30\);

-- Location: FF_X78_Y20_N23
\waveform_gen_inst|phase_acc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(27));

-- Location: IOIBUF_X89_Y6_N21
\dds_increment[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(28),
	o => \dds_increment[28]~input_o\);

-- Location: MLABCELL_X78_Y20_N24
\waveform_gen_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~33_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(28) ) + ( (!state_mod(0)) # (\dds_increment[28]~input_o\) ) + ( \waveform_gen_inst|Add0~30\ ))
-- \waveform_gen_inst|Add0~34\ = CARRY(( \waveform_gen_inst|phase_acc\(28) ) + ( (!state_mod(0)) # (\dds_increment[28]~input_o\) ) + ( \waveform_gen_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \waveform_gen_inst|ALT_INV_phase_acc\(28),
	dataf => \ALT_INV_dds_increment[28]~input_o\,
	cin => \waveform_gen_inst|Add0~30\,
	sumout => \waveform_gen_inst|Add0~33_sumout\,
	cout => \waveform_gen_inst|Add0~34\);

-- Location: FF_X78_Y20_N26
\waveform_gen_inst|phase_acc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(28));

-- Location: IOIBUF_X76_Y0_N35
\dds_increment[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(29),
	o => \dds_increment[29]~input_o\);

-- Location: MLABCELL_X78_Y20_N27
\waveform_gen_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~37_sumout\ = SUM(( \waveform_gen_inst|phase_acc\(29) ) + ( (state_mod(0) & \dds_increment[29]~input_o\) ) + ( \waveform_gen_inst|Add0~34\ ))
-- \waveform_gen_inst|Add0~38\ = CARRY(( \waveform_gen_inst|phase_acc\(29) ) + ( (state_mod(0) & \dds_increment[29]~input_o\) ) + ( \waveform_gen_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datad => \waveform_gen_inst|ALT_INV_phase_acc\(29),
	dataf => \ALT_INV_dds_increment[29]~input_o\,
	cin => \waveform_gen_inst|Add0~34\,
	sumout => \waveform_gen_inst|Add0~37_sumout\,
	cout => \waveform_gen_inst|Add0~38\);

-- Location: FF_X78_Y20_N29
\waveform_gen_inst|phase_acc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(29));

-- Location: IOIBUF_X89_Y16_N21
\dds_increment[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(30),
	o => \dds_increment[30]~input_o\);

-- Location: MLABCELL_X78_Y20_N30
\waveform_gen_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~41_sumout\ = SUM(( (state_mod(0) & \dds_increment[30]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(30) ) + ( \waveform_gen_inst|Add0~38\ ))
-- \waveform_gen_inst|Add0~42\ = CARRY(( (state_mod(0) & \dds_increment[30]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(30) ) + ( \waveform_gen_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[30]~input_o\,
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(30),
	cin => \waveform_gen_inst|Add0~38\,
	sumout => \waveform_gen_inst|Add0~41_sumout\,
	cout => \waveform_gen_inst|Add0~42\);

-- Location: FF_X78_Y20_N32
\waveform_gen_inst|phase_acc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(30));

-- Location: IOIBUF_X76_Y0_N18
\dds_increment[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dds_increment(31),
	o => \dds_increment[31]~input_o\);

-- Location: MLABCELL_X78_Y20_N33
\waveform_gen_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|Add0~45_sumout\ = SUM(( (state_mod(0) & \dds_increment[31]~input_o\) ) + ( \waveform_gen_inst|phase_acc\(31) ) + ( \waveform_gen_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_mod(0),
	datac => \ALT_INV_dds_increment[31]~input_o\,
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(31),
	cin => \waveform_gen_inst|Add0~42\,
	sumout => \waveform_gen_inst|Add0~45_sumout\);

-- Location: FF_X78_Y20_N35
\waveform_gen_inst|phase_acc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|phase_acc\(31));

-- Location: M10K_X69_Y26_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "DF777DD8A2225DDD2225DC8B7621DC87723D8DCA72368D8DA723658D8DA6367249CD9CDB663267326D99CCD999CCCC9999998CCCCCCCCC99933336666999CCC3326798CD32618C92638CB670C9630DA70D872DA709E3D8749709F297097087DA1D78A5D682DF5E0A0F5F5F0A0A0A0282A0A0280A82A17F57F02A95FF02BD56AB55AAF503FEA5503FABFA1505405014150501414143EBEBC141EBED05AE947AE16F843A43A53E43A4B86F1E4396D386C396C31A4C39B4C71924C61932CC6799330CCE665999B3332664CCCCCCCCC6666664CCCE666CCE66D93399319B6CE6CE4939B196C6C69B1396C6C5B1394EC6F13B84EE11BB44EE9112EEE911146EFBBBEE",
	mem_init2 => "EFBBBEE45111AEEE111AEC47B912EC4BB13E4EC5B1394E4E5B139A4E4E5939B186CE6CE799319B319E66CCE666CCCC6666664CCCCCCCCC66633339999666CCC3319B64CE31924C61934C79B0C6930E5B0E4B1E5B06D3E4B86B06F16B06B04BE52EB45AE941EFAD050FAFAF0505050141505014054152BFABF0156AFF017EA957AA55FA03FD5AA03F57F52A0A80A0282A0A02828283D7D7C282D7DE0A5D68B5D29F4835835A3D8358749F2D8369E349C369C3258C3678CB2618C92631CC9B66330CCD99A66673331998CCCCCCCCC9999998CCCD999CCD99E6336632679CD9CD86367269C9C9672369C9CA72368DC9F23748DD227788DD6221DDD622289DF777DD",
	mem_init1 => "DF777DD8A2225DDD2225DC8B7621DC87723D8DCA72368D8DA723658D8DA6367249CD9CDB663267326D99CCD999CCCC9999998CCCCCCCCC99933336666999CCC3326798CD32618C92638CB670C9630DA70D872DA709E3D8749709F297097087DA1D78A5D682DF5E0A0F5F5F0A0A0A0282A0A0280A82A17F57F02A95FF02BD56AB55AAF503FEA5503FABFA1505405014150501414143EBEBC141EBED05AE947AE16F843A43A53E43A4B86F1E4396D386C396C31A4C39B4C71924C61932CC6799330CCE665999B3332664CCCCCCCCC6666664CCCE666CCE66D93399319B6CE6CE4939B196C6C69B1396C6C5B1394EC6F13B84EE11BB44EE9112EEE911146EFBBBEE",
	mem_init0 => "EFBBBEE45111AEEE111AEC47B912EC4BB13E4EC5B1394E4E5B139A4E4E5939B186CE6CE799319B319E66CCE666CCCC6666664CCCCCCCCC66633339999666CCC3319B64CE31924C61934C79B0C6930E5B0E4B1E5B06D3E4B86B06F16B06B04BE52EB45AE941EFAD050FAFAF0505050141505014054152BFABF0156AFF017EA957AA55FA03FD5AA03F57F52A0A80A0282A0A02828283D7D7C282D7DE0A5D68B5D29F4835835A3D8358749F2D8369E349C369C3258C3678CB2618C92631CC9B66330CCD99A66673331998CCCCCCCCC9999998CCCD999CCD99E6336632679CD9CD86367269C9C9672369C9CA72368DC9F23748DD227788DD6221DDD622289DF777DD",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X89_Y21_N21
\lfsr_clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lfsr_clk,
	o => \lfsr_clk~input_o\);

-- Location: FF_X87_Y21_N26
\clk_up_lfsr|ff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \lfsr_clk~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_up_lfsr|ff~q\);

-- Location: MLABCELL_X87_Y21_N27
\clk_up_lfsr|en~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_up_lfsr|en~feeder_combout\ = \clk_up_lfsr|ff~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_up_lfsr|ALT_INV_ff~q\,
	combout => \clk_up_lfsr|en~feeder_combout\);

-- Location: FF_X87_Y21_N28
\clk_up_lfsr|en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \clk_up_lfsr|en~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_up_lfsr|en~q\);

-- Location: IOIBUF_X89_Y21_N38
\lfsr_0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lfsr_0,
	o => \lfsr_0~input_o\);

-- Location: LABCELL_X88_Y21_N42
\clk_up_lfsr|reg1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_up_lfsr|reg1[0]~feeder_combout\ = ( \lfsr_0~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_lfsr_0~input_o\,
	combout => \clk_up_lfsr|reg1[0]~feeder_combout\);

-- Location: FF_X88_Y21_N44
\clk_up_lfsr|reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lfsr_clk~input_o\,
	d => \clk_up_lfsr|reg1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_up_lfsr|reg1\(0));

-- Location: LABCELL_X88_Y21_N12
\clk_up_lfsr|reg3[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_up_lfsr|reg3[0]~0_combout\ = ( \clk_up_lfsr|reg3\(0) & ( \clk_up_lfsr|reg1\(0) ) ) # ( !\clk_up_lfsr|reg3\(0) & ( \clk_up_lfsr|reg1\(0) & ( \clk_up_lfsr|en~q\ ) ) ) # ( \clk_up_lfsr|reg3\(0) & ( !\clk_up_lfsr|reg1\(0) & ( !\clk_up_lfsr|en~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_up_lfsr|ALT_INV_en~q\,
	datae => \clk_up_lfsr|ALT_INV_reg3\(0),
	dataf => \clk_up_lfsr|ALT_INV_reg1\(0),
	combout => \clk_up_lfsr|reg3[0]~0_combout\);

-- Location: FF_X88_Y21_N14
\clk_up_lfsr|reg3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_up_lfsr|reg3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_up_lfsr|reg3\(0));

-- Location: M10K_X76_Y22_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "7F5F57D7F5F5A8280A0FD7D4A0A17D7A0A17D280F5E02D780F5E0FD287F0B5A0FC2D687E0F4A5A1F07C3D2D6968787C3C3C3D2D2D2D2D2C3CB4B4F0F0C3C7871E1A496D34B0C3861A492CF1C79A493CE3964B3CE3924C31864939E64931C64C339B6CC659B39926CC66CC63993399B31993319933198E664CCE673999B2664CD99336665999CCCF33266733666332673366732673267324D98CD9E633659CC92631CD9673CD9673CDB638C3259E71CB259E78C34DA79E38F3CB6DA79E1C30F2D34B6969A5A78786969E1E1E1E1E969696B4B4BC3C1E1695AD2F07A5A94BC1EB52F05A943E95AF856BC15AF854BE9507AFE1405AFEB415052BEBFAFABC1505014",
	mem_init2 => "1505014BFAFAFEBE050543EAF85016BFA501EBC05AF814BE05AF85EB41F852F07E94BC1F87A52F0F81E1694B4BC3C3E1E1E1E969696969E1E5A5A7878E1E3C30F2D24969A78E3CB2DA69E78C34DA69C73C9279C7349A638CB261CDB2618C92631CD9C632679CC99CC33663366336673266332663326673326CD999CC673330CCCC333398CE666CD933399933199331993399B319B319B30CE64CE799318E6CE31924C61936CE1934C71964B38E7924F38E596CB0C79E596D34F1C7965A492D3C30F1E1C78796969E1E5A5A5A5A5E1E1E1F0F0F4B4A5A1E07C3D29787E0F4A5F83D287E0B5E87D681F4A07D680F5E0297F5A0287D5F0A8281F5FD7D7F4A0282A0",
	mem_init1 => "A0282A0F57D7F5F5282A0B5FD680A1FD782A5F4A87D6A0F5A87D6A5F0A5683D2B5E0F4A569783D2D6A5A1E0F0F4B4B5A5A5A5E1E1E1E1E5A5878796965A5B4B2D3C30E1E796DB4F3C71E796CB0C79E6934E39E6930C71B6CF39A6CF39A6CE31924CE69B319E6CC66C9339933993399B339933199B33999333CCCE666999B3266CC99936667399CCC999C66332663326633667326718CD98CD926736698CDB6730C98E32499E72498630C9271CF349A71CF249678E3CD24961870C34B2DA4961E3878F0C3C3CB4B4F0D2D2D2D2D2F0F0F0F8785A5AD2F0F83E1694BC1F85AD0FC16B43F852FC1EBC07AD01EBC052FA1417AFA1414AFAFC1405056BEBFAFABEBFA",
	mem_init0 => "FABEBFAFABEB5050141FAFAD4142FAF4143FA505EBC15AF05EBC1FA50FA16B41F85AD0F81E94B43E1F87A5AD2D0F0F878787A5A5A5A5A58786969E1E1878F0F3C3492DA7961C70D349259E3CF249679C32D9679C32498734D9673CD9673CD986326D9CDB26736499CC99CC3366336673366332667334CC999CCCF333664D999B6666C99B333CCCE664CCB339993319B3399B319B30CE64CE649B39936CE6D931866CF39A6CF39A6CB3864930E79A6D30E79A493CF1E6924B2C38E1A796D24B0F3C3C7861E1E5A587869696969697878787C3C2D2D69787E1F0B4A5E07C2D687E0B5A17C297E0F5E83D6A0F5E8297F0A0BD7D0A0AD7D7E0A0282B5F57D7F5F57D",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M10K_X76_Y25_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "DD77DDF77DD775DF77D8A2088229DF77DD6208A27DD7708A27DD7208A77DC228DF708A77D822DD628DF608F748A758A35CA35DA25DA25DA35C23D827DA358A7C8378B709768F60D62DE258358B78B60D61D23CA7CB78F69F2DE34878B69F2DA3CB68F0D21C34B78F0D25A7CB4961E3C34B6961E3C34B2D2DA587961E1C3878F1E1C387861E1A5A69692D3C3878696D3C3879692C3C79690E1E5B4F8692E1A5BC794F1ED3C5B4796F1ED3E53C4B06B0E91E53E53A4B94F94E90ED1EC1AE53E43BC5B847B44B946B847B04FB04FB047B847BA45BAC51AED11EE9146BB445BAE5116EBB4453AEE11447BAEE11445BAEEB94451044BBAEFBBEE91044114451144110",
	mem_init2 => "4411445114411045BBEEFBAEE91445114EBBAED11443BAEF11443BAE5116EBB4453AED116EB144BBC45BAC51AED12EF10EF106F906F906F10EB14E916F10ED1EE13E53AC1BC5B84B94F90E92E53E5384B86B16D1E53E5BC7B4F12C1E5BC794F1ED3C7A4B0E92D3C784B0F1E5A4B0F1E1A5B4B0F1E1A5B4B4F2C3C3870E1E1C7878E1E1C3870F0D3CB4B6961E3C34B6961E3C34969E3C34878F2D25C34978F2DE3CA78F69E0D23CB78F69F29E2DA358748729F29D25C27CA748768F60D729F21DE2DC23DA25CA35C23D827D827D823DC23DD22DD628D7688F748A35DA22DD7288B75DA229D7708A23DD7708A22DD775CA2288A25DD77DDF76882208A2288A2088",
	mem_init1 => "2208A2288A2088225DF77DD774882288A75DD7688A21DD7788A21DD7288B75DA229D7688B758A25DE22DD628D76897788778837C837C83788758A748B788768F709F29D60DE2DC25CA7CA749729F29E25C358348F29F2DE3DA78B68F2DE3CA78F6961D2587CB69E1C25A78F0D25A7870F2DA587870F2D25A596961E187870E1E3C7870E1E1A78696D2D34B0F1E1A5B4B0F1E1A4B4F9692C3C7B4B0E12C3C5B4F16D3E5B4784B1ED3E5BC7B4F94F12E1AC1B47B46B0691ED1AC1BC5BA43B47B04F946B16F906F10EB16E916E916EB14EB146B944BBC41BEC51AED106FB9443BEC510EFB94413AEF91443BAEF914411AEFBBEE510441146FBBEEBBAEFBBEEFBAEE",
	mem_init0 => "BBAEFBBEEFBAEEBBAEF114411046BBEEFB844114EFBAE4114EFBA4411EEF9045BBE411EEF104FB845BBC41BEC11EE116E916EB14EB14EB16E906F10EF16E11ED12E53E43AC5BC4B84F94F12E13E53C5B86B0690ED3E5BC7B4F96D1E53C7B4F16D3C1A4B0696D3E5A4B0F1ED2C3879692D3C7869692D34B0F0E1E38786961A5A796961A587871E1C3C34B2D25A5878F2D25A7870D2DE3C34969F2DA5834960F2DA3CB78F29E2DA7CB78F69F2DC258358768F29F21D23CA7C8748F68D709F29D22DE21DA3DC23D825DA35CA35CA35DA25DA21DE20DF608F768877C823DDE209F768827DDE208977DCA209D77DCA208877DDF75882208A23DD775DD77DDF77DD775",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M10K_X69_Y24_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "F57D5F57D5FD7F5FD7F5FD5F57D4A0280A82A0A87F57D5F5780A82A0AD7F57D5A02A0AD7F57D0A82A5FD5F02A0AD5F56A0A95F57A0A85F56A0295FD2A03F5F80A97F42A17D5A80FD7A02F56A0BD5E80FD4A83F52A17F02B57A03F52A17E02F56A17F00FD4A95E80FF02F52A15E81FC03F42BD4A956A17A85FA07E81FE03F80FE01FC07F81FE05F817E856A952AD42FC03F817E856AD42BF01FA15AAD42FE05EAD40FE056AF407E854AFC056AF407EA541FA9503FA140FEA540FAB501FAFC056BFA1507EAF4152BFAD405ABFA54052BFAD4050BFAFE05014AFEBF814050BFAFEBD0140503FAFEBFAD405014050BFAFEBFAFEAFA14050140541505415054150140",
	mem_init2 => "50140501405415054150540503EAFABEAFEBFAD415014050BEAFEBFA5415014AFABFAD41501EAFEBD05407ABFAD4050BFAF40503FAFC050BFAB4056BFA1507EAF415ABF8142FE8543FA9503FA540FE8542FE152BF015ABD01FA152BF017A950BF817AA54AFC07E857AB50BF00FE05EA15AB54AF40BF01FE05F817E85FA15E857A85EA17E85FA07E81FE03F40BD4AB56A15E81FC03F42B57A85F80FD4A957A07F42A57A03F52A17E02F56A03F52A1FD0A85FC0A97F02A57F0A85FD0A07F56A0BD5F82A17F5A80B57F4280FD7F0280BD7F4280AD7F5780A82F5FD5E02A0AD7F57D4A02A0A97F5FD5F4280A02A0AD7F5FD5F57D5F0280A82A0A82A0A80A0280A028",
	mem_init1 => "0A02A0A82A0A82A0A80A0280A17D5FD7F5FD7F4280A0280AD7F5FD7F0280A02F5FD7F4280A07F5FD4A0281FD7F4280AD7F5280A97F5680AD7F52A0BD5F82A17F5A80FD7E02B57C0A95FC0A17F02A57E0A95F80BD5A80FD4A85F80BD5A81FC0AD5E81FD0AD56A17E03F50AD5A85FA07F00FD0AD52A55A85FA07E81FE07F80FE01FC07F01FE05F817E857A15AA54AF50BF00FE05EA152BD03FC05EA54AFC03FA15ABD01FA152BF017AB503FA152BF054AFC05EAF415ABD017AFC056AFA150BFA5407EBF0152FEA5015ABE85417ABEA5415ABEAD41503EAFE950542FABFAD415016AFABFAD41505407ABEAFABF8541505405014AFABEAFEBFAFEBFAFEAFABEAFABE",
	mem_init0 => "AFABFAFEBFAFEBFAFEAFABEAFABC054150541501EAFABEAFE15054150BEAFABF054150BEAFAB50540FABEA54150BEAFC1503EAFE1501EAFC1503FAF4056BFA1507EAD417ABF014AFE054AF8152BF815AFC056AF407EA542FE056AF407E854AFC07EA54AFC03F815AB50AF407E857A952AD42FC03F807E05FA15E857A956A55A856A95AA57A85EA17E81F807F00FD0AD52A57A85F80BD42B56A07F00FD4A95F80FD4A85F80BD5A81FD0A95F80BD5A80FD6A07F52A07D4A81FD4A03F57A0AD5F82A17F5A80BD7F02A0FD5E02A1FD5F02A0FD5F42A0A95F57C0A82B57D5F42A0A83F57D5F42A0A82A1FD5F57D5E02A0A82A0A80F57D5F57D5FD7F5FD7F5FD7F57D5",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M10K_X76_Y26_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFD55FFD55FFD55FFD55FFF557FF557FF557FF552AA800AA800AA800AFD557FF557FF502AA800AA805FFF557FF500AA800ABF557FF550AA8002BF557FFC00AAA017FFD542AA000FFD557AA800BFF555AAA003FFD542AA8157FFC002ABD557AA8017FFF000ABF555AAA8557FEA001FFFC002BFF5402ABD550AAAD554AAA9555AAAB5552AAB5550AABD5502ABFD5002FFFC0017FFA80557EAAB5540AAFFD0005FFAAA55502AFFF80055FAAAFD50007FFAAB554003FFEAA555000FFEAAB5500057EAABFF80055402BFFAAAF540055502BFFAAAFF4005550015FAABFFEAAFF40055400155003FFAABFFAAAFFEAAFF400554005550015500155001550015500155400",
	mem_init2 => "554005540055400554005550015500155001552ABFFEAAFFEAAFFEAA55400155001552ABFFEAAFFE80555001552AAFFEAAF550015502AFFEAAB5500155EAAFFFA0155402BFFAA8554003FFEAA555002FFFAA15540ABFFE80155EAABF54003FFEA81555AAAFD5002FFFE0015FFAA0555EAAB5550AABF5400AFFD4002FFF4002FFFD000BFFD000AFFD400ABF5542AAB555EAA8157FEA001FFFD002AFD556AAA055FFF000ABF555EAA005FFF540AAA157FFD002AA955FFF000AA8557FF500AAA017FFD55EAA002AB555FFD502AA002ABD55FFD552AA002AA805FFD55FFF552AA002AA000AA955FFD55FFD55FFF552AA002AA002AA002AA800AA800AA800AA800AA8",
	mem_init1 => "00AAA002AA002AA002AA002AA002AA800AA800BFD55FFD557FF557FF002AA000AA800BFD55FFF557EA002AA800BFD557FF502AA800ABD557FF500AA8007FF555FA8002AB555FFC002AA955FFF000AAB557FF8002AFD557EA8007FFD502AA9557FE8002FFD540AAB555FAA8057FFA000FFFD002AFF5502AAF5542AAB5552AAB5556AAA5554AAAD5542AAF5500ABFF5000FFFE0015FFAA85556AABF54003FFFA00557AAAF55000FFFAA05550AAFFF001556AABFF400557AAAFFC001550AAFFFA0155400FFFAABF50005542ABFFAABF540055402BFFAABFFE805540055502BFFAABFFAAAFD40055400554005552ABFFAABFFAABFFAABFFEAAFFEAAFFEAAFFEAAFFE",
	mem_init0 => "AAFFFAABFFAABFFAABFFAABFFAABFFEAAFFEAAFF40055400155001550ABFFAAAFFEAAF54005550015FAABFFEAAF540015502BFFEAAFF40015502AFFEAA95500057EAABFD000554AABFFE005552AAFFF001556AABFD40017FEAA955402BFFE00157EAAB55402AFFF0005FFEA81557AAAD5542ABFD5002BFF5000BFFD0003FFF0003FFF0002FFF4002BFF5002AFF550AAAD557AAA055FFE8003FFD500AAB555FAA001FFF500AAA555FFA000AFF555AAA003FFD552AA801FFF554AA8002FF555FA8002AA555FFD502AA000BFD55FFF502AA000ABD55FFF557EA002AA800ABD55FFD557FF542AA002AA000AA800BFD55FFD55FFF557FF557FF557FF557FF557FFD55",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M10K_X76_Y23_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFFFF55555FFFFF55555FFFFFD55557FFFFD55557FFFFF55555FFFFF500002AAAA800002AAAAA00005FFFFFD55555FFFFF540002AAAAA000002BFFFD55555FFFFE8000002AAAAA555557FFFFF400000AAAAA9555557FFFEA8000002ABFFFD555542AAAAAA015555FFFFAA8000001FFFFFFD4000002ABFFFF5550000AAABFFF55540002AABFFFF55400002ABFFFFFD00000017FFFFFAA800015555FFAAAAAAF5555500002AFFFFFFAA00005555552AAAABFFFFFC00000555555AAAAABFFFFFA800015555500002BFFFFFAAAAAFFFFD400000555550000015FFFEAAAAAFFFFFAAAAABFFFFC00001555550000055555000005555540000155554000015555400000",
	mem_init2 => "55555000005555500000555554000015555400001555550000055555AAAAABFFFFEAAAABFFFFFAAA8055555400000555550AAAABFFFFFAAAAAB55554000005555FEAAAAABFFFFD00000155555AAAAAAFFFFF40000015557FEAAAAABF5555400002BFFFFFFA800005555FFEAAAAA05555554AAAAAABF55555002AAAAFFF55550002AAABFFD5555002AAAABF5555554AAAAAA8155555FFEAAA8000057FFFFFF500000AAAABF555555FFAAAA000000BFFFFD555556AAAAA000002FFFFF555555FEAAA800000AAAAB555557FFFFF555542AAAA800000AAAAA805557FFFFF55555FFFFF555556AAAA800002AAAAA00000AAAAA00000AAAAA800002AAAA800002AAAA8",
	mem_init1 => "00000AAAAA00000AAAAA00000AAAAA800002AAAA800002AAAAA00000FFFFF555557FFFFD55555FFFEA000002AAAA800000AFFFFD55557FFFFF500002AAAAA000057FFFFF555556AAAAA800000FFFFFF555552AAAAA8000157FFFFFD500002AAAABD555557FEAAAA0000557FFFFFA0000002FFFFFF5500000AABFFFF5550000AAABFFF55540002AABFFFF55000000AFFFFFFE000000557FFFEAAAA015555550AAAAAFFFF5500000055FFFFAAAAAA55555400000BFFFFFAAAAA9555550000005FFFFEAAAAAFFFF5000001555550000ABFFFFEAAAAAFFFFFE8000155555000005555500002BFFFFEAAAABFFFFFAAAAAFFFFFAAAAAFFFFFEAAAABFFFFEAAAABFFFFE",
	mem_init0 => "AAAAAFFFFFAAAAAFFFFFAAAAAFFFFFEAAAABFFFFEAAAABFFFFFAAAAAF555500000155554000005555FAAAAABFFFFEAAAAAFD5554000015555502AAABFFFFFAAAA8155555000001FFFFFEAAAAAD55555000003FFFFFEAAA80155555402AAABFFFFD400000157FFFFAAAA001555557AAAAAABD55555002AAAAFFF55550002AAAFFFD5550002AAABFFD5555002AAAAAF5555557AAAAAA0015557FFFFAA000000AFFFFF555500AAAAAA005555FFFFFF000002AAAAAD55555FFFFFE000002AAAAA055557FFFFF555502AAAAA00000AAAAFD55555FFFFF555557EAAA800000AAAAA000002AAABD55557FFFFF55555FFFFF55555FFFFFD55557FFFFD55557FFFFD55555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M10K_X69_Y23_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFFFFFFFFF5555555555FFFFFFFFFFD5555555557FFFFFFFFFF55555555557FFFFFFFFFD5555555550AAAAAAAAAAA00000000002AAAAAAAAAA81555555555FFFFFFFFFFFD55555000002AAAAAAAAAAA000001555557FFFFFFFFFFFD540000000002AAAAAAABFFFF5555555555554AAAAAAAAAAAAA80155555555555FFFEAAAAAAAAAA8001555555555557FEAAAAAAAAAAAABD5555555555540000AAAAAAAAFFFFFFFFFFD50000000000005555557FFFFEAAAAAAAAAAAFFFFFF555554000000000015555555557EAAAAAAAAAAFFFFFFFFFFFAAAAAAAAAABF555555555000000000015555555554000000000055555555550000000000155555555540000000000",
	mem_init2 => "555555555500000000005555555555400000000015555555555000000000015555555554000000002AFFFFFFFFFFFAAAAAAAAAABFFFFFFFFFFE000000000055555555555400002AAAAABFFFFFFFFFFFAAAAA00000015555555555540AAAAAAAAAABFFFFFFFD5555000000000000AFFFFFFFFFFFFFEA000000000000555FFFFFFFFFFFEAA80000000000015FFFFFFFFFFFFFD4000000000002AAAAFFFFFFFF555555555540AAAAAAAAAAAA000000155557FFFFFFFFFFF55555500000AAAAAAAAAAA80000000001FFFFFFFFFFF55555555557FFFFFFFFFFD5000000000AAAAAAAAAA00000000002AAAAAAAAAA0000000000AAAAAAAAAA80000000002AAAAAAAAA8",
	mem_init1 => "0000000000AAAAAAAAAA00000000002AAAAAAAAA80000000000AAAAAAAAAA00000000002AAAAAAAABF55555555557FFFFFFFFFFD5555555555FAAAAAAAAAA00000000000AAAAABFFFFFD55555555555FFFFFAAAAAA8000000000002AFFFFFFFFFFD555555540000AAAAAAAAAAAAF5555555555555FFAAAAAAAAAAAA00055555555555FFFEAAAAAAAAAAA0055555555555554AAAAAAAAAAAABFFFF555555550000000000AAFFFFFFFFFFFFAAAAAA00000155555555555000002AAAAAFFFFFFFFFFFEAAAAAAAAA05555555555500000000001555555555542AAAAAAAAAFFFFFFFFFFAAAAAAAAAABFFFFFFFFFFAAAAAAAAAAFFFFFFFFFFEAAAAAAAAABFFFFFFFFFE",
	mem_init0 => "AAAAAAAAAAFFFFFFFFFFAAAAAAAAAABFFFFFFFFFEAAAAAAAAAAFFFFFFFFFFAAAAAAAAAABFFFFFFFFF50000000000155555555554000000000057FFFFFFFFFAAAAAAAAAAAFFFFFF55555400000000000555557FFFFFEAAAAAAAAAAABFD555555555400000002AAAAFFFFFFFFFFFFD0000000000000557FFFFFFFFFFFAAA800000000005557FFFFFFFFFFFAA80000000000002FFFFFFFFFFFFD555500000000AAAAAAAAAAFF555555555555FFFFFFAAAAA800000000000AAAAABFFFFFD55555555557FFFFFFFFFA80000000000AAAAAAAAAAA00000000002BFFFFFFFFF55555555557FFFFFFFFFD5555555555FFFFFFFFFF55555555557FFFFFFFFFD5555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M10K_X69_Y22_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFFFFFFFFFFFFFFFFFFF555555555555555555557FFFFFFFFFFFFFFFFFFFFD55555555555555555555FFFFFFFFFFFFFFFFFFFFFD555555555554000000000AAAAAAAAAAAAAAAAAAAAAA800000000000000001555557FFFFFFFFFFFFFFFFFFFFFFFD5555555400000000000000000AAAAAAAAAAAAAAABFFFFFFFFFFF555555555555555554000000000002AAAAAAAAAAAAAABFFFFFFFFFFFFFFFFF555555550000000000000000000000005555557FFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFD5555555555500000000000000000000015555555555555555555540000000000000000000055555555555555555555400000000000000000000",
	mem_init2 => "5555555555555555555500000000000000000000155555555555555555555400000000000000000000555555555555555555555400000000000AAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAA000000155555555555555555555555400000002AAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFF555555555555000000000000000002AAAAAAAAAAABFFFFFFFFFFFFFFD5555555555555555500000000AAAAAAAAAAAAAAAAAAAAAAAA00000015555555555555555FFFFFFFFFFFFFFFFFFFFFFD555555555400000000000AAAAAAAAAAAAAAAAAAAAA800000000000000000000AAAAAAAAAAAAAAAAAAAAA000000000000000000002AAAAAAAAAAAAAAAAAAA8",
	mem_init1 => "00000000000000000000AAAAAAAAAAAAAAAAAAAA800000000000000000000AAAAAAAAAAAAAAAAAAAAA0000000000000000000002AAAAAAAAAAAFFFFFFFFFF55555555555555555555557FFFFFFFFFFFFFFFFAAAAAA8000000000000000000000002AAAAAAABFFFFFFFFFFFFFFFFF555555555555555000000000000AAAAAAAAAAAAAAAAABFFFFFFFFFFF555555555555555400000000000000000AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAA0000000000000000055555555555555555555554000000000AAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFE",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFD5555555550000000000000000000000155555555555555557FFFFFEAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFD555555555555555550000000000000002AAAAAAAAAAAFFFFFFFFFFFFFFFFFD555555555550000000000000002AAAAAAAAAAAAAAAAAFFFFFFFF555555555555555555555555FFFFFFAAAAAAAAAAAAAAAAA00000000000000000000002AAAAAAAAAFFFFFFFFFFFF5555555555555555555557FFFFFFFFFFFFFFFFFFFFD55555555555555555555FFFFFFFFFFFFFFFFFFFFD55555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M10K_X76_Y21_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555555555555555555555555555555555555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555555555555555555555555555555555555554000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA000000000000000155555555555555555555555555555555555555557FFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFD55555555555555555555555555555555555555400000000000000000000000000000000000000000015555555555555555555555555555555555555555500000000000000000000000000000000000000000",
	mem_init2 => "55555555555555555555555555555555555555554000000000000000000000000000000000000000005555555555555555555555555555555555555555555000000000000000000000000000000000000000AAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAA000000000000000000000000000000000000000001555555555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555554000000000000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA800000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8",
	mem_init1 => "00000000000000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFD5555555555555555555555555555555555555555555555555FFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA00000000000000015555555555555555555555555555555555555555555555555000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555400000000000000000000000000000000000000000000000005555555555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAA80000000000000000000000000000000000000000000000000AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5555555555555555555555555555555555555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF55555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M10K_X69_Y25_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF55555555555555555555555555555555555555555555555555555555555555555555555555555555555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA80000000000000000000000000000000000000000000000000000000000000000555555555555555555555555555555555555555555555555555555555555555555555555555555555555555540000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "5555555555555555555555555555555555555555555555555555555555555555555555555555555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015555555555555555555555555555555555555555555555555555555555555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA00000000000000000000000000000000000000000000000000000000000000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8",
	mem_init1 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8000000000000000000000000000000000000000000000000000000000000000055555555555555555555555555555555555555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8000000000000000000000000000000000000000055555555555555555555555555555555555555555555555555555555555555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M10K_X76_Y20_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8",
	mem_init1 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M10K_X76_Y24_N0
\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD",
	mem_init1 => "55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555554",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/dds.ram1_sincos_lut_ac05b4c2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "waveform_gen:waveform_gen_inst|sincos_lut:lut|altsyncram:COS_ROM_rtl_0|altsyncram_l7d1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: DSP_X86_Y24_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 1,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 12,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult0~8_ACLR_bus\,
	clk => \Mult0~8_CLK_bus\,
	ena => \Mult0~8_ENA_bus\,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: FF_X87_Y24_N52
\clk_up_lfsr|outdata[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_up_lfsr|reg3\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_up_lfsr|outdata[0]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y24_N36
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Mult0~8_resulta\ & ( \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( (!\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\) # ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\)))) # (\mod_sel[1]~input_o\ & 
-- ((!\mod_sel[0]~input_o\ & ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\))) # (\mod_sel[0]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\)))) ) ) ) # ( !\Mult0~8_resulta\ & ( 
-- \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( (!\mod_sel[1]~input_o\ & (\mod_sel[0]~input_o\ & ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\)))) # (\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\ & 
-- ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\))) # (\mod_sel[0]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\)))) ) ) ) # ( \Mult0~8_resulta\ & ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & 
-- ( (!\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\) # ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\)))) # (\mod_sel[1]~input_o\ & (((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\)))) ) ) ) # ( 
-- !\Mult0~8_resulta\ & ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( (!\mod_sel[1]~input_o\ & (\mod_sel[0]~input_o\ & ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\)))) # (\mod_sel[1]~input_o\ & 
-- (((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000001011001111000100111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mod_sel[1]~input_o\,
	datab => \ALT_INV_mod_sel[0]~input_o\,
	datac => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a0\,
	datae => \ALT_INV_Mult0~8_resulta\,
	dataf => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X88_Y24_N0
\reg_mod_out[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_mod_out[3]~0_combout\ = ( \mod_sel[1]~input_o\ & ( \mod_sel[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mod_sel[0]~input_o\,
	dataf => \ALT_INV_mod_sel[1]~input_o\,
	combout => \reg_mod_out[3]~0_combout\);

-- Location: FF_X85_Y24_N38
\reg_mod_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux11~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(0));

-- Location: FF_X85_Y24_N52
\clk_down_modulation|reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_mod_out(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(0));

-- Location: LABCELL_X88_Y23_N24
\clk_down_modulation|ff~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|ff~feeder_combout\ = ( \outclk~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_outclk~input_o\,
	combout => \clk_down_modulation|ff~feeder_combout\);

-- Location: FF_X88_Y23_N26
\clk_down_modulation|ff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|ff~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|ff~q\);

-- Location: LABCELL_X88_Y19_N12
\clk_down_modulation|en~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|en~feeder_combout\ = ( \clk_down_modulation|ff~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_modulation|ALT_INV_ff~q\,
	combout => \clk_down_modulation|en~feeder_combout\);

-- Location: FF_X88_Y19_N14
\clk_down_modulation|en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|en~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|en~q\);

-- Location: FF_X88_Y20_N38
\clk_down_modulation|reg3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg1\(0),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(0));

-- Location: FF_X88_Y20_N44
\clk_down_modulation|outdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg3\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(0));

-- Location: LABCELL_X85_Y24_N42
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \Mult0~9\ & ( ((!\mod_sel[0]~input_o\ & ((!\clk_up_lfsr|outdata[0]~_Duplicate_1_q\) # (!\mod_sel[1]~input_o\))) # (\mod_sel[0]~input_o\ & 
-- ((\mod_sel[1]~input_o\)))) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \Mult0~9\ & ( (!\mod_sel[0]~input_o\ & ((!\mod_sel[1]~input_o\) 
-- # ((\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\)))) # (\mod_sel[0]~input_o\ & (((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\ & !\mod_sel[1]~input_o\)))) ) ) ) # ( 
-- \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( !\Mult0~9\ & ( (!\mod_sel[0]~input_o\ & (\mod_sel[1]~input_o\ & ((!\clk_up_lfsr|outdata[0]~_Duplicate_1_q\) # 
-- (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\)))) # (\mod_sel[0]~input_o\ & (((\mod_sel[1]~input_o\) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\)))) ) ) ) # ( 
-- !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( !\Mult0~9\ & ( (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\ & ((!\mod_sel[0]~input_o\ & (\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & 
-- \mod_sel[1]~input_o\)) # (\mod_sel[0]~input_o\ & ((!\mod_sel[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000100000000111011111111001111000001001100111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	datab => \ALT_INV_mod_sel[0]~input_o\,
	datac => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datad => \ALT_INV_mod_sel[1]~input_o\,
	datae => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	dataf => \ALT_INV_Mult0~9\,
	combout => \Mux10~0_combout\);

-- Location: FF_X85_Y24_N43
\reg_mod_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(1));

-- Location: FF_X85_Y24_N29
\clk_down_modulation|reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_mod_out(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(1));

-- Location: LABCELL_X88_Y20_N39
\clk_down_modulation|reg3[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|reg3[1]~feeder_combout\ = ( \clk_down_modulation|reg1\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_modulation|ALT_INV_reg1\(1),
	combout => \clk_down_modulation|reg3[1]~feeder_combout\);

-- Location: FF_X88_Y20_N40
\clk_down_modulation|reg3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|reg3[1]~feeder_combout\,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(1));

-- Location: LABCELL_X88_Y20_N45
\clk_down_modulation|outdata[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|outdata[1]~feeder_combout\ = ( \clk_down_modulation|reg3\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_modulation|ALT_INV_reg3\(1),
	combout => \clk_down_modulation|outdata[1]~feeder_combout\);

-- Location: FF_X88_Y20_N46
\clk_down_modulation|outdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|outdata[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(1));

-- Location: LABCELL_X85_Y24_N24
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ & ( \Mult0~10\ & ( (!\mod_sel[1]~input_o\) # (((\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & !\mod_sel[0]~input_o\)) # 
-- (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2~portadataout\)) ) ) ) # ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ & ( \Mult0~10\ & ( (!\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\)))) # (\mod_sel[1]~input_o\ 
-- & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2~portadataout\ & ((!\clk_up_lfsr|outdata[0]~_Duplicate_1_q\) # (\mod_sel[0]~input_o\)))) ) ) ) # ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ & ( !\Mult0~10\ & ( 
-- (!\mod_sel[1]~input_o\ & (((\mod_sel[0]~input_o\)))) # (\mod_sel[1]~input_o\ & (((\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & !\mod_sel[0]~input_o\)) # (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2~portadataout\))) ) ) ) # ( 
-- !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ & ( !\Mult0~10\ & ( (\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2~portadataout\ & ((!\clk_up_lfsr|outdata[0]~_Duplicate_1_q\) # 
-- (\mod_sel[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011001101000011111111000000110010111111010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	datab => \ALT_INV_mod_sel[0]~input_o\,
	datac => \ALT_INV_mod_sel[1]~input_o\,
	datad => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datae => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \ALT_INV_Mult0~10\,
	combout => \Mux9~0_combout\);

-- Location: FF_X85_Y24_N25
\reg_mod_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux9~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(2));

-- Location: FF_X88_Y20_N5
\clk_down_modulation|reg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_mod_out(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(2));

-- Location: FF_X88_Y20_N26
\clk_down_modulation|reg3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg1\(2),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(2));

-- Location: FF_X88_Y20_N32
\clk_down_modulation|outdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg3\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(2));

-- Location: MLABCELL_X87_Y24_N36
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( \Mult0~11\ & ( (!\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\)) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\))) # (\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\ & 
-- (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\)) # (\mod_sel[0]~input_o\ & ((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\))))) ) ) ) # ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( \Mult0~11\ & ( 
-- (!\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\)) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\))) # (\mod_sel[1]~input_o\ & (((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\)))) ) ) ) # ( 
-- \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( !\Mult0~11\ & ( (!\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\ & (\mod_sel[0]~input_o\))) # (\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\ & 
-- (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\)) # (\mod_sel[0]~input_o\ & ((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\))))) ) ) ) # ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( !\Mult0~11\ & ( 
-- (!\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\ & (\mod_sel[0]~input_o\))) # (\mod_sel[1]~input_o\ & (((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000101000001011111000100111101111101010011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datab => \ALT_INV_mod_sel[1]~input_o\,
	datac => \ALT_INV_mod_sel[0]~input_o\,
	datad => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datae => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	dataf => \ALT_INV_Mult0~11\,
	combout => \Mux8~0_combout\);

-- Location: FF_X87_Y24_N38
\reg_mod_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux8~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(3));

-- Location: FF_X87_Y24_N10
\clk_down_modulation|reg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_mod_out(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(3));

-- Location: FF_X88_Y20_N29
\clk_down_modulation|reg3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg1\(3),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(3));

-- Location: FF_X88_Y20_N34
\clk_down_modulation|outdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg3\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(3));

-- Location: MLABCELL_X87_Y24_N6
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( \Mult0~12\ & ( (!\mod_sel[0]~input_o\ & ((!\mod_sel[1]~input_o\) # ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\)))) # (\mod_sel[0]~input_o\ & ((!\mod_sel[1]~input_o\ & 
-- ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\))) # (\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\)))) ) ) ) # ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( \Mult0~12\ & ( 
-- (!\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\) # ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\)))) # (\mod_sel[1]~input_o\ & (((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\)))) ) ) ) # ( 
-- \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( !\Mult0~12\ & ( (!\mod_sel[0]~input_o\ & (\mod_sel[1]~input_o\ & ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\)))) # (\mod_sel[0]~input_o\ & ((!\mod_sel[1]~input_o\ & 
-- ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\))) # (\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\)))) ) ) ) # ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( !\Mult0~12\ & ( 
-- (!\mod_sel[1]~input_o\ & (\mod_sel[0]~input_o\ & ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\)))) # (\mod_sel[1]~input_o\ & (((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000010110011110001011110011111000100111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mod_sel[0]~input_o\,
	datab => \ALT_INV_mod_sel[1]~input_o\,
	datac => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datad => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datae => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	dataf => \ALT_INV_Mult0~12\,
	combout => \Mux7~0_combout\);

-- Location: FF_X87_Y24_N7
\reg_mod_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux7~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(4));

-- Location: FF_X87_Y24_N58
\clk_down_modulation|reg1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_mod_out(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(4));

-- Location: FF_X88_Y20_N8
\clk_down_modulation|reg3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg1\(4),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(4));

-- Location: FF_X88_Y20_N50
\clk_down_modulation|outdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg3\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(4));

-- Location: LABCELL_X85_Y24_N54
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ & ( \Mult0~13\ & ( ((!\mod_sel[1]~input_o\) # ((\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & !\mod_sel[0]~input_o\))) # 
-- (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5~portadataout\) ) ) ) # ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ & ( \Mult0~13\ & ( (!\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\)))) # (\mod_sel[1]~input_o\ 
-- & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5~portadataout\ & ((!\clk_up_lfsr|outdata[0]~_Duplicate_1_q\) # (\mod_sel[0]~input_o\)))) ) ) ) # ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ & ( !\Mult0~13\ & ( 
-- (!\mod_sel[1]~input_o\ & (((\mod_sel[0]~input_o\)))) # (\mod_sel[1]~input_o\ & (((\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & !\mod_sel[0]~input_o\)) # (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5~portadataout\))) ) ) ) # ( 
-- !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ & ( !\Mult0~13\ & ( (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5~portadataout\ & (\mod_sel[1]~input_o\ & ((!\clk_up_lfsr|outdata[0]~_Duplicate_1_q\) # 
-- (\mod_sel[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000011000001111111001111110010000000111111011111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	datab => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datac => \ALT_INV_mod_sel[1]~input_o\,
	datad => \ALT_INV_mod_sel[0]~input_o\,
	datae => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \ALT_INV_Mult0~13\,
	combout => \Mux6~0_combout\);

-- Location: FF_X85_Y24_N55
\reg_mod_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux6~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(5));

-- Location: FF_X88_Y20_N2
\clk_down_modulation|reg1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_mod_out(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(5));

-- Location: FF_X88_Y20_N11
\clk_down_modulation|reg3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg1\(5),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(5));

-- Location: LABCELL_X88_Y20_N51
\clk_down_modulation|outdata[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|outdata[5]~feeder_combout\ = \clk_down_modulation|reg3\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_down_modulation|ALT_INV_reg3\(5),
	combout => \clk_down_modulation|outdata[5]~feeder_combout\);

-- Location: FF_X88_Y20_N52
\clk_down_modulation|outdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|outdata[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(5));

-- Location: LABCELL_X85_Y24_N12
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a6\ & ( \Mult0~14\ & ( (!\mod_sel[1]~input_o\) # (((!\mod_sel[0]~input_o\ & \clk_up_lfsr|outdata[0]~_Duplicate_1_q\)) # 
-- (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\)) ) ) ) # ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a6\ & ( \Mult0~14\ & ( (!\mod_sel[1]~input_o\ & (!\mod_sel[0]~input_o\)) # (\mod_sel[1]~input_o\ & 
-- (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\ & ((!\clk_up_lfsr|outdata[0]~_Duplicate_1_q\) # (\mod_sel[0]~input_o\)))) ) ) ) # ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a6\ & ( !\Mult0~14\ & ( 
-- (!\mod_sel[1]~input_o\ & (\mod_sel[0]~input_o\)) # (\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\ & \clk_up_lfsr|outdata[0]~_Duplicate_1_q\)) # (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\))) ) ) ) # ( 
-- !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a6\ & ( !\Mult0~14\ & ( (\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\ & ((!\clk_up_lfsr|outdata[0]~_Duplicate_1_q\) # 
-- (\mod_sel[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010001001001100111011110001000110110011010111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mod_sel[1]~input_o\,
	datab => \ALT_INV_mod_sel[0]~input_o\,
	datac => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	datad => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\,
	datae => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	dataf => \ALT_INV_Mult0~14\,
	combout => \Mux5~0_combout\);

-- Location: FF_X85_Y24_N13
\reg_mod_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(6));

-- Location: LABCELL_X88_Y20_N21
\clk_down_modulation|reg1[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|reg1[6]~feeder_combout\ = ( reg_mod_out(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_reg_mod_out(6),
	combout => \clk_down_modulation|reg1[6]~feeder_combout\);

-- Location: FF_X88_Y20_N23
\clk_down_modulation|reg1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|reg1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(6));

-- Location: FF_X88_Y20_N14
\clk_down_modulation|reg3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg1\(6),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(6));

-- Location: FF_X88_Y20_N55
\clk_down_modulation|outdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg3\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(6));

-- Location: LABCELL_X85_Y24_N30
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Mult0~15\ & ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7~portadataout\ & ( ((!\mod_sel[0]~input_o\ & ((!\clk_up_lfsr|outdata[0]~_Duplicate_1_q\) # (!\mod_sel[1]~input_o\))) # (\mod_sel[0]~input_o\ & 
-- ((\mod_sel[1]~input_o\)))) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\) ) ) ) # ( !\Mult0~15\ & ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7~portadataout\ & ( (!\mod_sel[0]~input_o\ & (\mod_sel[1]~input_o\ & 
-- ((!\clk_up_lfsr|outdata[0]~_Duplicate_1_q\) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\)))) # (\mod_sel[0]~input_o\ & (((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\) # (\mod_sel[1]~input_o\)))) ) ) ) # ( 
-- \Mult0~15\ & ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7~portadataout\ & ( (!\mod_sel[0]~input_o\ & ((!\mod_sel[1]~input_o\) # ((\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & 
-- \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\)))) # (\mod_sel[0]~input_o\ & (((!\mod_sel[1]~input_o\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\)))) ) ) ) # ( !\Mult0~15\ & ( 
-- !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7~portadataout\ & ( (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\ & ((!\mod_sel[0]~input_o\ & (\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & \mod_sel[1]~input_o\)) # 
-- (\mod_sel[0]~input_o\ & ((!\mod_sel[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110100110000001111010000001011001111111100101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	datab => \ALT_INV_mod_sel[0]~input_o\,
	datac => \ALT_INV_mod_sel[1]~input_o\,
	datad => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datae => \ALT_INV_Mult0~15\,
	dataf => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portadataout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X85_Y24_N31
\reg_mod_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(7));

-- Location: LABCELL_X88_Y20_N18
\clk_down_modulation|reg1[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|reg1[7]~feeder_combout\ = ( reg_mod_out(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_reg_mod_out(7),
	combout => \clk_down_modulation|reg1[7]~feeder_combout\);

-- Location: FF_X88_Y20_N20
\clk_down_modulation|reg1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|reg1[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(7));

-- Location: FF_X88_Y20_N17
\clk_down_modulation|reg3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg1\(7),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(7));

-- Location: LABCELL_X88_Y20_N57
\clk_down_modulation|outdata[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|outdata[7]~feeder_combout\ = ( \clk_down_modulation|reg3\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_modulation|ALT_INV_reg3\(7),
	combout => \clk_down_modulation|outdata[7]~feeder_combout\);

-- Location: FF_X88_Y20_N58
\clk_down_modulation|outdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|outdata[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(7));

-- Location: MLABCELL_X87_Y24_N12
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( \Mult0~16\ & ( (!\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\)) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\))) # (\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\ & 
-- (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\)) # (\mod_sel[0]~input_o\ & ((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\))))) ) ) ) # ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( \Mult0~16\ & ( 
-- (!\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\)) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\))) # (\mod_sel[1]~input_o\ & (((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\)))) ) ) ) # ( 
-- \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( !\Mult0~16\ & ( (!\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\ & (\mod_sel[0]~input_o\))) # (\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\ & 
-- (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\)) # (\mod_sel[0]~input_o\ & ((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\))))) ) ) ) # ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( !\Mult0~16\ & ( 
-- (!\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\ & (\mod_sel[0]~input_o\))) # (\mod_sel[1]~input_o\ & (((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000101000001011111000100111101111101010011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datab => \ALT_INV_mod_sel[1]~input_o\,
	datac => \ALT_INV_mod_sel[0]~input_o\,
	datad => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	datae => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	dataf => \ALT_INV_Mult0~16\,
	combout => \Mux3~0_combout\);

-- Location: FF_X87_Y24_N14
\reg_mod_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(8));

-- Location: FF_X87_Y24_N28
\clk_down_modulation|reg1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_mod_out(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(8));

-- Location: LABCELL_X88_Y20_N36
\clk_down_modulation|reg3[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|reg3[8]~feeder_combout\ = ( \clk_down_modulation|reg1\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_modulation|ALT_INV_reg1\(8),
	combout => \clk_down_modulation|reg3[8]~feeder_combout\);

-- Location: FF_X88_Y20_N37
\clk_down_modulation|reg3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|reg3[8]~feeder_combout\,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(8));

-- Location: LABCELL_X88_Y20_N42
\clk_down_modulation|outdata[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|outdata[8]~feeder_combout\ = \clk_down_modulation|reg3\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_down_modulation|ALT_INV_reg3\(8),
	combout => \clk_down_modulation|outdata[8]~feeder_combout\);

-- Location: FF_X88_Y20_N43
\clk_down_modulation|outdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|outdata[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(8));

-- Location: MLABCELL_X87_Y24_N42
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( \Mult0~17\ & ( (!\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\)))) # (\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\ & 
-- ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\))) # (\mod_sel[0]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\)))) ) ) ) # ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( \Mult0~17\ & ( 
-- (!\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\)))) # (\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\)) ) ) ) # ( 
-- \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( !\Mult0~17\ & ( (!\mod_sel[1]~input_o\ & (((\mod_sel[0]~input_o\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\)))) # (\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\ & 
-- ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\))) # (\mod_sel[0]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\)))) ) ) ) # ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( !\Mult0~17\ & ( 
-- (!\mod_sel[1]~input_o\ & (((\mod_sel[0]~input_o\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\)))) # (\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000000010011110111010001110111011100000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portadataout\,
	datab => \ALT_INV_mod_sel[1]~input_o\,
	datac => \ALT_INV_mod_sel[0]~input_o\,
	datad => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datae => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	dataf => \ALT_INV_Mult0~17\,
	combout => \Mux2~0_combout\);

-- Location: FF_X87_Y24_N43
\reg_mod_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(9));

-- Location: FF_X87_Y24_N4
\clk_down_modulation|reg1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_mod_out(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(9));

-- Location: FF_X88_Y17_N38
\clk_down_modulation|reg3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg1\(9),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(9));

-- Location: FF_X88_Y17_N25
\clk_down_modulation|outdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg3\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(9));

-- Location: MLABCELL_X87_Y24_N0
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( \Mult0~18\ & ( (!\mod_sel[0]~input_o\ & ((!\mod_sel[1]~input_o\) # ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\)))) # (\mod_sel[0]~input_o\ & ((!\mod_sel[1]~input_o\ 
-- & ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\))) # (\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\)))) ) ) ) # ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( \Mult0~18\ & ( 
-- (!\mod_sel[1]~input_o\ & ((!\mod_sel[0]~input_o\) # ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\)))) # (\mod_sel[1]~input_o\ & (((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\)))) ) ) ) # ( 
-- \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( !\Mult0~18\ & ( (!\mod_sel[0]~input_o\ & (\mod_sel[1]~input_o\ & ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\)))) # (\mod_sel[0]~input_o\ & ((!\mod_sel[1]~input_o\ & 
-- ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\))) # (\mod_sel[1]~input_o\ & (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\)))) ) ) ) # ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( !\Mult0~18\ & ( 
-- (!\mod_sel[1]~input_o\ & (\mod_sel[0]~input_o\ & ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\)))) # (\mod_sel[1]~input_o\ & (((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000010110011110001011110011111000100111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mod_sel[0]~input_o\,
	datab => \ALT_INV_mod_sel[1]~input_o\,
	datac => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\,
	datad => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	datae => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	dataf => \ALT_INV_Mult0~18\,
	combout => \Mux1~0_combout\);

-- Location: FF_X87_Y24_N2
\reg_mod_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	sclr => \reg_mod_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(10));

-- Location: FF_X87_Y24_N22
\clk_down_modulation|reg1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_mod_out(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(10));

-- Location: FF_X88_Y20_N41
\clk_down_modulation|reg3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg1\(10),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(10));

-- Location: FF_X88_Y20_N47
\clk_down_modulation|outdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	asdata => \clk_down_modulation|reg3\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(10));

-- Location: MLABCELL_X87_Y24_N54
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Mult0~19\ & ( \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( (!\mod_sel[1]~input_o\ $ (\mod_sel[0]~input_o\)) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\) ) ) ) # ( !\Mult0~19\ & ( 
-- \clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( (!\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\ & (\mod_sel[1]~input_o\ & \mod_sel[0]~input_o\)) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\ & 
-- ((\mod_sel[0]~input_o\) # (\mod_sel[1]~input_o\))) ) ) ) # ( \Mult0~19\ & ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( (!\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\)) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\))) # 
-- (\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\ & \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11~portadataout\)))) ) ) ) # ( !\Mult0~19\ & ( !\clk_up_lfsr|outdata[0]~_Duplicate_1_q\ & ( (!\mod_sel[1]~input_o\ & 
-- (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\ & (\mod_sel[0]~input_o\))) # (\mod_sel[1]~input_o\ & (((!\mod_sel[0]~input_o\ & \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000010111000101111101011111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datab => \ALT_INV_mod_sel[1]~input_o\,
	datac => \ALT_INV_mod_sel[0]~input_o\,
	datad => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portadataout\,
	datae => \ALT_INV_Mult0~19\,
	dataf => \clk_up_lfsr|ALT_INV_outdata[0]~_Duplicate_1_q\,
	combout => \Mux0~0_combout\);

-- Location: FF_X87_Y24_N55
\reg_mod_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mod_out(11));

-- Location: FF_X87_Y24_N46
\clk_down_modulation|reg1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_mod_out(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg1\(11));

-- Location: LABCELL_X88_Y20_N24
\clk_down_modulation|reg3[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|reg3[11]~feeder_combout\ = ( \clk_down_modulation|reg1\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_modulation|ALT_INV_reg1\(11),
	combout => \clk_down_modulation|reg3[11]~feeder_combout\);

-- Location: FF_X88_Y20_N25
\clk_down_modulation|reg3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|reg3[11]~feeder_combout\,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|reg3\(11));

-- Location: LABCELL_X88_Y20_N30
\clk_down_modulation|outdata[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_modulation|outdata[11]~feeder_combout\ = ( \clk_down_modulation|reg3\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_modulation|ALT_INV_reg3\(11),
	combout => \clk_down_modulation|outdata[11]~feeder_combout\);

-- Location: FF_X88_Y20_N31
\clk_down_modulation|outdata[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_modulation|outdata[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_modulation|outdata\(11));

-- Location: IOIBUF_X89_Y23_N55
\sig_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_sel(0),
	o => \sig_sel[0]~input_o\);

-- Location: FF_X78_Y22_N52
\waveform_gen_inst|lut_addr_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \waveform_gen_inst|phase_acc\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(11));

-- Location: IOIBUF_X89_Y23_N38
\sig_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_sel(1),
	o => \sig_sel[1]~input_o\);

-- Location: MLABCELL_X78_Y24_N12
\waveform_gen_inst|lut_addr_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|lut_addr_reg[0]~feeder_combout\ = ( \waveform_gen_inst|phase_acc\(20) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(20),
	combout => \waveform_gen_inst|lut_addr_reg[0]~feeder_combout\);

-- Location: FF_X78_Y24_N13
\waveform_gen_inst|lut_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|lut_addr_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(0));

-- Location: LABCELL_X85_Y24_N6
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\ & ( (!\sig_sel[1]~input_o\) # ((!\sig_sel[0]~input_o\ & 
-- ((\waveform_gen_inst|lut_addr_reg\(0)))) # (\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(11)))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( 
-- \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\ & ( (!\sig_sel[0]~input_o\ & (((!\sig_sel[1]~input_o\) # (\waveform_gen_inst|lut_addr_reg\(0))))) # (\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(11) & (\sig_sel[1]~input_o\))) 
-- ) ) ) # ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\ & ( (!\sig_sel[0]~input_o\ & (((\sig_sel[1]~input_o\ & \waveform_gen_inst|lut_addr_reg\(0))))) 
-- # (\sig_sel[0]~input_o\ & (((!\sig_sel[1]~input_o\)) # (\waveform_gen_inst|lut_addr_reg\(11)))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( 
-- !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a0\ & ( (\sig_sel[1]~input_o\ & ((!\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(0)))) # (\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sig_sel[0]~input_o\,
	datab => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datac => \ALT_INV_sig_sel[1]~input_o\,
	datad => \waveform_gen_inst|ALT_INV_lut_addr_reg\(0),
	datae => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a0\,
	combout => \Mux23~0_combout\);

-- Location: FF_X85_Y24_N7
\reg_sig_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(0));

-- Location: LABCELL_X88_Y17_N9
\clk_down_signal|reg1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|reg1[0]~feeder_combout\ = ( reg_sig_out(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_reg_sig_out(0),
	combout => \clk_down_signal|reg1[0]~feeder_combout\);

-- Location: FF_X88_Y17_N11
\clk_down_signal|reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_signal|reg1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(0));

-- Location: FF_X88_Y17_N2
\clk_down_signal|reg3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(0),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(0));

-- Location: LABCELL_X88_Y17_N48
\clk_down_signal|outdata[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|outdata[0]~feeder_combout\ = ( \clk_down_signal|reg3\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_signal|ALT_INV_reg3\(0),
	combout => \clk_down_signal|outdata[0]~feeder_combout\);

-- Location: FF_X88_Y17_N49
\clk_down_signal|outdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_signal|outdata[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(0));

-- Location: MLABCELL_X78_Y24_N57
\waveform_gen_inst|lut_addr_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|lut_addr_reg[1]~feeder_combout\ = ( \waveform_gen_inst|phase_acc\(21) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(21),
	combout => \waveform_gen_inst|lut_addr_reg[1]~feeder_combout\);

-- Location: FF_X78_Y24_N58
\waveform_gen_inst|lut_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|lut_addr_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(1));

-- Location: LABCELL_X85_Y24_N0
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\ & ( (!\sig_sel[1]~input_o\) # ((!\sig_sel[0]~input_o\ & 
-- (\waveform_gen_inst|lut_addr_reg\(1))) # (\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(11))))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( 
-- \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\ & ( (!\sig_sel[0]~input_o\ & (((!\sig_sel[1]~input_o\)) # (\waveform_gen_inst|lut_addr_reg\(1)))) # (\sig_sel[0]~input_o\ & (((\waveform_gen_inst|lut_addr_reg\(11) & 
-- \sig_sel[1]~input_o\)))) ) ) ) # ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\ & ( (!\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(1) & 
-- ((\sig_sel[1]~input_o\)))) # (\sig_sel[0]~input_o\ & (((!\sig_sel[1]~input_o\) # (\waveform_gen_inst|lut_addr_reg\(11))))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( 
-- !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a1\ & ( (\sig_sel[1]~input_o\ & ((!\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(1))) # (\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \waveform_gen_inst|ALT_INV_lut_addr_reg\(1),
	datab => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datac => \ALT_INV_sig_sel[0]~input_o\,
	datad => \ALT_INV_sig_sel[1]~input_o\,
	datae => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	dataf => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \Mux22~0_combout\);

-- Location: FF_X85_Y24_N1
\reg_sig_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(1));

-- Location: MLABCELL_X87_Y20_N15
\clk_down_signal|reg1[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|reg1[1]~feeder_combout\ = ( reg_sig_out(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_reg_sig_out(1),
	combout => \clk_down_signal|reg1[1]~feeder_combout\);

-- Location: FF_X87_Y20_N16
\clk_down_signal|reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_signal|reg1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(1));

-- Location: FF_X88_Y17_N5
\clk_down_signal|reg3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(1),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(1));

-- Location: LABCELL_X88_Y17_N51
\clk_down_signal|outdata[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|outdata[1]~feeder_combout\ = \clk_down_signal|reg3\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_down_signal|ALT_INV_reg3\(1),
	combout => \clk_down_signal|outdata[1]~feeder_combout\);

-- Location: FF_X88_Y17_N52
\clk_down_signal|outdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_signal|outdata[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(1));

-- Location: FF_X78_Y24_N25
\waveform_gen_inst|lut_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \waveform_gen_inst|phase_acc\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(2));

-- Location: LABCELL_X83_Y24_N24
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \sig_sel[1]~input_o\ & ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ & ( (!\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(2)))) # (\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(11))) ) ) ) 
-- # ( !\sig_sel[1]~input_o\ & ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ & ( (!\sig_sel[0]~input_o\) # (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2~portadataout\) ) ) ) # ( \sig_sel[1]~input_o\ & ( 
-- !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ & ( (!\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(2)))) # (\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(11))) ) ) ) # ( !\sig_sel[1]~input_o\ & ( 
-- !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a2\ & ( (\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a2~portadataout\ & \sig_sel[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datab => \ALT_INV_sig_sel[0]~input_o\,
	datac => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datad => \waveform_gen_inst|ALT_INV_lut_addr_reg\(2),
	datae => \ALT_INV_sig_sel[1]~input_o\,
	dataf => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \Mux21~0_combout\);

-- Location: FF_X83_Y24_N25
\reg_sig_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(2));

-- Location: FF_X88_Y17_N44
\clk_down_signal|reg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_sig_out(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(2));

-- Location: FF_X88_Y17_N14
\clk_down_signal|reg3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(2),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(2));

-- Location: LABCELL_X88_Y17_N30
\clk_down_signal|outdata[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|outdata[2]~feeder_combout\ = \clk_down_signal|reg3\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_down_signal|ALT_INV_reg3\(2),
	combout => \clk_down_signal|outdata[2]~feeder_combout\);

-- Location: FF_X88_Y17_N32
\clk_down_signal|outdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_signal|outdata[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(2));

-- Location: MLABCELL_X78_Y24_N45
\waveform_gen_inst|lut_addr_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|lut_addr_reg[3]~feeder_combout\ = ( \waveform_gen_inst|phase_acc\(23) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(23),
	combout => \waveform_gen_inst|lut_addr_reg[3]~feeder_combout\);

-- Location: FF_X78_Y24_N46
\waveform_gen_inst|lut_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|lut_addr_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(3));

-- Location: LABCELL_X83_Y24_N54
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\ & ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\ & ( (!\sig_sel[1]~input_o\) # ((!\sig_sel[0]~input_o\ & 
-- (\waveform_gen_inst|lut_addr_reg\(3))) # (\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(11))))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\ & ( 
-- \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\ & ( (!\sig_sel[1]~input_o\ & (((!\sig_sel[0]~input_o\)))) # (\sig_sel[1]~input_o\ & ((!\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(3))) # (\sig_sel[0]~input_o\ & 
-- ((\waveform_gen_inst|lut_addr_reg\(11)))))) ) ) ) # ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\ & ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\ & ( (!\sig_sel[1]~input_o\ & 
-- (((\sig_sel[0]~input_o\)))) # (\sig_sel[1]~input_o\ & ((!\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(3))) # (\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(11)))))) ) ) ) # ( 
-- !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a3~portadataout\ & ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a3\ & ( (\sig_sel[1]~input_o\ & ((!\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(3))) # 
-- (\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \waveform_gen_inst|ALT_INV_lut_addr_reg\(3),
	datab => \ALT_INV_sig_sel[1]~input_o\,
	datac => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datad => \ALT_INV_sig_sel[0]~input_o\,
	datae => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	dataf => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \Mux20~0_combout\);

-- Location: FF_X83_Y24_N55
\reg_sig_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(3));

-- Location: FF_X88_Y17_N46
\clk_down_signal|reg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_sig_out(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(3));

-- Location: FF_X88_Y17_N17
\clk_down_signal|reg3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(3),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(3));

-- Location: LABCELL_X88_Y17_N33
\clk_down_signal|outdata[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|outdata[3]~feeder_combout\ = ( \clk_down_signal|reg3\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_signal|ALT_INV_reg3\(3),
	combout => \clk_down_signal|outdata[3]~feeder_combout\);

-- Location: FF_X88_Y17_N34
\clk_down_signal|outdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_signal|outdata[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(3));

-- Location: MLABCELL_X78_Y24_N0
\waveform_gen_inst|lut_addr_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|lut_addr_reg[4]~feeder_combout\ = ( \waveform_gen_inst|phase_acc\(24) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(24),
	combout => \waveform_gen_inst|lut_addr_reg[4]~feeder_combout\);

-- Location: FF_X78_Y24_N1
\waveform_gen_inst|lut_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|lut_addr_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(4));

-- Location: LABCELL_X81_Y24_N27
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \waveform_gen_inst|lut_addr_reg\(4) & ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ & ( (!\sig_sel[1]~input_o\ & (((\sig_sel[0]~input_o\)) # 
-- (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\))) # (\sig_sel[1]~input_o\ & (((!\sig_sel[0]~input_o\) # (\waveform_gen_inst|lut_addr_reg\(11))))) ) ) ) # ( !\waveform_gen_inst|lut_addr_reg\(4) & ( 
-- \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ & ( (!\sig_sel[1]~input_o\ & (((\sig_sel[0]~input_o\)) # (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\))) # (\sig_sel[1]~input_o\ & 
-- (((\waveform_gen_inst|lut_addr_reg\(11) & \sig_sel[0]~input_o\)))) ) ) ) # ( \waveform_gen_inst|lut_addr_reg\(4) & ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ & ( (!\sig_sel[1]~input_o\ & 
-- (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\ & ((!\sig_sel[0]~input_o\)))) # (\sig_sel[1]~input_o\ & (((!\sig_sel[0]~input_o\) # (\waveform_gen_inst|lut_addr_reg\(11))))) ) ) ) # ( !\waveform_gen_inst|lut_addr_reg\(4) & ( 
-- !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ & ( (!\sig_sel[1]~input_o\ & (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a4\ & ((!\sig_sel[0]~input_o\)))) # (\sig_sel[1]~input_o\ & 
-- (((\waveform_gen_inst|lut_addr_reg\(11) & \sig_sel[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sig_sel[1]~input_o\,
	datab => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datac => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datad => \ALT_INV_sig_sel[0]~input_o\,
	datae => \waveform_gen_inst|ALT_INV_lut_addr_reg\(4),
	dataf => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	combout => \Mux19~0_combout\);

-- Location: FF_X81_Y24_N28
\reg_sig_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(4));

-- Location: FF_X87_Y17_N2
\clk_down_signal|reg1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_sig_out(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(4));

-- Location: FF_X87_Y17_N32
\clk_down_signal|reg3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(4),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(4));

-- Location: MLABCELL_X87_Y17_N42
\clk_down_signal|outdata[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|outdata[4]~feeder_combout\ = ( \clk_down_signal|reg3\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_signal|ALT_INV_reg3\(4),
	combout => \clk_down_signal|outdata[4]~feeder_combout\);

-- Location: FF_X87_Y17_N44
\clk_down_signal|outdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_signal|outdata[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(4));

-- Location: LABCELL_X77_Y24_N15
\waveform_gen_inst|lut_addr_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|lut_addr_reg[5]~feeder_combout\ = ( \waveform_gen_inst|phase_acc\(25) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(25),
	combout => \waveform_gen_inst|lut_addr_reg[5]~feeder_combout\);

-- Location: FF_X77_Y24_N16
\waveform_gen_inst|lut_addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|lut_addr_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(5));

-- Location: LABCELL_X85_Y24_N48
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ & ( \sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\ & ((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5~portadataout\))) # (\sig_sel[1]~input_o\ & 
-- (\waveform_gen_inst|lut_addr_reg\(11))) ) ) ) # ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ & ( \sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\ & ((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a5~portadataout\))) 
-- # (\sig_sel[1]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(11))) ) ) ) # ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ & ( !\sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\) # (\waveform_gen_inst|lut_addr_reg\(5)) ) ) ) # ( 
-- !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a5\ & ( !\sig_sel[0]~input_o\ & ( (\sig_sel[1]~input_o\ & \waveform_gen_inst|lut_addr_reg\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sig_sel[1]~input_o\,
	datab => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datac => \waveform_gen_inst|ALT_INV_lut_addr_reg\(5),
	datad => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \ALT_INV_sig_sel[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: FF_X85_Y24_N49
\reg_sig_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(5));

-- Location: FF_X88_Y17_N8
\clk_down_signal|reg1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_sig_out(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(5));

-- Location: FF_X88_Y17_N20
\clk_down_signal|reg3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(5),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(5));

-- Location: LABCELL_X88_Y17_N54
\clk_down_signal|outdata[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|outdata[5]~feeder_combout\ = ( \clk_down_signal|reg3\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_signal|ALT_INV_reg3\(5),
	combout => \clk_down_signal|outdata[5]~feeder_combout\);

-- Location: FF_X88_Y17_N55
\clk_down_signal|outdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_signal|outdata[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(5));

-- Location: FF_X75_Y24_N52
\waveform_gen_inst|lut_addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \waveform_gen_inst|phase_acc\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(6));

-- Location: LABCELL_X81_Y24_N21
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\ & ( \sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\) # (\waveform_gen_inst|lut_addr_reg\(11)) ) ) ) # ( 
-- !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\ & ( \sig_sel[0]~input_o\ & ( (\sig_sel[1]~input_o\ & \waveform_gen_inst|lut_addr_reg\(11)) ) ) ) # ( 
-- \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\ & ( !\sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\ & ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a6\))) # (\sig_sel[1]~input_o\ & 
-- (\waveform_gen_inst|lut_addr_reg\(6))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a6~portadataout\ & ( !\sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\ & ((\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a6\))) 
-- # (\sig_sel[1]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sig_sel[1]~input_o\,
	datab => \waveform_gen_inst|ALT_INV_lut_addr_reg\(6),
	datac => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datad => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datae => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\,
	dataf => \ALT_INV_sig_sel[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: FF_X81_Y24_N22
\reg_sig_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(6));

-- Location: MLABCELL_X87_Y17_N3
\clk_down_signal|reg1[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|reg1[6]~feeder_combout\ = ( reg_sig_out(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_reg_sig_out(6),
	combout => \clk_down_signal|reg1[6]~feeder_combout\);

-- Location: FF_X87_Y17_N5
\clk_down_signal|reg1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_signal|reg1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(6));

-- Location: FF_X87_Y17_N35
\clk_down_signal|reg3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(6),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(6));

-- Location: MLABCELL_X87_Y17_N21
\clk_down_signal|outdata[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|outdata[6]~feeder_combout\ = ( \clk_down_signal|reg3\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_signal|ALT_INV_reg3\(6),
	combout => \clk_down_signal|outdata[6]~feeder_combout\);

-- Location: FF_X87_Y17_N22
\clk_down_signal|outdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_signal|outdata[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(6));

-- Location: LABCELL_X77_Y24_N30
\waveform_gen_inst|lut_addr_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|lut_addr_reg[7]~feeder_combout\ = ( \waveform_gen_inst|phase_acc\(27) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(27),
	combout => \waveform_gen_inst|lut_addr_reg[7]~feeder_combout\);

-- Location: FF_X77_Y24_N31
\waveform_gen_inst|lut_addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|lut_addr_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(7));

-- Location: LABCELL_X81_Y24_N15
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \waveform_gen_inst|lut_addr_reg\(7) & ( \sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\ & ((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7~portadataout\))) # (\sig_sel[1]~input_o\ & 
-- (\waveform_gen_inst|lut_addr_reg\(11))) ) ) ) # ( !\waveform_gen_inst|lut_addr_reg\(7) & ( \sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\ & ((\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a7~portadataout\))) # (\sig_sel[1]~input_o\ & 
-- (\waveform_gen_inst|lut_addr_reg\(11))) ) ) ) # ( \waveform_gen_inst|lut_addr_reg\(7) & ( !\sig_sel[0]~input_o\ & ( (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\) # (\sig_sel[1]~input_o\) ) ) ) # ( !\waveform_gen_inst|lut_addr_reg\(7) 
-- & ( !\sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a7\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sig_sel[1]~input_o\,
	datab => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datac => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datad => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portadataout\,
	datae => \waveform_gen_inst|ALT_INV_lut_addr_reg\(7),
	dataf => \ALT_INV_sig_sel[0]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: FF_X81_Y24_N17
\reg_sig_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(7));

-- Location: FF_X87_Y17_N11
\clk_down_signal|reg1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_sig_out(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(7));

-- Location: FF_X88_Y17_N23
\clk_down_signal|reg3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(7),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(7));

-- Location: FF_X88_Y17_N58
\clk_down_signal|outdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg3\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(7));

-- Location: FF_X77_Y21_N16
\waveform_gen_inst|lut_addr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \waveform_gen_inst|phase_acc\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(8));

-- Location: MLABCELL_X82_Y21_N15
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\ & ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\ & ( (!\sig_sel[1]~input_o\) # ((!\sig_sel[0]~input_o\ & 
-- ((\waveform_gen_inst|lut_addr_reg\(8)))) # (\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(11)))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\ & ( 
-- \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\ & ( (!\sig_sel[1]~input_o\ & (!\sig_sel[0]~input_o\)) # (\sig_sel[1]~input_o\ & ((!\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(8)))) # (\sig_sel[0]~input_o\ & 
-- (\waveform_gen_inst|lut_addr_reg\(11))))) ) ) ) # ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\ & ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\ & ( (!\sig_sel[1]~input_o\ & (\sig_sel[0]~input_o\)) 
-- # (\sig_sel[1]~input_o\ & ((!\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(8)))) # (\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(11))))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a8~portadataout\ & ( 
-- !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a8\ & ( (\sig_sel[1]~input_o\ & ((!\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(8)))) # (\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sig_sel[1]~input_o\,
	datab => \ALT_INV_sig_sel[0]~input_o\,
	datac => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datad => \waveform_gen_inst|ALT_INV_lut_addr_reg\(8),
	datae => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	dataf => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \Mux15~0_combout\);

-- Location: FF_X82_Y21_N17
\reg_sig_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(8));

-- Location: MLABCELL_X87_Y17_N36
\clk_down_signal|reg1[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|reg1[8]~feeder_combout\ = ( reg_sig_out(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_reg_sig_out(8),
	combout => \clk_down_signal|reg1[8]~feeder_combout\);

-- Location: FF_X87_Y17_N38
\clk_down_signal|reg1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_signal|reg1[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(8));

-- Location: FF_X87_Y17_N50
\clk_down_signal|reg3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(8),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(8));

-- Location: MLABCELL_X87_Y17_N54
\clk_down_signal|outdata[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|outdata[8]~feeder_combout\ = ( \clk_down_signal|reg3\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_signal|ALT_INV_reg3\(8),
	combout => \clk_down_signal|outdata[8]~feeder_combout\);

-- Location: FF_X87_Y17_N56
\clk_down_signal|outdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_signal|outdata[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(8));

-- Location: MLABCELL_X78_Y24_N33
\waveform_gen_inst|lut_addr_reg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|lut_addr_reg[9]~feeder_combout\ = ( \waveform_gen_inst|phase_acc\(29) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(29),
	combout => \waveform_gen_inst|lut_addr_reg[9]~feeder_combout\);

-- Location: FF_X78_Y24_N34
\waveform_gen_inst|lut_addr_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|lut_addr_reg[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(9));

-- Location: LABCELL_X83_Y24_N51
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \sig_sel[1]~input_o\ & ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\ & ( (!\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(9))) # (\sig_sel[0]~input_o\ & 
-- ((\waveform_gen_inst|lut_addr_reg\(11)))) ) ) ) # ( !\sig_sel[1]~input_o\ & ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\ & ( (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\) # (\sig_sel[0]~input_o\) ) 
-- ) ) # ( \sig_sel[1]~input_o\ & ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\ & ( (!\sig_sel[0]~input_o\ & (\waveform_gen_inst|lut_addr_reg\(9))) # (\sig_sel[0]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(11)))) ) ) ) 
-- # ( !\sig_sel[1]~input_o\ & ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a9~portadataout\ & ( (!\sig_sel[0]~input_o\ & \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a9\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \waveform_gen_inst|ALT_INV_lut_addr_reg\(9),
	datab => \ALT_INV_sig_sel[0]~input_o\,
	datac => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datad => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datae => \ALT_INV_sig_sel[1]~input_o\,
	dataf => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portadataout\,
	combout => \Mux14~0_combout\);

-- Location: FF_X83_Y24_N52
\reg_sig_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(9));

-- Location: LABCELL_X88_Y17_N6
\clk_down_signal|reg1[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|reg1[9]~feeder_combout\ = ( reg_sig_out(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_reg_sig_out(9),
	combout => \clk_down_signal|reg1[9]~feeder_combout\);

-- Location: FF_X88_Y17_N7
\clk_down_signal|reg1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_signal|reg1[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(9));

-- Location: LABCELL_X88_Y17_N39
\clk_down_signal|reg3[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|reg3[9]~feeder_combout\ = ( \clk_down_signal|reg1\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_signal|ALT_INV_reg1\(9),
	combout => \clk_down_signal|reg3[9]~feeder_combout\);

-- Location: FF_X88_Y17_N41
\clk_down_signal|reg3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_signal|reg3[9]~feeder_combout\,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(9));

-- Location: FF_X88_Y17_N28
\clk_down_signal|outdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg3\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(9));

-- Location: LABCELL_X77_Y21_N33
\waveform_gen_inst|lut_addr_reg[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \waveform_gen_inst|lut_addr_reg[10]~feeder_combout\ = ( \waveform_gen_inst|phase_acc\(30) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \waveform_gen_inst|ALT_INV_phase_acc\(30),
	combout => \waveform_gen_inst|lut_addr_reg[10]~feeder_combout\);

-- Location: FF_X77_Y21_N34
\waveform_gen_inst|lut_addr_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \waveform_gen_inst|lut_addr_reg[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waveform_gen_inst|lut_addr_reg\(10));

-- Location: MLABCELL_X82_Y21_N6
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\ & ( \sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\) # (\waveform_gen_inst|lut_addr_reg\(11)) ) ) ) # ( 
-- !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\ & ( \sig_sel[0]~input_o\ & ( (\waveform_gen_inst|lut_addr_reg\(11) & \sig_sel[1]~input_o\) ) ) ) # ( 
-- \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\ & ( !\sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\ & (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\)) # (\sig_sel[1]~input_o\ & 
-- ((\waveform_gen_inst|lut_addr_reg\(10)))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a10~portadataout\ & ( !\sig_sel[0]~input_o\ & ( (!\sig_sel[1]~input_o\ & 
-- (\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a10\)) # (\sig_sel[1]~input_o\ & ((\waveform_gen_inst|lut_addr_reg\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	datab => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datac => \ALT_INV_sig_sel[1]~input_o\,
	datad => \waveform_gen_inst|ALT_INV_lut_addr_reg\(10),
	datae => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\,
	dataf => \ALT_INV_sig_sel[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: FF_X82_Y21_N7
\reg_sig_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(10));

-- Location: FF_X87_Y17_N41
\clk_down_signal|reg1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => reg_sig_out(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(10));

-- Location: FF_X87_Y17_N53
\clk_down_signal|reg3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(10),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(10));

-- Location: MLABCELL_X87_Y17_N57
\clk_down_signal|outdata[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|outdata[10]~feeder_combout\ = \clk_down_signal|reg3\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_down_signal|ALT_INV_reg3\(10),
	combout => \clk_down_signal|outdata[10]~feeder_combout\);

-- Location: FF_X87_Y17_N58
\clk_down_signal|outdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_signal|outdata[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(10));

-- Location: MLABCELL_X82_Y21_N27
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11~portadataout\ & ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\ & ( (!\sig_sel[1]~input_o\) # (!\sig_sel[0]~input_o\ $ 
-- (!\waveform_gen_inst|lut_addr_reg\(11))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11~portadataout\ & ( \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\ & ( !\sig_sel[0]~input_o\ $ (((\sig_sel[1]~input_o\ 
-- & !\waveform_gen_inst|lut_addr_reg\(11)))) ) ) ) # ( \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11~portadataout\ & ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\ & ( !\sig_sel[0]~input_o\ $ 
-- (((!\sig_sel[1]~input_o\) # (!\waveform_gen_inst|lut_addr_reg\(11)))) ) ) ) # ( !\waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ram_block1a11~portadataout\ & ( !\waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ram_block1a11\ & ( 
-- (\sig_sel[1]~input_o\ & (!\sig_sel[0]~input_o\ $ (!\waveform_gen_inst|lut_addr_reg\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100001101100011011010011100100111001011111010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sig_sel[1]~input_o\,
	datab => \ALT_INV_sig_sel[0]~input_o\,
	datac => \waveform_gen_inst|ALT_INV_lut_addr_reg\(11),
	datae => \waveform_gen_inst|lut|COS_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portadataout\,
	dataf => \waveform_gen_inst|lut|SIN_ROM_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \Mux12~0_combout\);

-- Location: FF_X82_Y21_N28
\reg_sig_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sig_out(11));

-- Location: MLABCELL_X87_Y17_N6
\clk_down_signal|reg1[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|reg1[11]~feeder_combout\ = ( reg_sig_out(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_reg_sig_out(11),
	combout => \clk_down_signal|reg1[11]~feeder_combout\);

-- Location: FF_X87_Y17_N7
\clk_down_signal|reg1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_down_signal|reg1[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg1\(11));

-- Location: FF_X87_Y17_N26
\clk_down_signal|reg3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clk_down_signal|reg1\(11),
	sload => VCC,
	ena => \clk_down_modulation|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|reg3\(11));

-- Location: MLABCELL_X87_Y17_N12
\clk_down_signal|outdata[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_down_signal|outdata[11]~feeder_combout\ = ( \clk_down_signal|reg3\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_down_signal|ALT_INV_reg3\(11),
	combout => \clk_down_signal|outdata[11]~feeder_combout\);

-- Location: FF_X87_Y17_N13
\clk_down_signal|outdata[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \outclk~inputCLKENA0_outclk\,
	d => \clk_down_signal|outdata[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_down_signal|outdata\(11));

-- Location: LABCELL_X55_Y29_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


