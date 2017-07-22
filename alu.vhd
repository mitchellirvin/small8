--Mitchell Irvin
--Small8
--Section: 1525
--Small8 ALU

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is 
	generic(
		width : positive := 8
	);
	port(
		A, D : in std_logic_vector(width-1 downto 0);
		OP : in std_logic_vector(7 downto 0);
		Cin : in std_logic_vector(0 downto 0);
		CF, VF, ZF, SF : out std_logic;
		output : out std_logic_vector(width-1 downto 0)
	);
end entity; 


architecture bhv of ALU is 
--no intermediate signals 
begin

	process(OP, A, D, Cin)
	--need variables to handle arithmetic logic
	--one bit wider to handle overflow
	variable add_sub : std_logic_vector(width downto 0); 
	--normal width to handle logical operators (and/or/etc.) 
	variable logic : std_logic_vector(width-1 downto 0);
	begin
		--clear flags and output on each iteration 
		CF <= '0';
		VF <= '0';
		ZF <= '0';
		SF <= '0';
		output <= (others => '0');
		
		case OP is
			when x"84" => --ldai 
				SF <= D(width-1);	--signed flag is most significant bit of data bus 
				output <= D;	--output is value on data bus
				if(unsigned(D) = 0) then	--if data bus is 0 set Z flag
					ZF <= '1';
				end if;
			when x"88" => --ldaa
				SF <= D(width-1);	--signed flag is most significant bit of data bus 
				output <= D;	--output is value on data bus
				if(unsigned(D) = 0) then	--if data bus is 0 set Z flag
					ZF <= '1';
				end if;
			when others =>
				null; 
		end case; 		
		
	end process; 

end bhv; 