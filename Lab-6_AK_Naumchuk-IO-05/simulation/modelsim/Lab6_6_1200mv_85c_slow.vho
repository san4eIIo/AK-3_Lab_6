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

-- DATE "05/21/2023 01:40:06"

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

ENTITY 	Lab6 IS
    PORT (
	out_y : OUT std_logic;
	in_x1 : IN std_logic;
	in_x2 : IN std_logic;
	in_x3 : IN std_logic;
	in_x4 : IN std_logic
	);
END Lab6;

-- Design Ports Information
-- out_y	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_x1	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_x2	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_x4	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_x3	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6 IS
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
SIGNAL \in_x1~input_o\ : std_logic;
SIGNAL \in_x2~input_o\ : std_logic;
SIGNAL \in_x4~input_o\ : std_logic;
SIGNAL \in_x3~input_o\ : std_logic;
SIGNAL \out_y~output_o\ : std_logic;

BEGIN

out_y <= ww_out_y;
ww_in_x1 <= in_x1;
ww_in_x2 <= in_x2;
ww_in_x3 <= in_x3;
ww_in_x4 <= in_x4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y23_N2
\out_y~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_y~output_o\);

-- Location: IOIBUF_X0_Y23_N15
\in_x1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_x1,
	o => \in_x1~input_o\);

-- Location: IOIBUF_X0_Y19_N15
\in_x2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_x2,
	o => \in_x2~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\in_x4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_x4,
	o => \in_x4~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\in_x3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_x3,
	o => \in_x3~input_o\);

ww_out_y <= \out_y~output_o\;
END structure;


