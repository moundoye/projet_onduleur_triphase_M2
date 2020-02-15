library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-------------------------------------------------------------------------------------------------------------
--												+--+---+-+-----------+----+--------------+----------------+----------+  |
--state_register architecture :  	|15|...|5|end_periode|secu|interrupt_flag|interrupt_enable|start_stop|  | 
--												+--+---+-+-----------+----+--------------+----------------+----------+  |
-------------------------------------------------------------------------------------------------------------
entity controle_hps_fpga is
	port(csi_clk, csi_reset 	: in std_logic;
			avs_read, avs_write	: in std_logic;
			avs_address 			: in std_logic_vector (2 downto 0);
			avs_byteenable     	: in  std_logic_vector (1 downto 0); 
			avs_writedata			: in  std_logic_vector (15 downto 0);  
			secu						: in std_logic;
			end_periode				: in std_logic;
			
			avs_readdata     		: out std_logic_vector (15 downto 0);
			ins_irq					: out std_logic;
			start_stop				: out std_logic;
			alpha_u					: out std_logic_vector (15 downto 0);
			alpha_v					: out std_logic_vector (15 downto 0);
			alpha_w					: out std_logic_vector (15 downto 0);
			periode					: out std_logic_vector (15 downto 0);
			tm 						: out std_logic_vector (15 downto 0)
			);
end controle_hps_fpga;	




architecture dataflow of controle_hps_fpga is

begin

process (csi_clk, csi_reset) 

variable state_register 		 : std_logic_vector (15 downto 0);
variable var_alpha_u			 	 : std_logic_vector (15 downto 0);
variable var_alpha_v			 	 : std_logic_vector (15 downto 0);
variable var_alpha_w		    	 : std_logic_vector (15 downto 0);
variable var_periode			 	 : std_logic_vector (15 downto 0);
variable var_tm 				 	 : std_logic_vector (15 downto 0);
variable var_test_pattern			 : std_logic_vector (6 downto 0);

begin
	
	---------------------Initialization system ------------------------------
	if (csi_reset = '0') then

		-------------------- Init outputs ---------------------------
		avs_readdata <= (others => '0');
		ins_irq <= '0';
		start_stop <= '0';
		alpha_u <= (others => '0');
		alpha_v <= (others => '0');
		alpha_w <= (others => '0');
		periode <= (others => '0');
		tm <= (others => '0');
		
		-------------------- Init variables -----------------------------
		state_register := (others => '0');
		var_alpha_u 	:= (others => '0');
		var_alpha_v 	:= (others => '0');
		var_alpha_w 	:= (others => '0');
		var_periode 	:= (others => '0');
		var_tm 			:= (others => '0');
		var_test_pattern := (others => '0');
		
	--------------------- synchronous system ---------------------------------
	elsif (csi_clk'event and csi_clk = '1') then
		
		var_test_pattern := avs_byteenable & avs_read & avs_write & avs_address;
		-------------------- test byte enable ---------------------------------
		case (var_test_pattern) is 
			------------------------------ Acces read -----------------------------
			when "1110000"	=>	avs_readdata <= state_register;
			when "1110001"	=> avs_readdata <= var_alpha_u;
			when "1110010"	=> avs_readdata <= var_alpha_v;
			when "1110011"	=> avs_readdata <= var_alpha_w;
			when "1110100"	=> avs_readdata <= var_periode;
			when "1110101"	=> avs_readdata <= var_tm;
			
			------------------------------ Acces write -----------------------------
			when "1101000"	=> state_register 	:= state_register(15 downto 5) & end_periode & secu & avs_writedata(2 downto 0);
			when "1101001"	=> var_alpha_u 		:= avs_writedata(15 downto 0);
			when "1101010"	=> var_alpha_v 		:= avs_writedata(15 downto 0);
			when "1101011"	=> var_alpha_w 		:= avs_writedata(15 downto 0);
			when "1101100"	=> var_periode 		:= avs_writedata(15 downto 0);
			when "1101101"	=> var_tm 	  			:= avs_writedata(15 downto 0);
	
			------------------------------ for something else -----------------------------
			when others => state_register			:= state_register(15 downto 5) & end_periode & secu & state_register(2 downto 0) ;
								var_alpha_u 			:= var_alpha_u;
								var_alpha_v 			:= var_alpha_v;
								var_alpha_w 			:= var_alpha_w;
								var_periode 			:= var_periode;
								var_tm					:= var_tm;
		end case;
		
		---------------------Assign outputs ------------------------------
		alpha_u 				<= var_alpha_u;
		alpha_v 				<= var_alpha_v;
		alpha_w 				<= var_alpha_w;
		periode 				<= var_periode;
		tm						<= var_tm;
		start_stop			<= state_register(0);
		
		-------Update state register--------------
		state_register(3)	:= secu;
		state_register(4) := end_periode;
		
		if (state_register(1) = '1' and end_periode = '1') then
			ins_irq <= '1';
			state_register(2) := '1'; -- Set Interrupt flag to 1. 
			
			--Avoid multiple interrupt request when secu = '1'
			--if (secu = '1') then alert_secu := '1'; 
			--else alert_secu := '0'; end if;
		
		else
			ins_irq <= '0';
			-- The HPS Set the Interrupt flag to 0 we don't need to do it here. 
		end if;
		
	end if;
	
end process;

end dataflow;