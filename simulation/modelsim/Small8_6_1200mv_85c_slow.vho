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

-- DATE "11/29/2016 19:35:36"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	btns : IN std_logic_vector(1 DOWNTO 0);
	switches : IN std_logic_vector(7 DOWNTO 0);
	led_hi1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led_lo1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led_hi0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led_lo0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- btns[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btns[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[7]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[6]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo1[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo1[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo1[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo1[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo1[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo1[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo1[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi0[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi0[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi0[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi0[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi0[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_btns : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_switches : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led_hi1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_lo1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_hi0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_lo0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \btns[0]~input_o\ : std_logic;
SIGNAL \btns[1]~input_o\ : std_logic;
SIGNAL \switches[0]~input_o\ : std_logic;
SIGNAL \switches[1]~input_o\ : std_logic;
SIGNAL \switches[2]~input_o\ : std_logic;
SIGNAL \switches[3]~input_o\ : std_logic;
SIGNAL \switches[4]~input_o\ : std_logic;
SIGNAL \switches[5]~input_o\ : std_logic;
SIGNAL \switches[6]~input_o\ : std_logic;
SIGNAL \switches[7]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~8\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]~0_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~13_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~14\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~15_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~16\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~17_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~18\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~19_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~20\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~21_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~22\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~23_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~24\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~25_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~6_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~11_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~13_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~12_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~14\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~11_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~5_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[1]~15_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\ : std_logic;
SIGNAL \DATAPATH|EXT_DATABUS|Mux0~1_combout\ : std_logic;
SIGNAL \DATAPATH|EXT_DATABUS|Mux1~1_combout\ : std_logic;
SIGNAL \DATAPATH|EXT_DATABUS|Mux3~1_combout\ : std_logic;
SIGNAL \DATAPATH|EXT_DATABUS|Mux4~1_combout\ : std_logic;
SIGNAL \DATAPATH|EXT_DATABUS|Mux5~1_combout\ : std_logic;
SIGNAL \DATAPATH|EXT_DATABUS|Mux7~1_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\ : std_logic;
SIGNAL \DATAPATH|EXT_DATABUS|Mux6~1_combout\ : std_logic;
SIGNAL \CONTROLLER|IR_ld~combout\ : std_logic;
SIGNAL \CONTROLLER|Mux2~1_combout\ : std_logic;
SIGNAL \CONTROLLER|Mux2~0_combout\ : std_logic;
SIGNAL \CONTROLLER|Selector2~0_combout\ : std_logic;
SIGNAL \CONTROLLER|curr_state.decode~q\ : std_logic;
SIGNAL \CONTROLLER|Selector3~0_combout\ : std_logic;
SIGNAL \CONTROLLER|curr_state.LDAI~q\ : std_logic;
SIGNAL \CONTROLLER|curr_state.POST_LD~feeder_combout\ : std_logic;
SIGNAL \CONTROLLER|curr_state.POST_LD~q\ : std_logic;
SIGNAL \CONTROLLER|curr_state.init~0_combout\ : std_logic;
SIGNAL \CONTROLLER|curr_state.init~q\ : std_logic;
SIGNAL \CONTROLLER|curr_state.fetch~0_combout\ : std_logic;
SIGNAL \CONTROLLER|curr_state.fetch~q\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[0]~45_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[1]~16\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[2]~17_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[2]~18\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[3]~19_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[3]~20\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[4]~21_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[4]~22\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[5]~23_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[5]~24\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[6]~25_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[6]~26\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[7]~27_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[7]~28\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[8]~29_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[8]~30\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[9]~31_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[9]~32\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[10]~33_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[10]~34\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[11]~35_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[11]~36\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[12]~37_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[12]~38\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[13]~39_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[13]~40\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[14]~41_combout\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[14]~42\ : std_logic;
SIGNAL \DATAPATH|PC_COUNTER|temp[15]~43_combout\ : std_logic;
SIGNAL \DECODER|Equal0~3_combout\ : std_logic;
SIGNAL \DECODER|Equal0~1_combout\ : std_logic;
SIGNAL \DECODER|Equal0~2_combout\ : std_logic;
SIGNAL \DECODER|Equal0~0_combout\ : std_logic;
SIGNAL \DECODER|Equal0~4_combout\ : std_logic;
SIGNAL \DATAPATH|EXT_DATABUS|Mux2~1_combout\ : std_logic;
SIGNAL \U_LED_HI0|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_HI0|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_HI0|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_HI0|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_HI0|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_HI0|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_HI0|Mux0~0_combout\ : std_logic;
SIGNAL \U_LED_LO0|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_LO0|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_LO0|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_LO0|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_LO0|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_LO0|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_LO0|Mux0~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATAPATH|I_REG|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DATAPATH|PC_COUNTER|temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\ : std_logic_vector(8 DOWNTO 3);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \RAM0|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \U_LED_LO0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_LED_HI0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_clk <= clk;
ww_rst <= rst;
ww_btns <= btns;
ww_switches <= switches;
led_hi1 <= ww_led_hi1;
led_lo1 <= ww_led_lo1;
led_hi0 <= ww_led_hi0;
led_lo0 <= ww_led_lo0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \DATAPATH|EXT_DATABUS|Mux0~1_combout\ & \DATAPATH|EXT_DATABUS|Mux1~1_combout\ & 
\DATAPATH|EXT_DATABUS|Mux2~1_combout\ & \DATAPATH|EXT_DATABUS|Mux3~1_combout\ & \DATAPATH|EXT_DATABUS|Mux4~1_combout\ & \DATAPATH|EXT_DATABUS|Mux5~1_combout\ & \DATAPATH|EXT_DATABUS|Mux6~1_combout\ & \DATAPATH|EXT_DATABUS|Mux7~1_combout\);

\RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7) & 
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6) & \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5) & \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4) & 
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3) & \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2) & \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1) & 
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

\RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ <= (\DATAPATH|PC_COUNTER|temp\(7) & \DATAPATH|PC_COUNTER|temp\(6) & \DATAPATH|PC_COUNTER|temp\(5) & \DATAPATH|PC_COUNTER|temp\(4) & \DATAPATH|PC_COUNTER|temp\(3)
& \DATAPATH|PC_COUNTER|temp\(2) & \DATAPATH|PC_COUNTER|temp\(1) & \DATAPATH|PC_COUNTER|temp\(0));

\RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ <= (\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(0) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(0);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(1) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(1);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(2) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(2);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(3) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(3);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(4) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(4);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(5) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(5);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(6) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(6);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(7) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(7);

\RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(0) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(0);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(1) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(1);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(2) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(2);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(3) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(3);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(4) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(4);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(5) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(5);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(6) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(6);
\RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(7) <= \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(3) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][3]~q\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~1_combout\ <= NOT \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\;
\DECODER|ALT_INV_Equal0~4_combout\ <= NOT \DECODER|Equal0~4_combout\;
\U_LED_LO0|ALT_INV_Mux0~0_combout\ <= NOT \U_LED_LO0|Mux0~0_combout\;
\U_LED_HI0|ALT_INV_Mux0~0_combout\ <= NOT \U_LED_HI0|Mux0~0_combout\;

-- Location: IOOBUF_X39_Y29_N23
\led_hi1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_hi1(0));

-- Location: IOOBUF_X19_Y0_N30
\led_hi1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_hi1(1));

-- Location: IOOBUF_X0_Y11_N16
\led_hi1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_hi1(2));

-- Location: IOOBUF_X39_Y0_N16
\led_hi1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_hi1(3));

-- Location: IOOBUF_X32_Y29_N16
\led_hi1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_hi1(4));

-- Location: IOOBUF_X41_Y5_N2
\led_hi1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_hi1(5));

-- Location: IOOBUF_X39_Y29_N2
\led_hi1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_led_hi1(6));

