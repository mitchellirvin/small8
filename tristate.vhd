--Mitchell Irvin
--Lab 7
--Section: 1525
--8 Bit Tri-state buffer

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tristate is
	port(
		en    : in  std_logic;
		input  : in  std_logic_vector(7 downto 0);
		output : out std_logic_vector(7 downto 0)
	);
end tristate; 

architecture bhv of tristate is
begin
	output <= input when (en = '1') else "ZZZZZZZZ";
end bhv; 