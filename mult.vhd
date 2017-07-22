--Mitchell Irvin
--Small8
--Section: 1525
--mult component 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult is
	port(
		clk, rst, A_ld, D_ld : in std_logic;
		input : in std_logic_vector(7 downto 0);
		product_H, product_L : out std_logic_vector(7 downto 0)
	);
end mult;
	
architecture bhv of mult is
--no intermediate signals 
begin
	process(clk, rst)
	--temp vars to hold the product and the values of A and D inputs 
	variable product : std_logic_vector(15 downto 0);
	variable A, D : unsigned(7 downto 0);
	begin
		--clear if reset is true 
		if(rst = '1') then
			D := (others => '0');
			A := (others => '0');
			product := (others => '0');
			--on rising edge of clock 
		elsif(rising_edge(clk)) then
			--load A if ld is true 
			if(A_ld = '1') then
				A := unsigned(input);
			--load D if ld is true 
			elsif(D_ld = '1') then
				D := unsigned(input);
			end if;
			--perform multiplication
			product := std_logic_vector(A * D);
			--assign upper and lower bytes of product to outputs 
			product_L <= product(7 downto 0);
			product_H <= product(15 downto 8);
		end if;
	end process;
end bhv;	
	