-- Location: IOOBUF_X14_Y29_N9
\led_lo1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_lo1(0));

-- Location: IOOBUF_X41_Y24_N2
\led_lo1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_lo1(1));

-- Location: IOOBUF_X1_Y0_N2
\led_lo1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_lo1(2));

-- Location: IOOBUF_X9_Y0_N23
\led_lo1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_lo1(3));

-- Location: IOOBUF_X16_Y29_N2
\led_lo1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_lo1(4));

-- Location: IOOBUF_X28_Y0_N2
\led_lo1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_lo1(5));

-- Location: IOOBUF_X5_Y0_N30
\led_lo1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_led_lo1(6));

-- Location: IOOBUF_X30_Y29_N2
\led_hi0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi0(0));

-- Location: IOOBUF_X23_Y29_N2
\led_hi0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi0(1));

-- Location: IOOBUF_X23_Y29_N16
\led_hi0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi0(2));

-- Location: IOOBUF_X23_Y29_N23
\led_hi0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi0(3));

-- Location: IOOBUF_X26_Y29_N9
\led_hi0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi0(4));

-- Location: IOOBUF_X26_Y29_N2
\led_hi0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi0(5));

-- Location: IOOBUF_X26_Y29_N16
\led_hi0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi0(6));

-- Location: IOOBUF_X26_Y29_N30
\led_lo0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo0(0));

-- Location: IOOBUF_X23_Y29_N30
\led_lo0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo0(1));

-- Location: IOOBUF_X30_Y29_N30
\led_lo0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo0(2));

-- Location: IOOBUF_X28_Y29_N23
\led_lo0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo0(3));

-- Location: IOOBUF_X26_Y29_N23
\led_lo0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo0(4));

-- Location: IOOBUF_X28_Y29_N30
\led_lo0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo0(5));

-- Location: IOOBUF_X28_Y29_N9
\led_lo0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo0(6));

-- Location: IOOBUF_X0_Y15_N15
\altera_reserved_tdo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N1
\altera_reserved_tms~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y17_N1
\altera_reserved_tck~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y18_N1
\altera_reserved_tdi~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: LCCOMB_X29_Y23_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\);

-- Location: JTAG_X1_Y15_N0
altera_internal_jtag : cycloneiii_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X22_Y23_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X22_Y23_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X22_Y23_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X22_Y23_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X22_Y23_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X22_Y23_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X24_Y23_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: FF_X24_Y23_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10));

-- Location: LCCOMB_X24_Y23_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: FF_X24_Y23_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11));

-- Location: LCCOMB_X24_Y23_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: FF_X24_Y23_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12));

-- Location: LCCOMB_X24_Y23_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\);

-- Location: FF_X24_Y23_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13));

-- Location: LCCOMB_X24_Y23_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\);

-- Location: FF_X24_Y23_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14));

-- Location: LCCOMB_X24_Y23_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X24_Y23_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15));

-- Location: LCCOMB_X27_Y23_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\);

-- Location: FF_X27_Y23_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6));

-- Location: LCCOMB_X27_Y23_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: FF_X27_Y23_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7));

-- Location: LCCOMB_X27_Y23_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: FF_X27_Y23_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8));

-- Location: LCCOMB_X24_Y23_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: FF_X24_Y23_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1));

-- Location: LCCOMB_X24_Y23_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: FF_X24_Y23_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2));

-- Location: LCCOMB_X24_Y23_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: FF_X24_Y23_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9));

-- Location: LCCOMB_X24_Y23_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\);

-- Location: FF_X24_Y23_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

-- Location: FF_X23_Y23_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9));

-- Location: LCCOMB_X23_Y23_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\);

-- Location: FF_X23_Y23_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8));

-- Location: FF_X23_Y23_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7));

-- Location: FF_X23_Y23_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6));

-- Location: LCCOMB_X23_Y23_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: FF_X23_Y23_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5));

-- Location: FF_X23_Y23_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4));

-- Location: LCCOMB_X23_Y23_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X23_Y23_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3));

-- Location: LCCOMB_X23_Y23_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X23_Y23_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2));

-- Location: LCCOMB_X23_Y23_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X23_Y23_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1));

-- Location: LCCOMB_X23_Y23_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X23_Y23_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0));

-- Location: LCCOMB_X23_Y23_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y23_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: FF_X23_Y23_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X26_Y24_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X29_Y23_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~8\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~10\);

-- Location: LCCOMB_X29_Y23_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\);

-- Location: LCCOMB_X23_Y23_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: FF_X23_Y23_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X27_Y23_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: FF_X27_Y23_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3));

-- Location: LCCOMB_X28_Y23_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~12_combout\);

-- Location: FF_X29_Y23_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3));

-- Location: LCCOMB_X29_Y23_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\);

-- Location: LCCOMB_X29_Y23_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\);

-- Location: FF_X29_Y23_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: LCCOMB_X30_Y23_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\);

-- Location: LCCOMB_X29_Y23_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\);

-- Location: FF_X29_Y23_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0));

-- Location: LCCOMB_X29_Y23_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~7_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~8\);

-- Location: FF_X29_Y23_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1));

-- Location: FF_X29_Y23_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2));

-- Location: LCCOMB_X29_Y23_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\);

-- Location: LCCOMB_X30_Y23_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\);

-- Location: LCCOMB_X29_Y23_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\);

-- Location: LCCOMB_X27_Y23_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: FF_X27_Y23_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4));

-- Location: LCCOMB_X28_Y24_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]~0_combout\);

-- Location: LCCOMB_X28_Y24_N26
\~QIC_CREATED_GND~I\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: LCCOMB_X27_Y23_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X27_Y25_N8
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	datad => VCC,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\);

-- Location: LCCOMB_X27_Y25_N10
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	datad => VCC,
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~13_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~14\);

-- Location: LCCOMB_X27_Y25_N12
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	datad => VCC,
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~14\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~15_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~16\);

-- Location: LCCOMB_X27_Y25_N14
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~17\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	datad => VCC,
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~16\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~17_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~18\);

-- Location: LCCOMB_X27_Y25_N16
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~19\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	datad => VCC,
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~18\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~19_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~20\);

-- Location: LCCOMB_X27_Y25_N18
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~21\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	datad => VCC,
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~20\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~21_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~22\);

-- Location: LCCOMB_X27_Y25_N20
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~23\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	datad => VCC,
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~22\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~23_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~24\);

-- Location: LCCOMB_X27_Y25_N22
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~25\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~24\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~25_combout\);

-- Location: LCCOMB_X29_Y24_N16
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\);

-- Location: LCCOMB_X29_Y24_N10
\RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\);

-- Location: LCCOMB_X24_Y23_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X24_Y23_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LCCOMB_X28_Y23_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X27_Y23_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\);

-- Location: FF_X27_Y23_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1));

-- Location: LCCOMB_X24_Y23_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: LCCOMB_X24_Y23_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X24_Y23_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: FF_X24_Y23_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\);

-- Location: LCCOMB_X27_Y23_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\);

-- Location: FF_X28_Y25_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\);

-- Location: LCCOMB_X27_Y25_N30
\RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\);

-- Location: FF_X29_Y24_N17
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\,
	clrn => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~1_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3));

-- Location: LCCOMB_X28_Y24_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~9_combout\);

-- Location: LCCOMB_X27_Y23_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\);

-- Location: FF_X28_Y24_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~9_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4));

-- Location: FF_X28_Y25_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\);

-- Location: LCCOMB_X29_Y24_N24
\RAM0|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\);

-- Location: FF_X29_Y24_N25
\RAM0|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\);

-- Location: LCCOMB_X28_Y24_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\);

-- Location: FF_X28_Y24_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0));

-- Location: LCCOMB_X28_Y25_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X28_Y25_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\);

-- Location: LCCOMB_X27_Y25_N26
\RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\);

