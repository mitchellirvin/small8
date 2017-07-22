--Mitchell Irvin
--Lab 7
--Section: 1525
--8 Bit Storage Reg

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--register entity for datapath1
entity reg8 is
	--must have enable input that allows/prevents data from being stored
   port (
		clk, rst, ld	: in  std_logic;
		input  	: in  std_logic_vector( 7 downto 0 );
		output  	: out  std_logic_vector( 7 downto 0 )
	);
end reg8;

--define behavior for our register
architecture bhv of reg8 is
begin
	process(clk, rst)
	begin
		if(rst = '1') then
			output <= "00000000"; 
		--on rising edge of clock, if enable is true send input to output
		elsif(rising_edge(clk)) then
			if(ld = '1') then
				output <= input;
			end if;
		end if;
	end process;
end bhv;