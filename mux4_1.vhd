--Mitchell Irvin
--Small8
--Section: 1525
--4 to 1 MUX

library ieee;
use ieee.std_logic_1164.all;

entity mux4_1 is
  port(
    in1, in2, in3, in4, in5    : in std_logic_vector(15 downto 0);
    sel    : in  std_logic_vector(2 downto 0);
    output : out std_logic_vector(15 downto 0));
end mux4_1;

architecture BHV of mux4_1 is
begin
	process(sel, in1, in2, in3, in4, in5)
	begin
		case sel is 
			when "000" =>
				output <= in1;
			when "001" =>
				output <= in2;
			when "010" =>
				output <= in3;
			when "011" =>
				output <= in4;
			when "100" =>
				output <= in5;
			when others => 
				output <= (others => '0');
		end case;
	end process;
end BHV;