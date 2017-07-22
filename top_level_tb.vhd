--Mitchell Irvin
--Small8
--Section: 1525
--Small8 Top Level Test Bench

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level_tb is
end top_level_tb;

architecture tb of top_level_tb is
	signal clk, rst : std_logic := '0'; 
	signal switches : std_logic_vector(7 downto 0); 
	--controller outputs 
	signal A_ld, D_ld, IR_ld : std_logic; 
	signal PC_sel : std_logic_vector(1 downto 0); 
	signal PCH_ld, PCL_ld, PC_ld, PC_inc, PC_dec : std_logic := '0';
	signal ARH_ld, ARL_ld : std_logic := '0'; 
	signal XL_ld, X_ld, X_inc, X_dec, TEMP_ld : std_logic := '0'; 
	signal SPH_ld, SPL_ld, IN_ld: std_logic := '0'; 
	signal ALU_ld : std_logic; 
	signal A_en, D_en, PCL_en, PCH_en, SPL_en, SPH_en, XL_en, TEMP_en : std_logic := '0'; 
	signal A_ld_mult, D_ld_mult : std_logic := '0';
	signal RD : std_logic := '1'; --ctrl signals for RAM 
	signal WR, RD_dec, WR_dec : std_logic; --include signals to decoder 
	signal addr_sel : std_logic_vector(2 downto 0); 
	signal int_db_sel : std_logic_vector(3 downto 0); 
	signal Cen, Sen, Zen, Ven : std_logic; 
	
	--datapath outputs  
	signal IR : std_logic_vector(7 downto 0);
	signal C, S, Z, V : std_logic_vector(0 downto 0);  
	signal PORT1_ld, PORT0_ld, OUT0_ld, OUT1_ld : std_logic; 
	signal PORT1_in, PORT0_in, OUT1, OUT0 : std_logic_vector(7 downto 0); 
	signal ext_db_sel : std_logic_vector(1 downto 0); 
	signal ext_db, RAM : std_logic_vector(7 downto 0); 
	signal addr_bus : std_logic_vector(15 downto 0); 
	
begin

	--components of top level structure 
	CONTROLLER : entity work.controller 
	port map(
		--inputs to drive logic 
		clk => clk, 
		rst => rst, 
		IR => IR, 
		C_last => C, 
		V_last => V,
		Z_last => Z, 
		S_last => S, 
		--outputs that drive datapath inputs for internal arch
		A_ld => A_ld, 
		D_ld => D_ld, 
		IR_ld => IR_ld, 
		
		PC_sel => PC_sel, 
		PCH_ld => PCH_ld, 
		PCL_ld => PCL_ld, 
		PC_ld => PC_ld, 
		PC_inc => PC_inc, 
		PC_dec => PC_dec, 
		
		ARH_ld => ARH_ld, 
		ARL_ld => ARL_ld, 
		
		XL_ld => XL_ld, 
		X_ld => X_ld, 
		X_inc => X_inc, 
		X_dec => X_dec, 
		TEMP_ld => TEMP_ld, 
		
		SPH_ld => SPH_ld,
		SPL_ld => SPL_ld, 
		ALU_ld => ALU_ld, 
		IN_ld => IN_ld,
		
		A_en => A_en, 
		D_en => D_en, 
		PCL_en => PCL_en,
		PCH_en => PCH_en,
		SPL_en => SPL_en, 
		SPH_en => SPH_en, 
		XL_en => XL_en, 
		TEMP_en => TEMP_en, 
		
		Cen => Cen, 
		Sen => Sen, 
		Zen => Zen, 
		Ven => Ven,

		A_ld_mult => A_ld_mult, 
		D_ld_mult => D_ld_mult, 
		
		--RAM ctrl signals 
		RD => RD_dec, 
		WR => WR_dec, 
		--select lines for addr and internal data buses 
		addr_sel => addr_sel,
		int_db_sel => int_db_sel
	); 
	
	DATAPATH : entity work.datapath 
	port map(
		--input signals
		clk => clk,
		rst => rst, 
		--internal arch signals 
		--include load signals for all registers, switch inputs, and select lines
		A_ld => A_ld, 
		D_ld => D_ld, 
		IR_ld => IR_ld,
		PCH_ld => PCH_ld, 
		PCL_ld => PCL_ld, 
		ARH_ld => ARH_ld, 
		ARL_ld => ARL_ld, 
		XL_ld => XL_ld, 
		SPH_ld => SPH_ld, 
		SPL_ld => SPL_ld, 
		ALU_ld => ALU_ld, 
		IN_ld => IN_ld, 
		A_en => A_en, 
		D_en => D_en, 
		PCL_en => PCL_en,
		PCH_en => PCH_en,
		SPL_en => SPL_en, 
		SPH_en => SPH_en, 
		XL_en => XL_en, 
		TEMP_en => TEMP_en, 
		Cen => Cen, 
		Ven => Ven, 
		Zen => Zen,
		Sen => Sen, 
		--tsen_output : in std_logic; 	--from internal arch
		input => switches, 	--can default to 0 for testing (others => '0')
		int_db_sel => int_db_sel, 
		addr_sel => addr_sel,
		
		--external arch input signals
		PC_sel => PC_sel, 
		PC_ld => PC_ld, 
		PC_inc => PC_inc, 
		PC_dec => PC_dec, 
		X_ld => X_ld, 
		X_inc => X_inc, 
		X_dec => X_dec, 
		TEMP_ld => TEMP_ld,
		
		A_ld_mult => A_ld_mult, 
		D_ld_mult => D_ld_mult, 
		
		PORT1_ld => PORT1_ld, 
		PORT0_ld => PORT0_ld, 
		OUT1_ld => OUT1_ld, 
		OUT0_ld => OUT0_ld, 
		PORT1_in =>	PORT1_in, --x10
		PORT0_in => PORT0_in, --x03
		
		ext_db_sel => ext_db_sel, 
		RAM => RAM, 
		
		--internal arch's output signals 
		--output signals including ALU flags, data bus, and address bus
		C => C, 
		V => V,
		S => S,
		Z => Z, 
		--provide way to wire IR to LEDs
		IR => IR, 
		addr_bus => addr_bus, 
		
		--output signals from external arch
		OUT1 => OUT1, 
		OUT0 => OUT0, 
		ext_db => ext_db
	); 
	
	DECODER : entity work.decoder 
	port map(
		RD_in => RD_dec,		--controller outputs 
		WR_in => WR_dec,
		addr_bus => addr_bus,
		ext_db_sel => ext_db_sel, 
		RD_out => RD, 		--RAM ctrl signals 
		WR_out => WR 
	); 
	
	RAM0 : entity work.ram0
	port map(
		address => addr_bus(7 downto 0), --lower byte of addr
		clock	=> clk, 
		data => ext_db, 
		rden => RD,
		wren => WR,
		q => RAM 
	); 
	
	process
	begin
		rst <= '0'; --rst false 
		wait for 200 ns;	--watch register values as instrs are read 
	
	end process;
	clk <= not clk after 10 ns;

end tb; 