library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MLI is
	Port ( clk 			: in  std_logic;    
			 reset		: in  std_logic;    
			 tm			: in  std_logic_vector (15 downto 0);
			 start_stop : in std_logic;
			 alpha		: in std_logic_vector (15 downto 0);
			 cpt 			: in std_logic_vector (15 downto 0);
			 high_line 	: out std_logic;
			 low_line	: out std_logic);    
end MLI;


architecture dataflow of MLI is

begin

process (clk, reset)
variable var_high_line : std_logic;
variable var_low_line : std_logic;
begin

	if(reset = '0') then
		high_line <= '0';
		low_line	 <= '0';
		
		var_high_line := '0';
		var_low_line := '0';
	
	elsif(clk'event and clk = '1') then
		--------------Low line--------------------
		if(start_stop = '1' and (cpt < (alpha - tm) or cpt = (alpha - tm))) then
			var_low_line := '1';
		else 
			var_low_line := '0';
		end if;
		
		--------------High line-------------------
		if(start_stop = '1' and (cpt > (alpha + tm) or cpt = (alpha + tm))) then 
			var_high_line := '1';
		else 
			var_high_line := '0';
		end if;	
	
	--pour eviter que d'avoir '1' sur les deux lignes exples : on appuis sur start avec une période à 0, alpha et tm à zero
	  
	  high_line <= var_high_line and (var_high_line xor var_low_line);
	  low_line 	<= var_low_line and (var_high_line xor var_low_line);	
	end if;
end process;

end dataflow;