-- Location: LCCOMB_X28_Y25_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X28_Y25_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\);

-- Location: LCCOMB_X28_Y25_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\);

-- Location: FF_X28_Y25_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\);

-- Location: LCCOMB_X28_Y25_N2
\RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\);

-- Location: LCCOMB_X26_Y25_N14
\RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~6_combout\);

-- Location: LCCOMB_X26_Y25_N16
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~6_combout\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\);

-- Location: FF_X26_Y25_N17
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0));

-- Location: LCCOMB_X26_Y25_N30
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~6_combout\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1_combout\);

-- Location: FF_X26_Y25_N31
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2));

-- Location: LCCOMB_X26_Y25_N20
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~6_combout\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\);

-- Location: FF_X26_Y25_N21
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1));

-- Location: LCCOMB_X26_Y25_N12
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~11_combout\);

-- Location: LCCOMB_X27_Y25_N28
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\);

-- Location: LCCOMB_X27_Y25_N6
\RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\);

-- Location: LCCOMB_X27_Y25_N24
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~11_combout\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12_combout\);

-- Location: FF_X27_Y25_N23
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~25_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7));

-- Location: FF_X27_Y25_N21
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~23_combout\,
	asdata => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6));

-- Location: FF_X27_Y25_N19
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~21_combout\,
	asdata => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5));

-- Location: FF_X27_Y25_N17
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~19_combout\,
	asdata => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4));

-- Location: FF_X27_Y25_N15
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~17_combout\,
	asdata => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3));

-- Location: FF_X27_Y25_N13
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~15_combout\,
	asdata => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2));

-- Location: FF_X27_Y25_N11
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~13_combout\,
	asdata => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1));

-- Location: FF_X27_Y25_N9
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	asdata => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

-- Location: FF_X29_Y24_N27
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	clrn => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~1_combout\,
	sload => VCC,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0));

-- Location: LCCOMB_X28_Y24_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\);

-- Location: FF_X28_Y24_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1));

-- Location: LCCOMB_X28_Y23_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X26_Y23_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\);

-- Location: FF_X26_Y23_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0));

-- Location: LCCOMB_X26_Y24_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\);

-- Location: LCCOMB_X26_Y24_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\);

-- Location: LCCOMB_X29_Y24_N30
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\);

-- Location: FF_X29_Y24_N31
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\,
	clrn => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~1_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2));

-- Location: LCCOMB_X26_Y24_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\,
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\);

-- Location: LCCOMB_X26_Y24_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\);

-- Location: FF_X26_Y24_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3));

-- Location: LCCOMB_X29_Y24_N28
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\);

-- Location: FF_X29_Y24_N29
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\,
	clrn => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~1_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1));

-- Location: LCCOMB_X28_Y24_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: FF_X28_Y24_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2));

-- Location: LCCOMB_X28_Y23_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\);

-- Location: FF_X27_Y23_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\);

-- Location: LCCOMB_X26_Y23_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\);

-- Location: FF_X26_Y23_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2));

-- Location: LCCOMB_X24_Y23_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: FF_X24_Y23_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\);

-- Location: FF_X28_Y24_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]~0_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5));

-- Location: LCCOMB_X28_Y23_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X27_Y24_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X27_Y24_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X27_Y24_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X27_Y24_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X27_Y24_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X27_Y24_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X27_Y24_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X27_Y24_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X27_Y24_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\);

-- Location: LCCOMB_X27_Y24_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: FF_X27_Y24_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0));

-- Location: LCCOMB_X29_Y23_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\);

-- Location: LCCOMB_X28_Y23_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X27_Y24_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\);

-- Location: FF_X27_Y24_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1));

-- Location: LCCOMB_X29_Y23_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\);

-- Location: LCCOMB_X29_Y23_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\);

-- Location: LCCOMB_X28_Y23_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X27_Y24_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\);

-- Location: FF_X27_Y24_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2));

-- Location: LCCOMB_X29_Y23_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\);

-- Location: LCCOMB_X29_Y23_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\);

-- Location: LCCOMB_X28_Y23_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X27_Y24_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\);

-- Location: FF_X27_Y24_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3));

-- Location: LCCOMB_X29_Y23_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\);

-- Location: LCCOMB_X29_Y23_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\);

-- Location: LCCOMB_X28_Y23_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X28_Y23_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCCOMB_X28_Y23_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: FF_X28_Y23_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3));

-- Location: FF_X28_Y23_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2));

-- Location: FF_X28_Y23_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1));

-- Location: FF_X28_Y23_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0));

-- Location: LCCOMB_X24_Y24_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\);

-- Location: LCCOMB_X24_Y24_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16\);

-- Location: LCCOMB_X24_Y24_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\);

-- Location: LCCOMB_X24_Y24_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\);

-- Location: FF_X24_Y24_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X24_Y24_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\);

-- Location: FF_X24_Y24_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X24_Y24_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\);

-- Location: LCCOMB_X24_Y24_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\);

-- Location: FF_X24_Y24_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X24_Y24_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\);

-- Location: FF_X24_Y24_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1));

-- Location: FF_X24_Y24_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X24_Y24_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X24_Y24_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X26_Y24_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\);

-- Location: FF_X24_Y24_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X24_Y24_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X24_Y24_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCCOMB_X24_Y24_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: FF_X24_Y24_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X24_Y24_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X26_Y24_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16_combout\);

-- Location: FF_X26_Y24_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X24_Y24_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X24_Y24_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X26_Y24_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: FF_X26_Y24_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X27_Y23_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X27_Y23_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: FF_X27_Y23_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X27_Y23_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: FF_X27_Y23_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X27_Y23_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: FF_X27_Y23_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X27_Y23_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: FF_X27_Y23_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X28_Y23_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X27_Y23_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: FF_X27_Y23_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\);

-- Location: LCCOMB_X27_Y25_N2
\RAM0|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\);

-- Location: FF_X27_Y25_N3
\RAM0|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\);

-- Location: LCCOMB_X23_Y24_N2
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X29_Y25_N0
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => VCC,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\);

-- Location: LCCOMB_X29_Y25_N2
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => VCC,
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\);

-- Location: LCCOMB_X29_Y25_N4
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => VCC,
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~13_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~14\);

-- Location: LCCOMB_X26_Y24_N0
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\);

-- Location: LCCOMB_X28_Y25_N12
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~12_combout\);

-- Location: FF_X29_Y25_N5
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~13_combout\,
	sclr => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X29_Y25_N6
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => VCC,
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~14\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\,
	cout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\);

-- Location: FF_X29_Y25_N7
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\,
	sclr => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCCOMB_X29_Y25_N8
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	cin => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\);

-- Location: FF_X29_Y25_N9
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\,
	sclr => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4));

-- Location: LCCOMB_X29_Y25_N24
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~11_combout\);

-- Location: LCCOMB_X29_Y25_N12
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~11_combout\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\);

-- Location: FF_X29_Y25_N1
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	sclr => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: FF_X29_Y25_N3
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\,
	sclr => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X29_Y25_N10
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LCCOMB_X23_Y24_N0
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LCCOMB_X29_Y25_N20
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\);

-- Location: LCCOMB_X29_Y25_N14
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: LCCOMB_X29_Y25_N16
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X29_Y25_N26
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\);

-- Location: LCCOMB_X28_Y25_N8
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\);

-- Location: LCCOMB_X28_Y25_N10
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~5_combout\);

-- Location: FF_X28_Y25_N9
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X29_Y25_N30
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\);

-- Location: LCCOMB_X29_Y25_N22
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\);

-- Location: LCCOMB_X28_Y25_N14
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\);

-- Location: FF_X28_Y25_N15
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X29_Y25_N18
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X29_Y25_N28
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCCOMB_X28_Y25_N24
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: FF_X28_Y25_N25
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X28_Y25_N0
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\);

