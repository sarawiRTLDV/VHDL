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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "10/15/2022 15:06:08"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	microaddress_counter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	cmd : IN std_logic_vector(1 DOWNTO 0);
	load_addr : IN std_logic_vector(10 DOWNTO 0);
	addr : BUFFER std_logic_vector(10 DOWNTO 0)
	);
END microaddress_counter;

-- Design Ports Information
-- addr[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[8]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[9]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[10]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF microaddress_counter IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_cmd : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_load_addr : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(10 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \load_addr[0]~input_o\ : std_logic;
SIGNAL \cmd[1]~input_o\ : std_logic;
SIGNAL \cmd[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \next_addr[0]~0_combout\ : std_logic;
SIGNAL \addr[0]~reg0_q\ : std_logic;
SIGNAL \load_addr[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \addr[1]~reg0_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \load_addr[2]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \addr[2]~reg0_q\ : std_logic;
SIGNAL \load_addr[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \addr[3]~reg0_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \load_addr[4]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \addr[4]~reg0_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \load_addr[5]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \addr[5]~reg0_q\ : std_logic;
SIGNAL \load_addr[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \addr[6]~reg0_q\ : std_logic;
SIGNAL \load_addr[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \addr[7]~reg0_q\ : std_logic;
SIGNAL \load_addr[8]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \addr[8]~reg0_q\ : std_logic;
SIGNAL \load_addr[9]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \addr[9]~reg0_q\ : std_logic;
SIGNAL \load_addr[10]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \addr[10]~reg0_q\ : std_logic;
SIGNAL next_addr : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_load_addr[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_cmd[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_cmd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[10]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_addr[9]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_addr[8]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_addr[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_addr[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_addr[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_addr[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_addr[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_addr[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_addr[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_addr[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_cmd <= cmd;
ww_load_addr <= load_addr;
addr <= ww_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_load_addr[10]~input_o\ <= NOT \load_addr[10]~input_o\;
\ALT_INV_load_addr[9]~input_o\ <= NOT \load_addr[9]~input_o\;
\ALT_INV_load_addr[8]~input_o\ <= NOT \load_addr[8]~input_o\;
\ALT_INV_load_addr[7]~input_o\ <= NOT \load_addr[7]~input_o\;
\ALT_INV_load_addr[6]~input_o\ <= NOT \load_addr[6]~input_o\;
\ALT_INV_load_addr[5]~input_o\ <= NOT \load_addr[5]~input_o\;
\ALT_INV_load_addr[4]~input_o\ <= NOT \load_addr[4]~input_o\;
\ALT_INV_load_addr[3]~input_o\ <= NOT \load_addr[3]~input_o\;
\ALT_INV_load_addr[2]~input_o\ <= NOT \load_addr[2]~input_o\;
\ALT_INV_load_addr[1]~input_o\ <= NOT \load_addr[1]~input_o\;
\ALT_INV_cmd[0]~input_o\ <= NOT \cmd[0]~input_o\;
\ALT_INV_load_addr[0]~input_o\ <= NOT \load_addr[0]~input_o\;
\ALT_INV_cmd[1]~input_o\ <= NOT \cmd[1]~input_o\;
\ALT_INV_addr[10]~reg0_q\ <= NOT \addr[10]~reg0_q\;
\ALT_INV_addr[9]~reg0_q\ <= NOT \addr[9]~reg0_q\;
\ALT_INV_addr[8]~reg0_q\ <= NOT \addr[8]~reg0_q\;
\ALT_INV_addr[7]~reg0_q\ <= NOT \addr[7]~reg0_q\;
\ALT_INV_addr[6]~reg0_q\ <= NOT \addr[6]~reg0_q\;
\ALT_INV_addr[5]~reg0_q\ <= NOT \addr[5]~reg0_q\;
\ALT_INV_addr[4]~reg0_q\ <= NOT \addr[4]~reg0_q\;
\ALT_INV_addr[3]~reg0_q\ <= NOT \addr[3]~reg0_q\;
\ALT_INV_addr[2]~reg0_q\ <= NOT \addr[2]~reg0_q\;
\ALT_INV_addr[1]~reg0_q\ <= NOT \addr[1]~reg0_q\;
\ALT_INV_addr[0]~reg0_q\ <= NOT \addr[0]~reg0_q\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X89_Y9_N5
\addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(0));

-- Location: IOOBUF_X89_Y37_N56
\addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(1));

-- Location: IOOBUF_X89_Y8_N39
\addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(2));

-- Location: IOOBUF_X89_Y9_N56
\addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(3));

-- Location: IOOBUF_X89_Y36_N22
\addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(4));

-- Location: IOOBUF_X89_Y8_N5
\addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(5));

-- Location: IOOBUF_X89_Y6_N5
\addr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(6));

-- Location: IOOBUF_X89_Y6_N56
\addr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(7));

-- Location: IOOBUF_X89_Y8_N22
\addr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(8));

-- Location: IOOBUF_X89_Y8_N56
\addr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(9));

-- Location: IOOBUF_X89_Y6_N39
\addr[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \addr[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_addr(10));

-- Location: IOIBUF_X89_Y35_N61
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

-- Location: IOIBUF_X89_Y36_N38
\load_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(0),
	o => \load_addr[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\cmd[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd(1),
	o => \cmd[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\cmd[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd(0),
	o => \cmd[0]~input_o\);

-- Location: LABCELL_X85_Y20_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \addr[0]~reg0_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \addr[0]~reg0_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[0]~reg0_q\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X84_Y20_N36
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \addr[0]~reg0_q\ & ( \Add0~1_sumout\ & ( (!\cmd[1]~input_o\) # (\load_addr[0]~input_o\) ) ) ) # ( !\addr[0]~reg0_q\ & ( \Add0~1_sumout\ & ( (!\cmd[1]~input_o\ & ((\cmd[0]~input_o\))) # (\cmd[1]~input_o\ & (\load_addr[0]~input_o\)) ) 
-- ) ) # ( \addr[0]~reg0_q\ & ( !\Add0~1_sumout\ & ( (!\cmd[1]~input_o\ & ((!\cmd[0]~input_o\))) # (\cmd[1]~input_o\ & (\load_addr[0]~input_o\)) ) ) ) # ( !\addr[0]~reg0_q\ & ( !\Add0~1_sumout\ & ( (\load_addr[0]~input_o\ & \cmd[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110100011101000100011101000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_addr[0]~input_o\,
	datab => \ALT_INV_cmd[1]~input_o\,
	datac => \ALT_INV_cmd[0]~input_o\,
	datae => \ALT_INV_addr[0]~reg0_q\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X89_Y9_N38
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: MLABCELL_X84_Y20_N45
\next_addr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_addr[0]~0_combout\ = ( \cmd[1]~input_o\ & ( \cmd[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datae => \ALT_INV_cmd[1]~input_o\,
	combout => \next_addr[0]~0_combout\);

-- Location: FF_X84_Y20_N37
\next_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(0));

-- Location: FF_X85_Y20_N2
\addr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(0),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[0]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N18
\load_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(1),
	o => \load_addr[1]~input_o\);

-- Location: LABCELL_X85_Y20_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \addr[1]~reg0_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \addr[1]~reg0_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[1]~reg0_q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X84_Y20_N30
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \addr[1]~reg0_q\ & ( \Add0~5_sumout\ & ( (!\cmd[1]~input_o\) # (\load_addr[1]~input_o\) ) ) ) # ( !\addr[1]~reg0_q\ & ( \Add0~5_sumout\ & ( (!\cmd[1]~input_o\ & (\cmd[0]~input_o\)) # (\cmd[1]~input_o\ & ((\load_addr[1]~input_o\))) ) ) 
-- ) # ( \addr[1]~reg0_q\ & ( !\Add0~5_sumout\ & ( (!\cmd[1]~input_o\ & (!\cmd[0]~input_o\)) # (\cmd[1]~input_o\ & ((\load_addr[1]~input_o\))) ) ) ) # ( !\addr[1]~reg0_q\ & ( !\Add0~5_sumout\ & ( (\cmd[1]~input_o\ & \load_addr[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011100010111000101101000111010001111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datab => \ALT_INV_cmd[1]~input_o\,
	datac => \ALT_INV_load_addr[1]~input_o\,
	datae => \ALT_INV_addr[1]~reg0_q\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X84_Y20_N31
\next_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux9~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(1));

-- Location: FF_X85_Y20_N5
\addr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(1),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[1]~reg0_q\);

-- Location: LABCELL_X85_Y20_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \addr[2]~reg0_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \addr[2]~reg0_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_addr[2]~reg0_q\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: IOIBUF_X89_Y4_N95
\load_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(2),
	o => \load_addr[2]~input_o\);

-- Location: LABCELL_X85_Y20_N36
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \addr[2]~reg0_q\ & ( (!\cmd[1]~input_o\ & ((!\cmd[0]~input_o\) # ((\Add0~9_sumout\)))) # (\cmd[1]~input_o\ & (((\load_addr[2]~input_o\)))) ) ) # ( !\addr[2]~reg0_q\ & ( (!\cmd[1]~input_o\ & (\cmd[0]~input_o\ & (\Add0~9_sumout\))) # 
-- (\cmd[1]~input_o\ & (((\load_addr[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datab => \ALT_INV_cmd[1]~input_o\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_load_addr[2]~input_o\,
	dataf => \ALT_INV_addr[2]~reg0_q\,
	combout => \Mux8~0_combout\);

-- Location: FF_X85_Y20_N38
\next_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux8~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(2));

-- Location: FF_X85_Y20_N8
\addr[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(2),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[2]~reg0_q\);

-- Location: IOIBUF_X89_Y36_N4
\load_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(3),
	o => \load_addr[3]~input_o\);

-- Location: LABCELL_X85_Y20_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \addr[3]~reg0_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \addr[3]~reg0_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_addr[3]~reg0_q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X84_Y20_N3
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \addr[3]~reg0_q\ & ( \Add0~13_sumout\ & ( (!\cmd[1]~input_o\) # (\load_addr[3]~input_o\) ) ) ) # ( !\addr[3]~reg0_q\ & ( \Add0~13_sumout\ & ( (!\cmd[1]~input_o\ & (\cmd[0]~input_o\)) # (\cmd[1]~input_o\ & ((\load_addr[3]~input_o\))) ) 
-- ) ) # ( \addr[3]~reg0_q\ & ( !\Add0~13_sumout\ & ( (!\cmd[1]~input_o\ & (!\cmd[0]~input_o\)) # (\cmd[1]~input_o\ & ((\load_addr[3]~input_o\))) ) ) ) # ( !\addr[3]~reg0_q\ & ( !\Add0~13_sumout\ & ( (\load_addr[3]~input_o\ & \cmd[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011101000111010001101010011010100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datab => \ALT_INV_load_addr[3]~input_o\,
	datac => \ALT_INV_cmd[1]~input_o\,
	datae => \ALT_INV_addr[3]~reg0_q\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X84_Y20_N4
\next_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux7~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(3));

-- Location: FF_X85_Y20_N11
\addr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(3),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[3]~reg0_q\);

-- Location: LABCELL_X85_Y20_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \addr[4]~reg0_q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \addr[4]~reg0_q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[4]~reg0_q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: IOIBUF_X89_Y4_N44
\load_addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(4),
	o => \load_addr[4]~input_o\);

-- Location: LABCELL_X85_Y20_N39
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \addr[4]~reg0_q\ & ( (!\cmd[1]~input_o\ & ((!\cmd[0]~input_o\) # ((\Add0~17_sumout\)))) # (\cmd[1]~input_o\ & (((\load_addr[4]~input_o\)))) ) ) # ( !\addr[4]~reg0_q\ & ( (!\cmd[1]~input_o\ & (\cmd[0]~input_o\ & (\Add0~17_sumout\))) # 
-- (\cmd[1]~input_o\ & (((\load_addr[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datab => \ALT_INV_cmd[1]~input_o\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_load_addr[4]~input_o\,
	dataf => \ALT_INV_addr[4]~reg0_q\,
	combout => \Mux6~0_combout\);

-- Location: FF_X85_Y20_N41
\next_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux6~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(4));

-- Location: FF_X85_Y20_N14
\addr[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(4),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[4]~reg0_q\);

-- Location: LABCELL_X85_Y20_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \addr[5]~reg0_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \addr[5]~reg0_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_addr[5]~reg0_q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: IOIBUF_X89_Y35_N44
\load_addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(5),
	o => \load_addr[5]~input_o\);

-- Location: LABCELL_X85_Y20_N45
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \addr[5]~reg0_q\ & ( (!\cmd[1]~input_o\ & ((!\cmd[0]~input_o\) # ((\Add0~21_sumout\)))) # (\cmd[1]~input_o\ & (((\load_addr[5]~input_o\)))) ) ) # ( !\addr[5]~reg0_q\ & ( (!\cmd[1]~input_o\ & (\cmd[0]~input_o\ & (\Add0~21_sumout\))) # 
-- (\cmd[1]~input_o\ & (((\load_addr[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datab => \ALT_INV_cmd[1]~input_o\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_load_addr[5]~input_o\,
	dataf => \ALT_INV_addr[5]~reg0_q\,
	combout => \Mux5~0_combout\);

-- Location: FF_X85_Y20_N47
\next_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(5));

-- Location: FF_X85_Y20_N17
\addr[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(5),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[5]~reg0_q\);

-- Location: IOIBUF_X89_Y4_N78
\load_addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(6),
	o => \load_addr[6]~input_o\);

-- Location: LABCELL_X85_Y20_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \addr[6]~reg0_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \addr[6]~reg0_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[6]~reg0_q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X85_Y20_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Add0~25_sumout\ & ( (!\cmd[1]~input_o\ & (((\addr[6]~reg0_q\)) # (\cmd[0]~input_o\))) # (\cmd[1]~input_o\ & (((\load_addr[6]~input_o\)))) ) ) # ( !\Add0~25_sumout\ & ( (!\cmd[1]~input_o\ & (!\cmd[0]~input_o\ & (\addr[6]~reg0_q\))) # 
-- (\cmd[1]~input_o\ & (((\load_addr[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datab => \ALT_INV_cmd[1]~input_o\,
	datac => \ALT_INV_addr[6]~reg0_q\,
	datad => \ALT_INV_load_addr[6]~input_o\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X85_Y20_N44
\next_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(6));

-- Location: FF_X85_Y20_N20
\addr[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(6),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[6]~reg0_q\);

-- Location: IOIBUF_X89_Y35_N78
\load_addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(7),
	o => \load_addr[7]~input_o\);

-- Location: LABCELL_X85_Y20_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \addr[7]~reg0_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \addr[7]~reg0_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[7]~reg0_q\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X85_Y20_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Add0~29_sumout\ & ( (!\cmd[1]~input_o\ & (((\addr[7]~reg0_q\)) # (\cmd[0]~input_o\))) # (\cmd[1]~input_o\ & (((\load_addr[7]~input_o\)))) ) ) # ( !\Add0~29_sumout\ & ( (!\cmd[1]~input_o\ & (!\cmd[0]~input_o\ & ((\addr[7]~reg0_q\)))) 
-- # (\cmd[1]~input_o\ & (((\load_addr[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datab => \ALT_INV_cmd[1]~input_o\,
	datac => \ALT_INV_load_addr[7]~input_o\,
	datad => \ALT_INV_addr[7]~reg0_q\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X85_Y20_N53
\next_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(7));

-- Location: FF_X85_Y20_N23
\addr[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(7),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[7]~reg0_q\);

-- Location: IOIBUF_X89_Y36_N55
\load_addr[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(8),
	o => \load_addr[8]~input_o\);

-- Location: LABCELL_X85_Y20_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \addr[8]~reg0_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \addr[8]~reg0_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_addr[8]~reg0_q\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X85_Y20_N48
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \Add0~33_sumout\ & ( (!\cmd[1]~input_o\ & (((\addr[8]~reg0_q\)) # (\cmd[0]~input_o\))) # (\cmd[1]~input_o\ & (((\load_addr[8]~input_o\)))) ) ) # ( !\Add0~33_sumout\ & ( (!\cmd[1]~input_o\ & (!\cmd[0]~input_o\ & (\addr[8]~reg0_q\))) # 
-- (\cmd[1]~input_o\ & (((\load_addr[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datab => \ALT_INV_cmd[1]~input_o\,
	datac => \ALT_INV_addr[8]~reg0_q\,
	datad => \ALT_INV_load_addr[8]~input_o\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X85_Y20_N50
\next_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(8));

-- Location: FF_X85_Y20_N26
\addr[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(8),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[8]~reg0_q\);

-- Location: IOIBUF_X89_Y6_N21
\load_addr[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(9),
	o => \load_addr[9]~input_o\);

-- Location: LABCELL_X85_Y20_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \addr[9]~reg0_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \addr[9]~reg0_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[9]~reg0_q\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X85_Y20_N57
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Add0~37_sumout\ & ( (!\cmd[1]~input_o\ & (((\addr[9]~reg0_q\)) # (\cmd[0]~input_o\))) # (\cmd[1]~input_o\ & (((\load_addr[9]~input_o\)))) ) ) # ( !\Add0~37_sumout\ & ( (!\cmd[1]~input_o\ & (!\cmd[0]~input_o\ & ((\addr[9]~reg0_q\)))) 
-- # (\cmd[1]~input_o\ & (((\load_addr[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datab => \ALT_INV_cmd[1]~input_o\,
	datac => \ALT_INV_load_addr[9]~input_o\,
	datad => \ALT_INV_addr[9]~reg0_q\,
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X85_Y20_N58
\next_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(9));

-- Location: FF_X85_Y20_N29
\addr[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(9),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[9]~reg0_q\);

-- Location: IOIBUF_X89_Y4_N61
\load_addr[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(10),
	o => \load_addr[10]~input_o\);

-- Location: LABCELL_X85_Y20_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \addr[10]~reg0_q\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_addr[10]~reg0_q\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\);

-- Location: LABCELL_X85_Y20_N54
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Add0~41_sumout\ & ( (!\cmd[1]~input_o\ & (((\addr[10]~reg0_q\)) # (\cmd[0]~input_o\))) # (\cmd[1]~input_o\ & (((\load_addr[10]~input_o\)))) ) ) # ( !\Add0~41_sumout\ & ( (!\cmd[1]~input_o\ & (!\cmd[0]~input_o\ & (\addr[10]~reg0_q\))) 
-- # (\cmd[1]~input_o\ & (((\load_addr[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmd[0]~input_o\,
	datab => \ALT_INV_cmd[1]~input_o\,
	datac => \ALT_INV_addr[10]~reg0_q\,
	datad => \ALT_INV_load_addr[10]~input_o\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X85_Y20_N56
\next_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	clrn => \rst~input_o\,
	sclr => \next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => next_addr(10));

-- Location: FF_X85_Y20_N32
\addr[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => next_addr(10),
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr[10]~reg0_q\);

-- Location: LABCELL_X73_Y65_N3
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


