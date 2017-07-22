--Mitchell Irvin
--Small8
--Section: 1525
--Small8 Datapath

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
   port (
		--input signals
		clk, rst	: in  std_logic;
		--internal arch signals 
		--include load signals for all registers, switch inputs, and select lines
		A_ld, D_ld, IR_ld, PCH_ld, PCL_ld, ARH_ld, ARL_ld : in std_logic;
		XL_ld, SPH_ld, SPL_ld, ALU_ld, IN_ld : in std_logic; 
		--enables for tristates 
		A_en, D_en, PCL_en, PCH_en, SPL_en, SPH_en, XL_en, TEMP_en : in std_logic;
		Cen, Ven, Zen, Sen : in std_logic; 
		--tsen_output : in std_logic; 	--from internal arch
		input : in std_logic_vector(7 downto 0); 
		int_db_sel : in std_logic_vector(3 downto 0); 
		addr_sel : in std_logic_vector(2 downto 0);
		
		--external arch input signals
		PC_sel : in std_logic_vector(1 downto 0);
		PC_ld, PC_inc, PC_dec : in std_logic; 
		X_ld, X_inc, X_dec : in std_logic; 
		TEMP_ld : in std_logic; 
		A_ld_mult, D_ld_mult : in std_logic; 
		PORT1_ld, PORT0_ld, OUT1_ld, OUT0_ld : in std_logic; 
		PORT1_in, PORT0_in  : in std_logic_vector(7 downto 0);
		ext_db_sel : in std_logic_vector(1 downto 0); 
		RAM : in std_logic_vector(7 downto 0); 
		
		--internal arch's output signals 
		--output signals including ALU flags, data bus, and address bus
		C, V, S, Z : out std_logic_vector(0 downto 0); 
		IR : out std_logic_vector(7 downto 0);  --provide way to wire IR to LEDs
		addr_bus : out std_logic_vector(15 downto 0);
		
		--output signals from external arch
		OUT1, OUT0 : out std_logic_vector(7 downto 0); 
		ext_db : buffer std_logic_vector(7 downto 0)
	);
end datapath;


architecture str of datapath is 

	--internal architecture signals 
	--intermediate signals for flag registers, ALU's Cin and output
	signal CF, ZF, SF, VF, Cin : std_logic_vector(0 downto 0); 
	signal ALU, ALU_buff : std_logic_vector(7 downto 0);
	--register to tristate signals 
	signal A_ts, D_ts, PCL_ts, PCH_ts, SPL_ts, SPH_ts, XL_ts, TEMP_ts : std_logic_vector(7 downto 0);
	--outputs of other registers to be wired to inputs of db mux and addr mux
	signal A, D, PCL, PCH, ARL, ARH, SPL, SPH, XL, IR_BUFF : std_logic_vector(7 downto 0);
	--buffer signal for input register, internal databus 
	signal inBUFF, int_db : std_logic_vector(7 downto 0);
	
	--external arch signals 
	signal PC_input : std_logic_vector(7 downto 0); 
	signal PC, X : std_logic_vector(15 downto 0);
	signal TEMP : std_logic_vector(7 downto 0);
	signal X_addr : std_logic_vector(15 downto 0);
	signal Cin_BUFF : std_logic_vector(0 downto 0); 
	signal product_H, product_L : std_logic_vector(7 downto 0);
	signal PORT0, PORT1 : std_logic_vector(7 downto 0);

