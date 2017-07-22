--Mitchell Irvin
--Small8
--Section: 1525
--13 to 1 MUX for internal data bus

library ieee;
use ieee.std_logic_1164.all;

entity mux10_1 is
	generic(
		width : positive := 8
	);
	port(
		in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13 : in std_logic_vector(width-1 downto 0);
		sel : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(width-1 downto 0)
	);
end mux10_1;

architecture bhv of mux10_1 is
begin
	process(sel, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13)
	begin
		case sel is
			when "0000" =>
				output <= in1;
			when "0001" =>
				output <= in2;
			when "0010" =>
				output <= in3;
			when "0011" =>
				output <= in4;
			when "0100" =>
				output <= in5;
			when "0101" =>
				output <= in6;
			when "0110" =>
				output <= in7;
			when "0111" =>
				output <= in8;
			when "1000" =>
				output <= in9;
			when "1001" =>
				output <= in10;
			when "1010" =>
				output <= in11;
			when "1011" =>
				output <= in12;
			when "1100" =>
				output <= in13;
			when others =>
				output <= (others => '0');
		end case;
	end process;
end bhv;
	
