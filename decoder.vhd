library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is
	port(
		addr_bus : in std_logic_vector(15 downto 0);
		RD_in : in std_logic;
		WR_in : in std_logic;
		OUT0_en : out std_logic;
		OUT1_en : out std_logic;
		ext_db_sel : out std_logic_vector(1 downto 0);
		RD_out : out std_logic;
		WR_out : out std_logic
	);
end decoder;

architecture bhv of decoder is
begin
	process(addr_bus, RD_in, WR_in)
	begin
		ext_db_sel <= "00";
		OUT0_en <= '0';
		OUT1_en <= '0';
		RD_out <= '0';
		WR_out <= '0';
		
		if(addr_bus = x"FFFE" and RD_in = '1') then
			ext_db_sel <= "00";
			OUT0_en <= '0';
			OUT1_en <= '0';
			RD_out <= '0';
			WR_out <= '0';
		elsif(addr_bus = x"FFFE" and WR_in = '1') then
			ext_db_sel <= "11";
			OUT0_en <= '1';
			OUT1_en <= '0';
			RD_out <= '0';
			WR_out <= '0';
		elsif(addr_bus = x"FFFF" and RD_in = '1') then
			ext_db_sel <= "01";
			OUT0_en <= '0';
			OUT1_en <= '0';
			RD_out <= '0';
			WR_out <= '0';
		elsif(addr_bus = x"FFFF" and WR_in = '1') then
			ext_db_sel <= "11";
			OUT0_en <= '0';
			OUT1_en <= '1';
			RD_out <= '0';
			WR_out <= '0';
		elsif(addr_bus /= x"FFFF" and addr_bus /= x"FFFE" and RD_in = '1') then
			ext_db_sel <= "10";
			OUT0_en <= '0';
			OUT1_en <= '0';
			RD_out <= '1';
			WR_out <= '0';
		elsif(addr_bus /= x"FFFF" and addr_bus /= x"FFFE" and WR_in = '1') then
			ext_db_sel <= "11";
			OUT0_en <= '0';
			OUT1_en <= '0';
			RD_out <= '0';
			WR_out <= '1';
		end if;
	end process;
end bhv;