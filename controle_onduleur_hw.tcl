# TCL File Generated by Component Editor 18.0
# Tue Dec 24 16:10:00 CET 2019
# DO NOT MODIFY


# 
# controle_onduleur "controle_onduleur" v1.0
# Mouhamadou Ndoye 2019.12.24.16:10:00
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module controle_onduleur
# 
set_module_property DESCRIPTION ""
set_module_property NAME controle_onduleur
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Mouhamadou Ndoye"
set_module_property DISPLAY_NAME controle_onduleur
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL controle_onduleur
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file controle_onduleur.vhd VHDL PATH controle_onduleur.vhd TOP_LEVEL_FILE
add_fileset_file controle_hps_fpga.vhd VHDL PATH controle_hps_fpga.vhd
add_fileset_file counter.vhd VHDL PATH counter.vhd
add_fileset_file lock_data.vhd VHDL PATH lock_data.vhd
add_fileset_file MLI.vhd VHDL PATH MLI.vhd

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL controle_onduleur
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VHDL ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file controle_onduleur.vhd VHDL PATH controle_onduleur.vhd
add_fileset_file controle_hps_fpga.vhd VHDL PATH controle_hps_fpga.vhd
add_fileset_file counter.vhd VHDL PATH counter.vhd
add_fileset_file lock_data.vhd VHDL PATH lock_data.vhd
add_fileset_file MLI.vhd VHDL PATH MLI.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock csi_clk clk Input 1


# 
# connection point clock_reset
# 
add_interface clock_reset reset end
set_interface_property clock_reset associatedClock clock
set_interface_property clock_reset synchronousEdges DEASSERT
set_interface_property clock_reset ENABLED true
set_interface_property clock_reset EXPORT_OF ""
set_interface_property clock_reset PORT_NAME_MAP ""
set_interface_property clock_reset CMSIS_SVD_VARIABLES ""
set_interface_property clock_reset SVD_ADDRESS_GROUP ""

add_interface_port clock_reset csi_reset reset_n Input 1


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock
set_interface_property avalon_slave_0 associatedReset clock_reset
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 maximumPendingWriteTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitStates 1
set_interface_property avalon_slave_0 writeWaitTime 1
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 avs_read read Input 1
add_interface_port avalon_slave_0 avs_write write Input 1
add_interface_port avalon_slave_0 avs_address address Input 3
add_interface_port avalon_slave_0 avs_byteenable byteenable Input 2
add_interface_port avalon_slave_0 avs_writedata writedata Input 16
add_interface_port avalon_slave_0 avs_readdata readdata Output 16
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point interrupt_sender_0
# 
add_interface interrupt_sender_0 interrupt end
set_interface_property interrupt_sender_0 associatedAddressablePoint ""
set_interface_property interrupt_sender_0 associatedClock clock
set_interface_property interrupt_sender_0 bridgedReceiverOffset ""
set_interface_property interrupt_sender_0 bridgesToReceiver ""
set_interface_property interrupt_sender_0 ENABLED true
set_interface_property interrupt_sender_0 EXPORT_OF ""
set_interface_property interrupt_sender_0 PORT_NAME_MAP ""
set_interface_property interrupt_sender_0 CMSIS_SVD_VARIABLES ""
set_interface_property interrupt_sender_0 SVD_ADDRESS_GROUP ""

add_interface_port interrupt_sender_0 ins_irq irq Output 1


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock clock
set_interface_property conduit_end associatedReset ""
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end Q_high_line_U std_logic_u_high Output 1
add_interface_port conduit_end Q_high_line_V std_logic_v_high Output 1
add_interface_port conduit_end Q_high_line_W std_logic_w_high Output 1
add_interface_port conduit_end Q_low_line_U std_logic_u_low Output 1
add_interface_port conduit_end Q_low_line_V std_logic_v_low Output 1
add_interface_port conduit_end Q_low_line_W std_logic_w_low Output 1
add_interface_port conduit_end secu std_logic_secu Input 1

