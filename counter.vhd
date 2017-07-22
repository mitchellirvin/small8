--Mitchell Irvin
--Small8
--Section: 1525
--counter with register storage for PC and index

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
	port(
		--provide input signals to control incrementing and decrementing 
		clk, rst, ld, inc, dec : in std_logic;
		input : in std_logic_vector(15 downto 0);
		output : out std_logic_vector(15 downto 0)
	);
end counter;

architecture bhv of counter is
	--temp signal for manipulation, will be wired to output 
	signal temp : std_logic_vector(15 downto 0);
begin
	--sensitive to these variables 
	process(clk, rst, ld, inc)
	begin
		--clear on reset 
		if(rst = '1') then
			temp <= (others => '0');
		--on rising edge of clock
		elsif(rising_edge(clk)) then
			--if load is true, wire input to output 
			if(ld = '1') then
				temp <= input;
			--if dec is true decrement temp 
			elsif(dec = '1') then
				temp <= std_logic_vector(unsigned(temp) - to_unsigned(1,16));
			--if inc is true inc temp 
			elsif(inc = '1') then
				temp <= std_logic_vector(unsigned(temp) + to_unsigned(1,16));
			end if;
		end if;
	end process;
	--wire the temp signal to output 
	output <= temp;
	
end bhv;