library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity lock_data is
	Port (
	       
			 clk, reset: in  std_logic;
			 i_alpha_U     : in  std_logic_vector (15 downto 0);  
			 i_alpha_V     : in  std_logic_vector (15 downto 0); 
			 i_alpha_W     : in  std_logic_vector (15 downto 0); 
			 i_tm 		   : in  std_logic_vector (15 downto 0); 
			 i_periode     : in  std_logic_vector (15 downto 0);
			 i_start_stop 	: in 	std_logic;
			 i_Fc				: in	std_logic;
			 
			 o_alpha_U   	: out  std_logic_vector (15 downto 0);  
			 o_alpha_V  	: out  std_logic_vector (15 downto 0); 
			 o_alpha_W  	: out  std_logic_vector (15 downto 0); 
			 o_tm 			: out  std_logic_vector (15 downto 0); 
			 o_periode  	: out  std_logic_vector (15 downto 0);
			 o_start_stop 	: out 	std_logic);    
end lock_data;

architecture arch of lock_data is

signal sig_alpha_U : std_logic_vector (15 downto 0);  
signal sig_alpha_V : std_logic_vector (15 downto 0); 
signal sig_alpha_W : std_logic_vector (15 downto 0); 
signal sig_tm : std_logic_vector (15 downto 0); 
signal sig_periode : std_logic_vector (15 downto 0);
signal sig_start_stop : std_logic;
 
begin

process (clk, reset)

variable v_alpha_U   	:   std_logic_vector (15 downto 0);  
variable v_alpha_V  		:   std_logic_vector (15 downto 0); 
variable v_alpha_W  		:   std_logic_vector (15 downto 0); 
variable v_tm 				:   std_logic_vector (15 downto 0); 
variable v_periode  		:   std_logic_vector (15 downto 0);
variable v_start_stop 	:   std_logic;

begin
	if (reset = '0') then
		o_alpha_U   <= "0000000000001000";--(others => '0');
		o_alpha_V   <= "0000000000001000";--(others => '0');
		o_alpha_W   <= "0000000000001000";--(others => '0');
		o_tm		   <= "0000000000000010";--(others => '0');
		o_periode	<= "0000000000000000";--(others => '0');					
		o_start_stop <= '0';
		
		v_alpha_U   := "0000000000001000";--(others => '0');
		v_alpha_V   := "0000000000001000";--(others => '0');
		v_alpha_W   := "0000000000001000";--(others => '0');
		v_tm		   := "0000000000000010";--(others => '0');
		v_periode	:= "0000000000000000";--(others => '0');					
		v_start_stop := '0';

	elsif (clk'event and clk = '1') then
		if (i_Fc = '1') then
			
			v_alpha_W   	:= i_alpha_W;
			v_alpha_U   	:= i_alpha_U;
			v_alpha_V   	:= i_alpha_V;
			v_tm		   	:= i_tm;
			v_periode		:= i_periode;					
			v_start_stop 	:= i_start_stop;
			
			
			--v_alpha_W   	:= sig_alpha_W;
			--v_alpha_U   	:= sig_alpha_U;
			--v_alpha_V   	:= sig_alpha_V;
			--v_periode		:= sig_periode;					
			--v_start_stop 	:= sig_start_stop;
			--v_tm		   	:= sig_tm;
			
			
		elsif (i_Fc = '0') then
			
			v_alpha_W   	:= v_alpha_W;
			v_alpha_U   	:= v_alpha_U;
			v_alpha_V   	:= v_alpha_V;
			v_periode		:= v_periode;					
			v_start_stop 	:= v_start_stop;
			v_tm		   	:= v_tm;
			
		end if;
		-------------------Set up outputs-------------------------
		o_alpha_W   	<= v_alpha_W;
		o_alpha_U   	<= v_alpha_U;
		o_alpha_V   	<= v_alpha_V;
		o_periode		<= v_periode;					
		o_start_stop 	<= v_start_stop;
		o_tm		   	<= v_tm;
	end if;	
	
end process;

--process (i_alpha_U, i_alpha_V, i_alpha_W, i_tm, i_periode, i_start_stop)
--begin
--
--	sig_alpha_W 	<= i_alpha_W;
--	sig_alpha_U 	<= i_alpha_U;
--	sig_alpha_V 	<= i_alpha_V;
--	sig_tm 			<= i_tm;
--	sig_periode 	<= i_periode;					
--	sig_start_stop	<= i_start_stop;
--	
--end process;

end arch;