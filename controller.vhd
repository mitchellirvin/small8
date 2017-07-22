--Mitchell Irvin
--Small8
--Section: 1525
--Small8 Controller

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
   port(
		--inputs to drive logic 
		clk, rst : in std_logic;
		IR : in std_logic_vector(7 downto 0);
		--status flags from ALU 
		C_last, V_last, Z_last, S_last : in std_logic_vector(0 downto 0);
		
		--outputs that drive datapath inputs for internal arch
		A_ld, D_ld, IR_ld, PCH_ld, PCL_ld, ARH_ld, ARL_ld : out std_logic;
		--enables that allow register values to be wired to internal DB
		A_en, D_en, PCL_en, PCH_en, SPL_en, SPH_en, XL_en, TEMP_en : out std_logic; 
		XL_ld, SPH_ld, SPL_ld, ALU_ld, IN_ld : out std_logic; 
		Cen, Sen, Zen, Ven : out std_logic;
		
		PC_sel : out std_logic_vector(1 downto 0);
		PC_ld, PC_inc, PC_dec : out std_logic; 
		X_ld, X_inc, X_dec : out std_logic; 
		TEMP_ld : out std_logic; 
		A_ld_mult, D_ld_mult : out std_logic; 
		
		--RAM ctrl signals 
		RD, WR : out std_logic;
		--select lines for addr and internal databus 
		addr_sel : out std_logic_vector(2 downto 0);
		int_db_sel : out std_logic_vector(3 downto 0)
	);
end controller;


architecture str of controller is 

	--define states as defined in ASM 
	type STATE is (
		init, fetch, decode, 
		LDAI, 
		LDAA0, LDAA1, LDAA2, LDAA3, LDAA4, LDAA5, LDAA_END,
		POST_LD
	);
	signal curr_state, next_state : STATE;

begin
	--process to handle reset and state incrementing 
	process(clk, rst)
	begin
		if(rst = '1') then
			curr_state <= init;
		elsif(rising_edge(clk)) then
			curr_state <= next_state;
		end if;
	end process;
	
	--process to handle state logic for outputs that drive datapath 
	process(curr_state, C_last, V_last, Z_last, S_last, IR)
	begin
		--define default values for each output signal 
		next_state <= curr_state;
		IR_ld <= '0'; 
		A_ld <= '0';
		D_ld <= '0';
		
		PCH_ld <= '0';
		PCL_ld <= '0';
		PC_ld <= '0';
		PC_inc <= '0';
		PC_dec <= '0';
		PC_sel <= "00"; 
		
		ARH_ld <= '0';
		ARL_ld <= '0'; 
		
		X_ld <= '0';
		XL_ld <= '0';
		X_inc <= '0';
		X_dec <= '0'; 
		TEMP_ld <= '0'; 
		
		SPH_ld <= '0';
		SPL_ld <= '0';
		
		ALU_ld <= '0';
		IN_ld <= '0'; 
		
		A_en <= '0';  
		D_en <= '0'; 
		PCL_en <= '0'; 
		PCH_en <= '0'; 
		SPL_en <= '0'; 
		SPH_en <= '0';  
		XL_en <= '0';  
		TEMP_en <= '0'; 
		
		Cen <= '0';
		Sen <= '0';
		Zen <= '0';
		Ven <= '0'; 
		
		A_ld_mult <= '0';
		D_ld_mult <= '0';
		
		RD <= '1'; 
		WR <= '0'; 

		--default internal data bus to select external data bus
		int_db_sel <= "1010";
		--default address bus to select PC
		addr_sel <= "001"; 
		
		case curr_state is
		
			when init => 
				RD <= '1';	--reading from mem
				int_db_sel <= "1010"; -- wire external DB to IR
				addr_sel <= "001"; --PC -> addr bus 
				IR_ld <= '1'; --set IR load to true
				next_state <= fetch;
				
			when fetch =>
				RD <= '1';	--reading from mem
				IR_ld <= '1'; --set IR load to false
				ALU_ld <= '1'; --load ALU in prep for OPs
				next_state <= decode; --increment state 
				PC_inc <= '1'; --inc PC to next addr
				
			when decode => 
				case IR is
					--x reads as hex val 
					when x"84" =>
						next_state <= LDAI;
					when x"88" =>
						next_state <= LDAA0;
					when others => 
						null; 
				end case; 
				
			when LDAI =>	--load into A whatever is at PC in mem 
				RD <= '1'; 	--reading from mem
				int_db_sel <= "1010"; -- wire external DB to IR
				A_ld <= '1'; --load int_db to A 
				next_state <= POST_LD; --enable flags for a load instr 
				
			when POST_LD =>	--enable flags for load instr 
				Zen <= '1'; 
				Sen <= '1'; 
				next_state <= init;  	--fetch next instr 
				
			when others =>
				null; 
				
		end case; 
	
	end process; --end state logic 
	
	
		
end str; 