begin
	--input register from switches 
	IN_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => IN_ld,
		input => input,
		output => inBUFF
	);
	
	--mux to select what becomes the internal databus signal 
	INT_DATABUS : entity work.mux10_1
	port map(
		in1 => A,
		in2 => D, 
		in3 => PC(7 downto 0),
		in4 => PC(15 downto 8),
		in5 => X(7 downto 0),
		in6 => X(15 downto 8),
		in7 => SPL, 
		in8 => SPH, 
		in9 => ALU,
		in10 => inBUFF,
		in11 => ext_db, 
		in12 => product_L,
		in13 => product_H,
		sel => int_db_sel, 
		output => int_db
	);
	
	--mux to select what is wired to external DB
	EXT_DATABUS : entity work.ext_db_mux
	port map(
		in1 => PORT0, 
		in2 => PORT1, 
		in3 => RAM, 
		in4 => int_db, 
		sel => ext_db_sel, 
		output => ext_db
	); 
	
	--PORTS for final architecture 
	PORT0_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => PORT0_ld,
		input => PORT0_in,
		output => PORT0 --to ext db mux
	);
	PORT1_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => PORT1_ld,
		input => PORT1_in,
		output => PORT1 --to ext db mux
	);
	OUT0_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => OUT0_ld,
		input => ext_db,
		output => OUT0
	);
	OUT1_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => OUT1_ld,
		input => ext_db,
		output => OUT1
	);
	
	--multiplier component for last part of small8
	MULT : entity work.mult
	port map(
		clk => clk, 
		rst => rst, 
		A_ld => A_ld_mult,
		D_ld => D_ld_mult, 
		input => int_db, 
		product_H => product_H, 
		product_L => product_L
	);
	
	--accumulator 
	A_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => A_ld,
		input => int_db,
		output => A_ts
	);
	A_TRI : entity work.tristate 
	port map(
		en => A_en, 
		input => A_ts,
		output => A
	); 
	
	--data 
	D_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => D_ld,
		input => int_db,
		output => D_ts
	);
	D_TRI : entity work.tristate 
	port map(
		en => D_en, 
		input => D_ts,
		output => D
	); 
	
	--address registers (don't need tristates because not wired to DB)
	ARL_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => ARL_ld,
		input => int_db,
		output => ARL
	);
	ARH_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => ARH_ld,
		input => int_db,
		output => ARH
	);
	
	--PC regs
	--select what gets wired to the PC regs 
	PC_MUX : entity work.mux3_1
	port map(
		in1 => ext_db,
		in2 => SPH,
		in3 => SPL,
		sel => PC_sel,
		output => PC_input
	);
	--lower byte of PC
	PCL_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => PCL_ld,
		input => PC_input,
		output => PCL_ts
	);
	PCL_TRI : entity work.tristate 
	port map(
		en => PCL_en, 
		input => PCL_ts,
		output => PCL
	); 
	--upper byte of PC
	PCH_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => PCH_ld,
		input => PC_input,
		output => PCH_ts
	);
	PCH_TRI : entity work.tristate 
	port map(
		en => PCH_en, 
		input => PCH_ts,
		output => PCH
	); 
	--need to be able to manipulate the bytes of the PC
	--use a counter/reg to do so 
	PC_COUNTER : entity work.counter
	port map(
		clk => clk,
		rst => rst, 
		ld => PC_ld, 
		inc => PC_inc, 
		dec => PC_dec, 
		input(15 downto 8) => PCH, 
		input(7 downto 0) => PCL, 
		output => PC
	);
	
	--Index regs
	XL_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => XL_ld,
		input => int_db,
		output => XL_ts
	);
	XL_TRI : entity work.tristate 
	port map(
		en => XL_en, 
		input => XL_ts,
		output => XL
	); 
	--register used for storing data bus byte 
	TEMP_REG : entity work.reg8
	port map(
		clk => clk,
		rst => rst, 
		ld => TEMP_ld,
		input => int_db,
		output => TEMP_ts
	);
	XH_TRI : entity work.tristate 
	port map(
		en => TEMP_en, 
		input => TEMP_ts,
		output => TEMP
	); 
	--counter register to control index 
	X_COUNTER : entity work.counter
	port map(
		clk => clk,
		rst => rst, 
		ld => X_ld, 
		inc => X_inc, 
		dec => X_dec, 
		input(15 downto 8) => int_db, 
		input(7 downto 0) => XL, 
		output => X
	);
	--component to allow us to add the internal DB value to the Index Reg's value
	--this outputs actual index register value 
	X_ADDER : entity work.add8to16 
	port map(
		in1 => X,
		in2 => TEMP, --value previously on internal databus 
		sum => X_addr
	);
	
	--Stack Pointer regs
	SPL_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => SPL_ld,
		input => int_db,
		output => SPL_ts
	);
	SPL_TRI : entity work.tristate 
	port map(
		en => SPL_en, 
		input => SPL_ts,
		output => SPL
	); 
	SPH_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => SPH_ld,
		input => int_db,
		output => SPH_ts
	);
	SPH_TRI : entity work.tristate 
	port map(
		en => SPH_en, 
		input => SPH_ts,
		output => SPH
	); 
	
	--Instruction Reg
	I_REG : entity work.reg8 
	port map(
		clk => clk,
		rst => rst, 
		ld => IR_ld,
		input => int_db,
		output => IR_BUFF
	);
	--wire buffer signal to output 
	IR <= IR_BUFF; 
	
	--ALU 
	ALU_COMPONENT : entity work.alu 
	port map(
		OP => IR_BUFF, 
		A => A,
		D => D, 
		Cin => Cin_BUFF, 
		CF => CF(0),
		VF => VF(0), 
		ZF => ZF(0),
		SF => SF(0), 
		output => ALU_buff
	);
	--ALU buffer register 
	ALU_REG : entity work.reg8
	port map(
		clk => clk,
		rst => rst, 
		ld => ALU_ld,
		input => ALU_buff,
		output => ALU
	);
	
	--Address bus
	ADDR_COMPONENT : entity work.mux4_1 
	port map(
		in1(15 downto 8) => ARH, -- '000' selects addr regs 
		in1(7 downto 0) => ARL,
		in2 => PC, -- '001' selects Program Counter 
		in3 => X, -- '010' selects Index reg 
		in4(15 downto 8) => SPH, -- '011' selects stack pointer 
		in4(7 downto 0) => SPL,  
		in5 => X_addr, -- '100' selects databus and index summed
		sel => addr_sel,
		output => addr_bus 
	);
	
	--Status flag registers 
	C_REG : entity work.reg
	port map(
		clk => clk,
		rst => rst,
		en => Cen,
		input => CF,
		output => Cin_BUFF
	);
	C <= Cin_BUFF; --wire buffer signal to C output 
	Z_REG : entity work.reg
	port map(
		clk => clk,
		rst => rst,
		en => Zen,
		input => ZF,
		output => Z
	);
	S_REG : entity work.reg
	port map(
		clk => clk,
		rst => rst,
		en => Sen,
		input => SF,
		output => S
	);
	V_REG : entity work.reg
	port map(
		clk => clk,
		rst => rst,
		en => Ven,
		input => VF,
		output => V
	);
	
	--output to external data bus is tri stated
	--TS_OUTPUT : entity work.tristate 
	--port map(
	--	en => tsen_output, 
	--	input => int_db, 
	--	output => ext_db
	--);

end str; 