-- Location: FF_X28_Y25_N1
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X26_Y25_N26
\RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\);

-- Location: LCCOMB_X24_Y25_N2
\DATAPATH|PC_COUNTER|temp[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[1]~15_combout\ = (\DATAPATH|PC_COUNTER|temp\(0) & (\DATAPATH|PC_COUNTER|temp\(1) $ (VCC))) # (!\DATAPATH|PC_COUNTER|temp\(0) & (\DATAPATH|PC_COUNTER|temp\(1) & VCC))
-- \DATAPATH|PC_COUNTER|temp[1]~16\ = CARRY((\DATAPATH|PC_COUNTER|temp\(0) & \DATAPATH|PC_COUNTER|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|PC_COUNTER|temp\(0),
	datab => \DATAPATH|PC_COUNTER|temp\(1),
	datad => VCC,
	combout => \DATAPATH|PC_COUNTER|temp[1]~15_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[1]~16\);

-- Location: IOIBUF_X0_Y14_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X24_Y25_N3
\DATAPATH|PC_COUNTER|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[1]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(1));

-- Location: M9K_X25_Y25_N0
\RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002A80055000000010002C000F9003FC00FE003D800010000400000003000B2000840000000540088003C40000000500088",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "TestCaseA.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram0:RAM0|altsyncram:altsyncram_component|altsyncram_06u3:auto_generated|altsyncram_1jr2:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \DECODER|ALT_INV_Equal0~4_combout\,
	portbwe => \RAM0|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	portadatain => \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\,
	portbdatain => \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\,
	portaaddr => \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\,
	portbdataout => \RAM0|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y25_N6
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(7),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\);

-- Location: LCCOMB_X26_Y25_N28
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\);

-- Location: LCCOMB_X26_Y25_N22
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2_combout\);

-- Location: FF_X26_Y25_N7
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7));

-- Location: LCCOMB_X26_Y25_N4
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7),
	datab => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(6),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\);

-- Location: FF_X26_Y25_N5
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6));

-- Location: LCCOMB_X26_Y25_N2
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(5),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\);

-- Location: FF_X26_Y25_N3
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5));

-- Location: LCCOMB_X26_Y25_N24
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datab => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(4),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5),
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\);

-- Location: FF_X26_Y25_N25
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4));

-- Location: LCCOMB_X26_Y26_N30
\DATAPATH|EXT_DATABUS|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|EXT_DATABUS|Mux0~1_combout\ = (\RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(7) & !\DECODER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	datac => \DECODER|Equal0~4_combout\,
	combout => \DATAPATH|EXT_DATABUS|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y26_N12
\DATAPATH|EXT_DATABUS|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|EXT_DATABUS|Mux1~1_combout\ = (!\DECODER|Equal0~4_combout\ & \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODER|Equal0~4_combout\,
	datad => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	combout => \DATAPATH|EXT_DATABUS|Mux1~1_combout\);

-- Location: LCCOMB_X26_Y26_N24
\DATAPATH|EXT_DATABUS|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|EXT_DATABUS|Mux3~1_combout\ = (!\DECODER|Equal0~4_combout\ & \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODER|Equal0~4_combout\,
	datad => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	combout => \DATAPATH|EXT_DATABUS|Mux3~1_combout\);

-- Location: LCCOMB_X26_Y26_N14
\DATAPATH|EXT_DATABUS|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|EXT_DATABUS|Mux4~1_combout\ = (!\DECODER|Equal0~4_combout\ & \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|Equal0~4_combout\,
	datac => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	combout => \DATAPATH|EXT_DATABUS|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y26_N4
\DATAPATH|EXT_DATABUS|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|EXT_DATABUS|Mux5~1_combout\ = (!\DECODER|Equal0~4_combout\ & \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODER|Equal0~4_combout\,
	datad => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	combout => \DATAPATH|EXT_DATABUS|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y26_N16
\DATAPATH|EXT_DATABUS|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|EXT_DATABUS|Mux7~1_combout\ = (!\DECODER|Equal0~4_combout\ & \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|Equal0~4_combout\,
	datac => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	combout => \DATAPATH|EXT_DATABUS|Mux7~1_combout\);

-- Location: LCCOMB_X26_Y25_N18
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(3),
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9_combout\);

-- Location: FF_X26_Y25_N19
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3));

-- Location: LCCOMB_X26_Y25_N0
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3),
	datac => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\);

-- Location: FF_X26_Y25_N1
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2));

-- Location: LCCOMB_X26_Y25_N10
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2),
	datac => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\);

-- Location: FF_X26_Y25_N11
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1));

-- Location: LCCOMB_X26_Y25_N8
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1),
	datac => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_b\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\);

-- Location: FF_X26_Y25_N9
\RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\,
	ena => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

-- Location: LCCOMB_X28_Y25_N28
\RAM0|altsyncram_component|auto_generated|mgl_prim2|tdo~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0),
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\);

-- Location: LCCOMB_X28_Y25_N22
\RAM0|altsyncram_component|auto_generated|mgl_prim2|tdo~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\,
	datab => \RAM0|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	datad => \RAM0|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\);

-- Location: LCCOMB_X28_Y25_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \RAM0|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X28_Y23_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X28_Y23_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X28_Y23_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCCOMB_X28_Y23_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: FF_X28_Y23_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\);

-- Location: LCCOMB_X10_Y16_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: CLKCTRL_G0
\altera_internal_jtag~TCKUTAPclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X27_Y23_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: FF_X27_Y23_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5));

-- Location: LCCOMB_X27_Y25_N4
\RAM0|altsyncram_component|auto_generated|mgl_prim2|enable_write~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \RAM0|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\);

-- Location: LCCOMB_X26_Y26_N26
\DATAPATH|EXT_DATABUS|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|EXT_DATABUS|Mux6~1_combout\ = (!\DECODER|Equal0~4_combout\ & \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|Equal0~4_combout\,
	datac => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	combout => \DATAPATH|EXT_DATABUS|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y26_N28
\CONTROLLER|IR_ld\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTROLLER|IR_ld~combout\ = (\CONTROLLER|curr_state.fetch~q\) # (!\CONTROLLER|curr_state.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLLER|curr_state.fetch~q\,
	datad => \CONTROLLER|curr_state.init~q\,
	combout => \CONTROLLER|IR_ld~combout\);

-- Location: FF_X26_Y26_N27
\DATAPATH|I_REG|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|EXT_DATABUS|Mux6~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|IR_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|output\(1));

-- Location: FF_X26_Y26_N17
\DATAPATH|I_REG|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|EXT_DATABUS|Mux7~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|IR_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|output\(0));

-- Location: FF_X26_Y26_N25
\DATAPATH|I_REG|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|EXT_DATABUS|Mux3~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|IR_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|output\(4));

-- Location: LCCOMB_X27_Y26_N6
\CONTROLLER|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTROLLER|Mux2~1_combout\ = (\DATAPATH|I_REG|output\(5)) # ((\DATAPATH|I_REG|output\(1)) # ((\DATAPATH|I_REG|output\(0)) # (\DATAPATH|I_REG|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(5),
	datab => \DATAPATH|I_REG|output\(1),
	datac => \DATAPATH|I_REG|output\(0),
	datad => \DATAPATH|I_REG|output\(4),
	combout => \CONTROLLER|Mux2~1_combout\);

-- Location: FF_X26_Y26_N15
\DATAPATH|I_REG|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|EXT_DATABUS|Mux4~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|IR_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|output\(3));

-- Location: FF_X26_Y26_N31
\DATAPATH|I_REG|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|EXT_DATABUS|Mux0~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|IR_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|output\(7));

