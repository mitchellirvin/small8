--Mitchell Irvin
--Small8
--Section: 1525
--Storage Reg for CVSZ flags

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg is
    port (
        clk, rst, en   : in  std_logic;
        input  : in  std_logic_vector(0 downto 0);
        output : out std_logic_vector(0 downto 0)
		  );
end reg;

architecture BHV of reg is
begin
	process(clk, rst)
	begin
		if(rst = '1') then
			output <= "0";
		elsif(rising_edge(clk)) then
			if(en = '1') then
				output <= input;
			end if;
		end if;
	end process;
end BHV;