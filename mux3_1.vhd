--Mitchell Irvin
--Small8
--Section: 1525
--Small8 mux3_1

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux3_1 is 
	port(
		in1, in2, in3 : in std_logic_vector(7 downto 0);
		sel : in std_logic_vector(1 downto 0); 
		output : out std_logic_vector(7 downto 0)
	);
end mux3_1;

architecture bhv of mux3_1 is
begin
	process(sel, in1, in2, in3)
	begin
		case sel is
			when "00" =>
				output <= in1;
			when "01" => 
				output <= in2;
			when "10" =>
				output <= in3;
			when others =>
				output <= (others => '0');
		end case;
	end process;
end bhv;