-- Location: FF_X26_Y26_N5
\DATAPATH|I_REG|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|EXT_DATABUS|Mux5~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|IR_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|output\(2));

-- Location: FF_X26_Y26_N13
\DATAPATH|I_REG|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|EXT_DATABUS|Mux1~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|IR_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|output\(6));

-- Location: LCCOMB_X27_Y26_N4
\CONTROLLER|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTROLLER|Mux2~0_combout\ = ((\DATAPATH|I_REG|output\(6)) # (\DATAPATH|I_REG|output\(3) $ (!\DATAPATH|I_REG|output\(2)))) # (!\DATAPATH|I_REG|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(3),
	datab => \DATAPATH|I_REG|output\(7),
	datac => \DATAPATH|I_REG|output\(2),
	datad => \DATAPATH|I_REG|output\(6),
	combout => \CONTROLLER|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y26_N20
\CONTROLLER|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTROLLER|Selector2~0_combout\ = (\CONTROLLER|curr_state.fetch~q\) # ((\CONTROLLER|curr_state.decode~q\ & ((\CONTROLLER|Mux2~1_combout\) # (\CONTROLLER|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER|Mux2~1_combout\,
	datab => \CONTROLLER|curr_state.fetch~q\,
	datac => \CONTROLLER|curr_state.decode~q\,
	datad => \CONTROLLER|Mux2~0_combout\,
	combout => \CONTROLLER|Selector2~0_combout\);

-- Location: FF_X26_Y26_N21
\CONTROLLER|curr_state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CONTROLLER|Selector2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|curr_state.decode~q\);

-- Location: LCCOMB_X26_Y26_N18
\CONTROLLER|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTROLLER|Selector3~0_combout\ = (!\CONTROLLER|Mux2~1_combout\ & (\CONTROLLER|curr_state.decode~q\ & (!\DATAPATH|I_REG|output\(3) & !\CONTROLLER|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER|Mux2~1_combout\,
	datab => \CONTROLLER|curr_state.decode~q\,
	datac => \DATAPATH|I_REG|output\(3),
	datad => \CONTROLLER|Mux2~0_combout\,
	combout => \CONTROLLER|Selector3~0_combout\);

-- Location: FF_X26_Y26_N19
\CONTROLLER|curr_state.LDAI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CONTROLLER|Selector3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|curr_state.LDAI~q\);

-- Location: LCCOMB_X26_Y26_N0
\CONTROLLER|curr_state.POST_LD~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTROLLER|curr_state.POST_LD~feeder_combout\ = \CONTROLLER|curr_state.LDAI~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CONTROLLER|curr_state.LDAI~q\,
	combout => \CONTROLLER|curr_state.POST_LD~feeder_combout\);

-- Location: FF_X26_Y26_N1
\CONTROLLER|curr_state.POST_LD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CONTROLLER|curr_state.POST_LD~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|curr_state.POST_LD~q\);

-- Location: LCCOMB_X26_Y26_N10
\CONTROLLER|curr_state.init~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTROLLER|curr_state.init~0_combout\ = !\CONTROLLER|curr_state.POST_LD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CONTROLLER|curr_state.POST_LD~q\,
	combout => \CONTROLLER|curr_state.init~0_combout\);

-- Location: FF_X26_Y26_N11
\CONTROLLER|curr_state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CONTROLLER|curr_state.init~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|curr_state.init~q\);

-- Location: LCCOMB_X26_Y26_N8
\CONTROLLER|curr_state.fetch~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTROLLER|curr_state.fetch~0_combout\ = !\CONTROLLER|curr_state.init~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CONTROLLER|curr_state.init~q\,
	combout => \CONTROLLER|curr_state.fetch~0_combout\);

-- Location: FF_X26_Y26_N9
\CONTROLLER|curr_state.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CONTROLLER|curr_state.fetch~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|curr_state.fetch~q\);

-- Location: LCCOMB_X26_Y26_N22
\DATAPATH|PC_COUNTER|temp[0]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[0]~45_combout\ = \CONTROLLER|curr_state.fetch~q\ $ (\DATAPATH|PC_COUNTER|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLLER|curr_state.fetch~q\,
	datac => \DATAPATH|PC_COUNTER|temp\(0),
	combout => \DATAPATH|PC_COUNTER|temp[0]~45_combout\);

-- Location: FF_X26_Y26_N23
\DATAPATH|PC_COUNTER|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[0]~45_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(0));

-- Location: LCCOMB_X24_Y25_N4
\DATAPATH|PC_COUNTER|temp[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[2]~17_combout\ = (\DATAPATH|PC_COUNTER|temp\(2) & (!\DATAPATH|PC_COUNTER|temp[1]~16\)) # (!\DATAPATH|PC_COUNTER|temp\(2) & ((\DATAPATH|PC_COUNTER|temp[1]~16\) # (GND)))
-- \DATAPATH|PC_COUNTER|temp[2]~18\ = CARRY((!\DATAPATH|PC_COUNTER|temp[1]~16\) # (!\DATAPATH|PC_COUNTER|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|PC_COUNTER|temp\(2),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[1]~16\,
	combout => \DATAPATH|PC_COUNTER|temp[2]~17_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[2]~18\);

-- Location: FF_X24_Y25_N5
\DATAPATH|PC_COUNTER|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[2]~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(2));

