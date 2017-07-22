LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY decoder7seg_tb IS
END decoder7seg_tb;

ARCHITECTURE behavior OF decoder7seg_tb IS

SIGNAL input : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL output : STD_LOGIC_VECTOR(6 downto 0);

--for reusability of this component
COMPONENT decoder7seg_tb
	PORT( input : IN STD_LOGIC_VECTOR(3 downto 0);
		output : OUT STD_LOGIC_VECTOR(6 downto 0)
	);
END COMPONENT;
	
BEGIN
	UUT : ENTITY work.decoder7seg
		PORT MAP( input => input, 
			output => output
		);
		
	PROCESS
	BEGIN
		FOR i IN 0 TO 15 LOOP
			input <= STD_LOGIC_VECTOR( TO_UNSIGNED(i, 4) );
			WAIT FOR 10 ns;
		END LOOP;
		WAIT;		
	END PROCESS;
		
END behavior;

