-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/21/2023 00:29:43"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab6v2 IS
    PORT (
	out_y : OUT std_logic;
	in_x1 : IN std_logic;
	in_x2 : IN std_logic;
	in_x3 : IN std_logic;
	in_x4 : IN std_logic
	);
END lab6v2;

-- Design Ports Information
-- out_y	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_x2	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_x3	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_x4	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_x1	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6v2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_out_y : std_logic;
SIGNAL ww_in_x1 : std_logic;
SIGNAL ww_in_x2 : std_logic;
SIGNAL ww_in_x3 : std_logic;
SIGNAL ww_in_x4 : std_logic;
SIGNAL \out_y~output_o\ : std_logic;
SIGNAL \in_x4~input_o\ : std_logic;
SIGNAL \in_x1~input_o\ : std_logic;
SIGNAL \in_x3~input_o\ : std_logic;
SIGNAL \in_x2~input_o\ : std_logic;
SIGNAL \inst|inst1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst1~0_combout\ : std_logic;

BEGIN

out_y <= ww_out_y;
ww_in_x1 <= in_x1;
ww_in_x2 <= in_x2;
ww_in_x3 <= in_x3;
ww_in_x4 <= in_x4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_inst1~0_combout\ <= NOT \inst|inst1~0_combout\;

-- Location: IOOBUF_X0_Y4_N23
\out_y~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst1~0_combout\,
	devoe => ww_devoe,
	o => \out_y~output_o\);

-- Location: IOIBUF_X3_Y0_N1
\in_x4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_x4,
	o => \in_x4~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\in_x1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_x1,
	o => \in_x1~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\in_x3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_x3,
	o => \in_x3~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\in_x2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_x2,
	o => \in_x2~input_o\);

-- Location: LCCOMB_X4_Y3_N0
\inst|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1~0_combout\ = (\in_x2~input_o\ & ((\in_x1~input_o\ & ((\in_x3~input_o\))) # (!\in_x1~input_o\ & ((\in_x4~input_o\) # (!\in_x3~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_x4~input_o\,
	datab => \in_x1~input_o\,
	datac => \in_x3~input_o\,
	datad => \in_x2~input_o\,
	combout => \inst|inst1~0_combout\);

ww_out_y <= \out_y~output_o\;
END structure;


