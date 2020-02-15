library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
	Port ( clk 		: in  STD_LOGIC;    
			 reset	: in  STD_LOGIC;    
			 periode : in  STD_LOGIC_VECTOR (15 downto 0);
			 start_stop : in std_logic;
			 end_periode 		: out STD_LOGIC; 		-- pour la détection de fin de cycle
			 cpt 		: out STD_LOGIC_VECTOR(15 downto 0));    
end counter;

architecture dataflow of counter is
begin

    

process (clk, reset)
variable count   : STD_LOGIC_VECTOR (15 downto 0);
variable up_down : std_logic_vector (1 downto 0);		-- controle de la direction du compteur
constant zeros : std_logic_vector (15 downto 0) := (others => '0');
begin

	if (reset='0') then
		count := (others => '0');
		up_down := "11";
		cpt <= (others => '0');
		end_periode <= '0';
				
	elsif(clk'Event and clk = '1') then


		----------------------counter-------------------
		if (up_down = "10") then 
			count := count + '1';



		----------------------counter down---------------
		elsif (up_down = "01") then 
			count := count - '1';
			
		----------------------maintain---------------------
		elsif (up_down = "11" or up_down = "00") then 
			count := count;
		end if;



		------------------manage up_down------------------

		---- Tip : counter up priority over counter down
		---- help avoid error at reset system
		if (start_stop = '0' or periode = zeros) then 
			up_down := "00";
		elsif (start_stop = '1' and count = zeros) then 
			up_down := "10";
		elsif (start_stop = '1' and count = '0'&periode(15 downto 1)) then
		up_down := "01";
		end if;
		
			-----------------manage FC--------------------------
		
		if (count = periode) then --- System reset case take into account
			end_periode <= '1';
		elsif (up_down = "01" and count = zeros + '1') then
			end_periode <= '1';
		else
			end_periode <= '0';
		end if;
  
	end if;
	
	------------------set up outputs--------------------
	cpt <= count;			
end process;	
		  
end dataflow;		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
