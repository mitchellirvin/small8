--Mitchell Irvin
--Lab 7
--Section: 1525
--8 Bit tristate reg

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--register entity for datapath1
entity reg8tristate is
	--must have enable input that allows/prevents data from being stored
   port (
		clk, ld, en	: in  std_logic;
		input  		: in  std_logic_vector( 7 downto 0 );
		output  		: out  std_logic_vector( 7 downto 0 )
	);
end reg8tristate;

--define behavior for our register
architecture bhv of reg8tristate is
begin
	process(clk)
	begin
		--on rising edge of clock, if enable is true send input to output
		if(rising_edge(clk)) then
			if(en = '1') then
				if(ld = '1') then
					output <= input;
				end if; 
			else 
				output <= "ZZZZZZZZ";
			end if;
		end if;
	end process;
end bhv;