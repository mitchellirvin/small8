library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg8tristate_tb is
end reg8tristate_tb;

architecture TB of reg8tristate_tb is
	signal clk : std_logic := '0';
	signal ld, en : std_logic;
	signal input, output : std_logic_vector(7 DOWNTO 0); 

begin

	REG8TRISTATE : entity work.reg8tristate
	port map(
		clk => clk,
		ld => ld,
		en => en, 
		input => input,
		output => output
	);
	
	clk <= not clk after 50 ns;
	
	process 
	begin
		en <= '0'; 
		ld <= '1'; 
		for i in 0 to 50 loop
			input <= std_logic_vector(to_unsigned(i,8));
			wait for 50 ns; 
		end loop;
		
		ld <= '0';
		for i in 0 to 50 loop
			input <= std_logic_vector(to_unsigned(i,8));
			wait for 50 ns; 
		end loop;
		
		en <= '1'; 
		ld <= '1'; 
		for i in 0 to 50 loop
			input <= std_logic_vector(to_unsigned(i,8));
			wait for 50 ns; 
		end loop;
		
		ld <= '0';
		for i in 0 to 50 loop
			input <= std_logic_vector(to_unsigned(i,8));
			wait for 50 ns; 
		end loop;
		
	end process; 


end TB;