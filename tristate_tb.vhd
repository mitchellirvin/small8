library ieee;
use ieee.std_logic_1164.all;

entity tristate_tb is
end tristate_tb;

architecture TB of tristate_tb is

	signal en : std_logic;
	signal input, output : std_logic_vector(7 DOWNTO 0); 

begin

	TRISTATE : entity work.tristate 
	port map(
		en => en,
		input => input,
		output => output
	);
	process 
	begin
		input <= "00000001";
		en <= '1'; 
		assert(output = input) report "tristate failed w/ en = '1'" severity warning;
		
		wait for 500 ns; 
		
		en <= '0'; 
		wait for 10 ns; 
		assert(output = "ZZZZZZZZ") report "tristate failed w/ en = '0'" severity warning;
		
		wait for 500 ns; 
		
		report "SIMULATION FINISHED!";
		wait;
	
	end process; 


end TB;