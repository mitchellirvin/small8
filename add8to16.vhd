--Mitchell Irvin
--Small8
--Section: 1525
--component to add internal db to index register value 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add8to16 is
	port(
		in1 : in std_logic_vector(15 downto 0);
		in2 : in std_logic_vector(7 downto 0);
		sum : out std_logic_vector(15 downto 0)
	);
end add8to16;

architecture bhv of add8to16 is
--no intermediate signals 
begin
	process(in1, in2)
	--temp var for arithmetic 
	variable temp : std_logic_vector(15 downto 0);
	begin
		--add in2 to in1 and store in temp var 
		temp := std_logic_vector(resize(unsigned(in2), 16) + unsigned(in1));
		--wire temp to sum output 
		sum <= temp;
	end process;
end bhv;