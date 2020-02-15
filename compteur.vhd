library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity compteur is
	port(	clk, reset : in std_logic;
			periode : in std_logic_vector (15 downto 0);
			--cpt_gen : in std_logic;
			end_periode : out std_logic;
			cpt : out std_logic_vector (15 downto 0));
			
end compteur;


architecture dataflow of compteur is

begin

process (clk, reset) is

variable cpt_var : std_logic_vector (15 downto 0);
variable lock_count : std_logic_vector (1 downto 0);
variable half_cycle : std_logic;
begin

	if(reset = '1') then 
		cpt <= "0000000000000000";
		end_periode <= '0';
		cpt_var := "0000000000000000";
		lock_count := "10";
	elsif(clk'event and clk = '1') then 
		
		---------compteur symétrique---------------------
		if(lock_count = "11") then
			cpt_var := cpt_var + '1';
		elsif(lock_count = "00") then 
			cpt_var := cpt_var - '1';
		else
			cpt_var := cpt_var;
		end if;
		
		---------gestion fin periode-----------------------------
		if (half_cycle = '1' and cpt_var = "0000000000000000") then
			end_periode <= '1';
		else 
			end_periode <= '0';
		end if;
		
		--------gestion du comteur symétrique------------
		if(cpt_var = "0000000000000000") then 
			lock_count := "11";
			half_cycle := '0';
		elsif(cpt_var = '0'&periode(15 downto 1)) then
			lock_count := "00";
			half_cycle := '1';
		end if;
		
		---------copie valeur compteur en sortie---------
		cpt <= cpt_var; 
	
	end if;

end process;

end dataflow;




----------------------------------------------------------------------------