-- Location: LCCOMB_X24_Y25_N6
\DATAPATH|PC_COUNTER|temp[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[3]~19_combout\ = (\DATAPATH|PC_COUNTER|temp\(3) & (\DATAPATH|PC_COUNTER|temp[2]~18\ $ (GND))) # (!\DATAPATH|PC_COUNTER|temp\(3) & (!\DATAPATH|PC_COUNTER|temp[2]~18\ & VCC))
-- \DATAPATH|PC_COUNTER|temp[3]~20\ = CARRY((\DATAPATH|PC_COUNTER|temp\(3) & !\DATAPATH|PC_COUNTER|temp[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|PC_COUNTER|temp\(3),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[2]~18\,
	combout => \DATAPATH|PC_COUNTER|temp[3]~19_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[3]~20\);

-- Location: FF_X24_Y25_N7
\DATAPATH|PC_COUNTER|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[3]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(3));

-- Location: LCCOMB_X24_Y25_N8
\DATAPATH|PC_COUNTER|temp[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[4]~21_combout\ = (\DATAPATH|PC_COUNTER|temp\(4) & (!\DATAPATH|PC_COUNTER|temp[3]~20\)) # (!\DATAPATH|PC_COUNTER|temp\(4) & ((\DATAPATH|PC_COUNTER|temp[3]~20\) # (GND)))
-- \DATAPATH|PC_COUNTER|temp[4]~22\ = CARRY((!\DATAPATH|PC_COUNTER|temp[3]~20\) # (!\DATAPATH|PC_COUNTER|temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|PC_COUNTER|temp\(4),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[3]~20\,
	combout => \DATAPATH|PC_COUNTER|temp[4]~21_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[4]~22\);

-- Location: FF_X24_Y25_N9
\DATAPATH|PC_COUNTER|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[4]~21_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(4));

-- Location: LCCOMB_X24_Y25_N10
\DATAPATH|PC_COUNTER|temp[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[5]~23_combout\ = (\DATAPATH|PC_COUNTER|temp\(5) & (\DATAPATH|PC_COUNTER|temp[4]~22\ $ (GND))) # (!\DATAPATH|PC_COUNTER|temp\(5) & (!\DATAPATH|PC_COUNTER|temp[4]~22\ & VCC))
-- \DATAPATH|PC_COUNTER|temp[5]~24\ = CARRY((\DATAPATH|PC_COUNTER|temp\(5) & !\DATAPATH|PC_COUNTER|temp[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|PC_COUNTER|temp\(5),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[4]~22\,
	combout => \DATAPATH|PC_COUNTER|temp[5]~23_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[5]~24\);

-- Location: FF_X24_Y25_N11
\DATAPATH|PC_COUNTER|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[5]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(5));

-- Location: LCCOMB_X24_Y25_N12
\DATAPATH|PC_COUNTER|temp[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[6]~25_combout\ = (\DATAPATH|PC_COUNTER|temp\(6) & (!\DATAPATH|PC_COUNTER|temp[5]~24\)) # (!\DATAPATH|PC_COUNTER|temp\(6) & ((\DATAPATH|PC_COUNTER|temp[5]~24\) # (GND)))
-- \DATAPATH|PC_COUNTER|temp[6]~26\ = CARRY((!\DATAPATH|PC_COUNTER|temp[5]~24\) # (!\DATAPATH|PC_COUNTER|temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|PC_COUNTER|temp\(6),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[5]~24\,
	combout => \DATAPATH|PC_COUNTER|temp[6]~25_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[6]~26\);

-- Location: FF_X24_Y25_N13
\DATAPATH|PC_COUNTER|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[6]~25_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(6));

-- Location: LCCOMB_X24_Y25_N14
\DATAPATH|PC_COUNTER|temp[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[7]~27_combout\ = (\DATAPATH|PC_COUNTER|temp\(7) & (\DATAPATH|PC_COUNTER|temp[6]~26\ $ (GND))) # (!\DATAPATH|PC_COUNTER|temp\(7) & (!\DATAPATH|PC_COUNTER|temp[6]~26\ & VCC))
-- \DATAPATH|PC_COUNTER|temp[7]~28\ = CARRY((\DATAPATH|PC_COUNTER|temp\(7) & !\DATAPATH|PC_COUNTER|temp[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|PC_COUNTER|temp\(7),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[6]~26\,
	combout => \DATAPATH|PC_COUNTER|temp[7]~27_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[7]~28\);

-- Location: FF_X24_Y25_N15
\DATAPATH|PC_COUNTER|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[7]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(7));

-- Location: LCCOMB_X24_Y25_N16
\DATAPATH|PC_COUNTER|temp[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[8]~29_combout\ = (\DATAPATH|PC_COUNTER|temp\(8) & (!\DATAPATH|PC_COUNTER|temp[7]~28\)) # (!\DATAPATH|PC_COUNTER|temp\(8) & ((\DATAPATH|PC_COUNTER|temp[7]~28\) # (GND)))
-- \DATAPATH|PC_COUNTER|temp[8]~30\ = CARRY((!\DATAPATH|PC_COUNTER|temp[7]~28\) # (!\DATAPATH|PC_COUNTER|temp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|PC_COUNTER|temp\(8),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[7]~28\,
	combout => \DATAPATH|PC_COUNTER|temp[8]~29_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[8]~30\);

-- Location: FF_X24_Y25_N17
\DATAPATH|PC_COUNTER|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[8]~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(8));

-- Location: LCCOMB_X24_Y25_N18
\DATAPATH|PC_COUNTER|temp[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[9]~31_combout\ = (\DATAPATH|PC_COUNTER|temp\(9) & (\DATAPATH|PC_COUNTER|temp[8]~30\ $ (GND))) # (!\DATAPATH|PC_COUNTER|temp\(9) & (!\DATAPATH|PC_COUNTER|temp[8]~30\ & VCC))
-- \DATAPATH|PC_COUNTER|temp[9]~32\ = CARRY((\DATAPATH|PC_COUNTER|temp\(9) & !\DATAPATH|PC_COUNTER|temp[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|PC_COUNTER|temp\(9),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[8]~30\,
	combout => \DATAPATH|PC_COUNTER|temp[9]~31_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[9]~32\);

-- Location: FF_X24_Y25_N19
\DATAPATH|PC_COUNTER|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[9]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(9));

-- Location: LCCOMB_X24_Y25_N20
\DATAPATH|PC_COUNTER|temp[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[10]~33_combout\ = (\DATAPATH|PC_COUNTER|temp\(10) & (!\DATAPATH|PC_COUNTER|temp[9]~32\)) # (!\DATAPATH|PC_COUNTER|temp\(10) & ((\DATAPATH|PC_COUNTER|temp[9]~32\) # (GND)))
-- \DATAPATH|PC_COUNTER|temp[10]~34\ = CARRY((!\DATAPATH|PC_COUNTER|temp[9]~32\) # (!\DATAPATH|PC_COUNTER|temp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|PC_COUNTER|temp\(10),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[9]~32\,
	combout => \DATAPATH|PC_COUNTER|temp[10]~33_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[10]~34\);

-- Location: FF_X24_Y25_N21
\DATAPATH|PC_COUNTER|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[10]~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(10));

-- Location: LCCOMB_X24_Y25_N22
\DATAPATH|PC_COUNTER|temp[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[11]~35_combout\ = (\DATAPATH|PC_COUNTER|temp\(11) & (\DATAPATH|PC_COUNTER|temp[10]~34\ $ (GND))) # (!\DATAPATH|PC_COUNTER|temp\(11) & (!\DATAPATH|PC_COUNTER|temp[10]~34\ & VCC))
-- \DATAPATH|PC_COUNTER|temp[11]~36\ = CARRY((\DATAPATH|PC_COUNTER|temp\(11) & !\DATAPATH|PC_COUNTER|temp[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|PC_COUNTER|temp\(11),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[10]~34\,
	combout => \DATAPATH|PC_COUNTER|temp[11]~35_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[11]~36\);

-- Location: FF_X24_Y25_N23
\DATAPATH|PC_COUNTER|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[11]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(11));

-- Location: LCCOMB_X24_Y25_N24
\DATAPATH|PC_COUNTER|temp[12]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[12]~37_combout\ = (\DATAPATH|PC_COUNTER|temp\(12) & (!\DATAPATH|PC_COUNTER|temp[11]~36\)) # (!\DATAPATH|PC_COUNTER|temp\(12) & ((\DATAPATH|PC_COUNTER|temp[11]~36\) # (GND)))
-- \DATAPATH|PC_COUNTER|temp[12]~38\ = CARRY((!\DATAPATH|PC_COUNTER|temp[11]~36\) # (!\DATAPATH|PC_COUNTER|temp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|PC_COUNTER|temp\(12),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[11]~36\,
	combout => \DATAPATH|PC_COUNTER|temp[12]~37_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[12]~38\);

-- Location: FF_X24_Y25_N25
\DATAPATH|PC_COUNTER|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[12]~37_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(12));

-- Location: LCCOMB_X24_Y25_N26
\DATAPATH|PC_COUNTER|temp[13]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[13]~39_combout\ = (\DATAPATH|PC_COUNTER|temp\(13) & (\DATAPATH|PC_COUNTER|temp[12]~38\ $ (GND))) # (!\DATAPATH|PC_COUNTER|temp\(13) & (!\DATAPATH|PC_COUNTER|temp[12]~38\ & VCC))
-- \DATAPATH|PC_COUNTER|temp[13]~40\ = CARRY((\DATAPATH|PC_COUNTER|temp\(13) & !\DATAPATH|PC_COUNTER|temp[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|PC_COUNTER|temp\(13),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[12]~38\,
	combout => \DATAPATH|PC_COUNTER|temp[13]~39_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[13]~40\);

-- Location: FF_X24_Y25_N27
\DATAPATH|PC_COUNTER|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[13]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(13));

-- Location: LCCOMB_X24_Y25_N28
\DATAPATH|PC_COUNTER|temp[14]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[14]~41_combout\ = (\DATAPATH|PC_COUNTER|temp\(14) & (!\DATAPATH|PC_COUNTER|temp[13]~40\)) # (!\DATAPATH|PC_COUNTER|temp\(14) & ((\DATAPATH|PC_COUNTER|temp[13]~40\) # (GND)))
-- \DATAPATH|PC_COUNTER|temp[14]~42\ = CARRY((!\DATAPATH|PC_COUNTER|temp[13]~40\) # (!\DATAPATH|PC_COUNTER|temp\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|PC_COUNTER|temp\(14),
	datad => VCC,
	cin => \DATAPATH|PC_COUNTER|temp[13]~40\,
	combout => \DATAPATH|PC_COUNTER|temp[14]~41_combout\,
	cout => \DATAPATH|PC_COUNTER|temp[14]~42\);

-- Location: FF_X24_Y25_N29
\DATAPATH|PC_COUNTER|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[14]~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(14));

-- Location: LCCOMB_X24_Y25_N30
\DATAPATH|PC_COUNTER|temp[15]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|PC_COUNTER|temp[15]~43_combout\ = \DATAPATH|PC_COUNTER|temp\(15) $ (!\DATAPATH|PC_COUNTER|temp[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|PC_COUNTER|temp\(15),
	cin => \DATAPATH|PC_COUNTER|temp[14]~42\,
	combout => \DATAPATH|PC_COUNTER|temp[15]~43_combout\);

-- Location: FF_X24_Y25_N31
\DATAPATH|PC_COUNTER|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|PC_COUNTER|temp[15]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|curr_state.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|PC_COUNTER|temp\(15));

-- Location: LCCOMB_X23_Y25_N12
\DECODER|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECODER|Equal0~3_combout\ = (\DATAPATH|PC_COUNTER|temp\(14) & (\DATAPATH|PC_COUNTER|temp\(15) & \DATAPATH|PC_COUNTER|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|PC_COUNTER|temp\(14),
	datac => \DATAPATH|PC_COUNTER|temp\(15),
	datad => \DATAPATH|PC_COUNTER|temp\(13),
	combout => \DECODER|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y25_N2
\DECODER|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECODER|Equal0~1_combout\ = (\DATAPATH|PC_COUNTER|temp\(5) & (\DATAPATH|PC_COUNTER|temp\(6) & (\DATAPATH|PC_COUNTER|temp\(7) & \DATAPATH|PC_COUNTER|temp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|PC_COUNTER|temp\(5),
	datab => \DATAPATH|PC_COUNTER|temp\(6),
	datac => \DATAPATH|PC_COUNTER|temp\(7),
	datad => \DATAPATH|PC_COUNTER|temp\(8),
	combout => \DECODER|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y25_N0
\DECODER|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECODER|Equal0~2_combout\ = (\DATAPATH|PC_COUNTER|temp\(9) & (\DATAPATH|PC_COUNTER|temp\(12) & (\DATAPATH|PC_COUNTER|temp\(11) & \DATAPATH|PC_COUNTER|temp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|PC_COUNTER|temp\(9),
	datab => \DATAPATH|PC_COUNTER|temp\(12),
	datac => \DATAPATH|PC_COUNTER|temp\(11),
	datad => \DATAPATH|PC_COUNTER|temp\(10),
	combout => \DECODER|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y25_N0
\DECODER|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECODER|Equal0~0_combout\ = (\DATAPATH|PC_COUNTER|temp\(3) & (\DATAPATH|PC_COUNTER|temp\(2) & (\DATAPATH|PC_COUNTER|temp\(4) & \DATAPATH|PC_COUNTER|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|PC_COUNTER|temp\(3),
	datab => \DATAPATH|PC_COUNTER|temp\(2),
	datac => \DATAPATH|PC_COUNTER|temp\(4),
	datad => \DATAPATH|PC_COUNTER|temp\(1),
	combout => \DECODER|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y25_N14
\DECODER|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECODER|Equal0~4_combout\ = (\DECODER|Equal0~3_combout\ & (\DECODER|Equal0~1_combout\ & (\DECODER|Equal0~2_combout\ & \DECODER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|Equal0~3_combout\,
	datab => \DECODER|Equal0~1_combout\,
	datac => \DECODER|Equal0~2_combout\,
	datad => \DECODER|Equal0~0_combout\,
	combout => \DECODER|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y26_N2
\DATAPATH|EXT_DATABUS|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATAPATH|EXT_DATABUS|Mux2~1_combout\ = (!\DECODER|Equal0~4_combout\ & \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|Equal0~4_combout\,
	datac => \RAM0|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	combout => \DATAPATH|EXT_DATABUS|Mux2~1_combout\);

-- Location: FF_X26_Y26_N3
\DATAPATH|I_REG|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|EXT_DATABUS|Mux2~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CONTROLLER|IR_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|output\(5));

-- Location: LCCOMB_X27_Y26_N8
\U_LED_HI0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI0|Mux6~0_combout\ = (\DATAPATH|I_REG|output\(7) & (\DATAPATH|I_REG|output\(4) & (\DATAPATH|I_REG|output\(5) $ (\DATAPATH|I_REG|output\(6))))) # (!\DATAPATH|I_REG|output\(7) & (!\DATAPATH|I_REG|output\(5) & (\DATAPATH|I_REG|output\(4) $ 
-- (\DATAPATH|I_REG|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(5),
	datab => \DATAPATH|I_REG|output\(4),
	datac => \DATAPATH|I_REG|output\(7),
	datad => \DATAPATH|I_REG|output\(6),
	combout => \U_LED_HI0|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y26_N10
\U_LED_HI0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI0|Mux5~0_combout\ = (\DATAPATH|I_REG|output\(5) & ((\DATAPATH|I_REG|output\(4) & (\DATAPATH|I_REG|output\(7))) # (!\DATAPATH|I_REG|output\(4) & ((\DATAPATH|I_REG|output\(6)))))) # (!\DATAPATH|I_REG|output\(5) & (\DATAPATH|I_REG|output\(6) & 
-- (\DATAPATH|I_REG|output\(4) $ (\DATAPATH|I_REG|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(5),
	datab => \DATAPATH|I_REG|output\(4),
	datac => \DATAPATH|I_REG|output\(7),
	datad => \DATAPATH|I_REG|output\(6),
	combout => \U_LED_HI0|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y26_N12
\U_LED_HI0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI0|Mux4~0_combout\ = (\DATAPATH|I_REG|output\(7) & (\DATAPATH|I_REG|output\(6) & ((\DATAPATH|I_REG|output\(5)) # (!\DATAPATH|I_REG|output\(4))))) # (!\DATAPATH|I_REG|output\(7) & (\DATAPATH|I_REG|output\(5) & (!\DATAPATH|I_REG|output\(4) & 
-- !\DATAPATH|I_REG|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(5),
	datab => \DATAPATH|I_REG|output\(4),
	datac => \DATAPATH|I_REG|output\(7),
	datad => \DATAPATH|I_REG|output\(6),
	combout => \U_LED_HI0|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y26_N22
\U_LED_HI0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI0|Mux3~0_combout\ = (\DATAPATH|I_REG|output\(4) & (\DATAPATH|I_REG|output\(5) $ (((!\DATAPATH|I_REG|output\(6)))))) # (!\DATAPATH|I_REG|output\(4) & ((\DATAPATH|I_REG|output\(5) & (\DATAPATH|I_REG|output\(7) & !\DATAPATH|I_REG|output\(6))) # 
-- (!\DATAPATH|I_REG|output\(5) & (!\DATAPATH|I_REG|output\(7) & \DATAPATH|I_REG|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(5),
	datab => \DATAPATH|I_REG|output\(4),
	datac => \DATAPATH|I_REG|output\(7),
	datad => \DATAPATH|I_REG|output\(6),
	combout => \U_LED_HI0|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y26_N0
\U_LED_HI0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI0|Mux2~0_combout\ = (\DATAPATH|I_REG|output\(5) & (\DATAPATH|I_REG|output\(4) & (!\DATAPATH|I_REG|output\(7)))) # (!\DATAPATH|I_REG|output\(5) & ((\DATAPATH|I_REG|output\(6) & ((!\DATAPATH|I_REG|output\(7)))) # (!\DATAPATH|I_REG|output\(6) & 
-- (\DATAPATH|I_REG|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(5),
	datab => \DATAPATH|I_REG|output\(4),
	datac => \DATAPATH|I_REG|output\(7),
	datad => \DATAPATH|I_REG|output\(6),
	combout => \U_LED_HI0|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y26_N2
\U_LED_HI0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI0|Mux1~0_combout\ = (\DATAPATH|I_REG|output\(5) & (!\DATAPATH|I_REG|output\(7) & ((\DATAPATH|I_REG|output\(4)) # (!\DATAPATH|I_REG|output\(6))))) # (!\DATAPATH|I_REG|output\(5) & (\DATAPATH|I_REG|output\(4) & (\DATAPATH|I_REG|output\(7) $ 
-- (!\DATAPATH|I_REG|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(5),
	datab => \DATAPATH|I_REG|output\(4),
	datac => \DATAPATH|I_REG|output\(7),
	datad => \DATAPATH|I_REG|output\(6),
	combout => \U_LED_HI0|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y26_N28
\U_LED_HI0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI0|Mux0~0_combout\ = (\DATAPATH|I_REG|output\(4) & ((\DATAPATH|I_REG|output\(7)) # (\DATAPATH|I_REG|output\(5) $ (\DATAPATH|I_REG|output\(6))))) # (!\DATAPATH|I_REG|output\(4) & ((\DATAPATH|I_REG|output\(5)) # (\DATAPATH|I_REG|output\(7) $ 
-- (\DATAPATH|I_REG|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(5),
	datab => \DATAPATH|I_REG|output\(4),
	datac => \DATAPATH|I_REG|output\(7),
	datad => \DATAPATH|I_REG|output\(6),
	combout => \U_LED_HI0|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y26_N14
\U_LED_LO0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO0|Mux6~0_combout\ = (\DATAPATH|I_REG|output\(2) & (!\DATAPATH|I_REG|output\(1) & (\DATAPATH|I_REG|output\(0) $ (!\DATAPATH|I_REG|output\(3))))) # (!\DATAPATH|I_REG|output\(2) & (\DATAPATH|I_REG|output\(0) & (\DATAPATH|I_REG|output\(1) $ 
-- (!\DATAPATH|I_REG|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(0),
	datab => \DATAPATH|I_REG|output\(1),
	datac => \DATAPATH|I_REG|output\(2),
	datad => \DATAPATH|I_REG|output\(3),
	combout => \U_LED_LO0|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y26_N24
\U_LED_LO0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO0|Mux5~0_combout\ = (\DATAPATH|I_REG|output\(1) & ((\DATAPATH|I_REG|output\(0) & ((\DATAPATH|I_REG|output\(3)))) # (!\DATAPATH|I_REG|output\(0) & (\DATAPATH|I_REG|output\(2))))) # (!\DATAPATH|I_REG|output\(1) & (\DATAPATH|I_REG|output\(2) & 
-- (\DATAPATH|I_REG|output\(0) $ (\DATAPATH|I_REG|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(0),
	datab => \DATAPATH|I_REG|output\(1),
	datac => \DATAPATH|I_REG|output\(2),
	datad => \DATAPATH|I_REG|output\(3),
	combout => \U_LED_LO0|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y26_N18
\U_LED_LO0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO0|Mux4~0_combout\ = (\DATAPATH|I_REG|output\(2) & (\DATAPATH|I_REG|output\(3) & ((\DATAPATH|I_REG|output\(1)) # (!\DATAPATH|I_REG|output\(0))))) # (!\DATAPATH|I_REG|output\(2) & (!\DATAPATH|I_REG|output\(0) & (\DATAPATH|I_REG|output\(1) & 
-- !\DATAPATH|I_REG|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(0),
	datab => \DATAPATH|I_REG|output\(1),
	datac => \DATAPATH|I_REG|output\(2),
	datad => \DATAPATH|I_REG|output\(3),
	combout => \U_LED_LO0|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y26_N20
\U_LED_LO0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO0|Mux3~0_combout\ = (\DATAPATH|I_REG|output\(0) & (\DATAPATH|I_REG|output\(1) $ ((!\DATAPATH|I_REG|output\(2))))) # (!\DATAPATH|I_REG|output\(0) & ((\DATAPATH|I_REG|output\(1) & (!\DATAPATH|I_REG|output\(2) & \DATAPATH|I_REG|output\(3))) # 
-- (!\DATAPATH|I_REG|output\(1) & (\DATAPATH|I_REG|output\(2) & !\DATAPATH|I_REG|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(0),
	datab => \DATAPATH|I_REG|output\(1),
	datac => \DATAPATH|I_REG|output\(2),
	datad => \DATAPATH|I_REG|output\(3),
	combout => \U_LED_LO0|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y26_N30
\U_LED_LO0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO0|Mux2~0_combout\ = (\DATAPATH|I_REG|output\(1) & (\DATAPATH|I_REG|output\(0) & ((!\DATAPATH|I_REG|output\(3))))) # (!\DATAPATH|I_REG|output\(1) & ((\DATAPATH|I_REG|output\(2) & ((!\DATAPATH|I_REG|output\(3)))) # (!\DATAPATH|I_REG|output\(2) & 
-- (\DATAPATH|I_REG|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(0),
	datab => \DATAPATH|I_REG|output\(1),
	datac => \DATAPATH|I_REG|output\(2),
	datad => \DATAPATH|I_REG|output\(3),
	combout => \U_LED_LO0|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y26_N16
\U_LED_LO0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO0|Mux1~0_combout\ = (\DATAPATH|I_REG|output\(0) & (\DATAPATH|I_REG|output\(3) $ (((\DATAPATH|I_REG|output\(1)) # (!\DATAPATH|I_REG|output\(2)))))) # (!\DATAPATH|I_REG|output\(0) & (\DATAPATH|I_REG|output\(1) & (!\DATAPATH|I_REG|output\(2) & 
-- !\DATAPATH|I_REG|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(0),
	datab => \DATAPATH|I_REG|output\(1),
	datac => \DATAPATH|I_REG|output\(2),
	datad => \DATAPATH|I_REG|output\(3),
	combout => \U_LED_LO0|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y26_N26
\U_LED_LO0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO0|Mux0~0_combout\ = (\DATAPATH|I_REG|output\(0) & ((\DATAPATH|I_REG|output\(3)) # (\DATAPATH|I_REG|output\(1) $ (\DATAPATH|I_REG|output\(2))))) # (!\DATAPATH|I_REG|output\(0) & ((\DATAPATH|I_REG|output\(1)) # (\DATAPATH|I_REG|output\(2) $ 
-- (\DATAPATH|I_REG|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|output\(0),
	datab => \DATAPATH|I_REG|output\(1),
	datac => \DATAPATH|I_REG|output\(2),
	datad => \DATAPATH|I_REG|output\(3),
	combout => \U_LED_LO0|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y16_N0
\auto_hub|~GND\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X23_Y24_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X23_Y23_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: IOIBUF_X21_Y0_N8
\btns[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btns(0),
	o => \btns[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\btns[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btns(1),
	o => \btns[1]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\switches[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(0),
	o => \switches[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\switches[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(1),
	o => \switches[1]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\switches[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(2),
	o => \switches[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\switches[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(3),
	o => \switches[3]~input_o\);

-- Location: IOIBUF_X41_Y21_N22
\switches[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(4),
	o => \switches[4]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\switches[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(5),
	o => \switches[5]~input_o\);

-- Location: IOIBUF_X41_Y7_N15
\switches[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(6),
	o => \switches[6]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\switches[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(7),
	o => \switches[7]~input_o\);
END structure;


