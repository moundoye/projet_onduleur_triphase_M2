
# (C) 2001-2020 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     core
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "mentor.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/mentor/msim_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog <compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run -a
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If core is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 18.1 646 win32 2020.01.14.08:15:57

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "core"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/intelfpga/18.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VHDL_COMPILE_OPTIONS] { 
  set USER_DEFINED_VHDL_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VERILOG_COMPILE_OPTIONS] { 
  set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                       ./libraries/altera_ver/           
  vmap       altera_ver            ./libraries/altera_ver/           
  ensure_lib                       ./libraries/lpm_ver/              
  vmap       lpm_ver               ./libraries/lpm_ver/              
  ensure_lib                       ./libraries/sgate_ver/            
  vmap       sgate_ver             ./libraries/sgate_ver/            
  ensure_lib                       ./libraries/altera_mf_ver/        
  vmap       altera_mf_ver         ./libraries/altera_mf_ver/        
  ensure_lib                       ./libraries/altera_lnsim_ver/     
  vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver/     
  ensure_lib                       ./libraries/cyclonev_ver/         
  vmap       cyclonev_ver          ./libraries/cyclonev_ver/         
  ensure_lib                       ./libraries/cyclonev_hssi_ver/    
  vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver/    
  ensure_lib                       ./libraries/cyclonev_pcie_hip_ver/
  vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver/
  ensure_lib                       ./libraries/altera/               
  vmap       altera                ./libraries/altera/               
  ensure_lib                       ./libraries/lpm/                  
  vmap       lpm                   ./libraries/lpm/                  
  ensure_lib                       ./libraries/sgate/                
  vmap       sgate                 ./libraries/sgate/                
  ensure_lib                       ./libraries/altera_mf/            
  vmap       altera_mf             ./libraries/altera_mf/            
  ensure_lib                       ./libraries/altera_lnsim/         
  vmap       altera_lnsim          ./libraries/altera_lnsim/         
  ensure_lib                       ./libraries/cyclonev/             
  vmap       cyclonev              ./libraries/cyclonev/             
}
ensure_lib                                                      ./libraries/altera_common_sv_packages/                           
vmap       altera_common_sv_packages                            ./libraries/altera_common_sv_packages/                           
ensure_lib                                                      ./libraries/error_adapter_0/                                     
vmap       error_adapter_0                                      ./libraries/error_adapter_0/                                     
ensure_lib                                                      ./libraries/border/                                              
vmap       border                                               ./libraries/border/                                              
ensure_lib                                                      ./libraries/avalon_st_adapter_001/                               
vmap       avalon_st_adapter_001                                ./libraries/avalon_st_adapter_001/                               
ensure_lib                                                      ./libraries/avalon_st_adapter/                                   
vmap       avalon_st_adapter                                    ./libraries/avalon_st_adapter/                                   
ensure_lib                                                      ./libraries/controle_onduleur_0_avalon_slave_0_rsp_width_adapter/
vmap       controle_onduleur_0_avalon_slave_0_rsp_width_adapter ./libraries/controle_onduleur_0_avalon_slave_0_rsp_width_adapter/
ensure_lib                                                      ./libraries/rsp_mux/                                             
vmap       rsp_mux                                              ./libraries/rsp_mux/                                             
ensure_lib                                                      ./libraries/rsp_demux/                                           
vmap       rsp_demux                                            ./libraries/rsp_demux/                                           
ensure_lib                                                      ./libraries/cmd_mux/                                             
vmap       cmd_mux                                              ./libraries/cmd_mux/                                             
ensure_lib                                                      ./libraries/cmd_demux/                                           
vmap       cmd_demux                                            ./libraries/cmd_demux/                                           
ensure_lib                                                      ./libraries/controle_onduleur_0_avalon_slave_0_burst_adapter/    
vmap       controle_onduleur_0_avalon_slave_0_burst_adapter     ./libraries/controle_onduleur_0_avalon_slave_0_burst_adapter/    
ensure_lib                                                      ./libraries/hps_0_h2f_lw_axi_master_wr_limiter/                  
vmap       hps_0_h2f_lw_axi_master_wr_limiter                   ./libraries/hps_0_h2f_lw_axi_master_wr_limiter/                  
ensure_lib                                                      ./libraries/router_004/                                          
vmap       router_004                                           ./libraries/router_004/                                          
ensure_lib                                                      ./libraries/router_003/                                          
vmap       router_003                                           ./libraries/router_003/                                          
ensure_lib                                                      ./libraries/router/                                              
vmap       router                                               ./libraries/router/                                              
ensure_lib                                                      ./libraries/controle_onduleur_0_avalon_slave_0_agent/            
vmap       controle_onduleur_0_avalon_slave_0_agent             ./libraries/controle_onduleur_0_avalon_slave_0_agent/            
ensure_lib                                                      ./libraries/JTAG_console_master_agent/                           
vmap       JTAG_console_master_agent                            ./libraries/JTAG_console_master_agent/                           
ensure_lib                                                      ./libraries/hps_0_h2f_lw_axi_master_agent/                       
vmap       hps_0_h2f_lw_axi_master_agent                        ./libraries/hps_0_h2f_lw_axi_master_agent/                       
ensure_lib                                                      ./libraries/controle_onduleur_0_avalon_slave_0_translator/       
vmap       controle_onduleur_0_avalon_slave_0_translator        ./libraries/controle_onduleur_0_avalon_slave_0_translator/       
ensure_lib                                                      ./libraries/JTAG_console_master_translator/                      
vmap       JTAG_console_master_translator                       ./libraries/JTAG_console_master_translator/                      
ensure_lib                                                      ./libraries/hps_io/                                              
vmap       hps_io                                               ./libraries/hps_io/                                              
ensure_lib                                                      ./libraries/fpga_interfaces/                                     
vmap       fpga_interfaces                                      ./libraries/fpga_interfaces/                                     
ensure_lib                                                      ./libraries/p2b_adapter/                                         
vmap       p2b_adapter                                          ./libraries/p2b_adapter/                                         
ensure_lib                                                      ./libraries/b2p_adapter/                                         
vmap       b2p_adapter                                          ./libraries/b2p_adapter/                                         
ensure_lib                                                      ./libraries/transacto/                                           
vmap       transacto                                            ./libraries/transacto/                                           
ensure_lib                                                      ./libraries/p2b/                                                 
vmap       p2b                                                  ./libraries/p2b/                                                 
ensure_lib                                                      ./libraries/b2p/                                                 
vmap       b2p                                                  ./libraries/b2p/                                                 
ensure_lib                                                      ./libraries/fifo/                                                
vmap       fifo                                                 ./libraries/fifo/                                                
ensure_lib                                                      ./libraries/timing_adt/                                          
vmap       timing_adt                                           ./libraries/timing_adt/                                          
ensure_lib                                                      ./libraries/jtag_phy_embedded_in_jtag_master/                    
vmap       jtag_phy_embedded_in_jtag_master                     ./libraries/jtag_phy_embedded_in_jtag_master/                    
ensure_lib                                                      ./libraries/rst_controller/                                      
vmap       rst_controller                                       ./libraries/rst_controller/                                      
ensure_lib                                                      ./libraries/irq_mapper_001/                                      
vmap       irq_mapper_001                                       ./libraries/irq_mapper_001/                                      
ensure_lib                                                      ./libraries/irq_mapper/                                          
vmap       irq_mapper                                           ./libraries/irq_mapper/                                          
ensure_lib                                                      ./libraries/mm_interconnect_0/                                   
vmap       mm_interconnect_0                                    ./libraries/mm_interconnect_0/                                   
ensure_lib                                                      ./libraries/pio_led/                                             
vmap       pio_led                                              ./libraries/pio_led/                                             
ensure_lib                                                      ./libraries/identifiant_sys/                                     
vmap       identifiant_sys                                      ./libraries/identifiant_sys/                                     
ensure_lib                                                      ./libraries/hps_0/                                               
vmap       hps_0                                                ./libraries/hps_0/                                               
ensure_lib                                                      ./libraries/controle_onduleur_0/                                 
vmap       controle_onduleur_0                                  ./libraries/controle_onduleur_0/                                 
ensure_lib                                                      ./libraries/JTAG_console/                                        
vmap       JTAG_console                                         ./libraries/JTAG_console/                                        

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                     -work altera_ver           
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                              -work lpm_ver              
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                 -work sgate_ver            
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                             -work altera_mf_ver        
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                         -work altera_lnsim_ver     
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                        -work cyclonev_ver         
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                   -work cyclonev_hssi_ver    
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"               -work cyclonev_pcie_hip_ver
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"               -work altera               
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"           -work altera               
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"              -work altera               
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"           -work altera               
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"        -work altera               
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                   -work altera               
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                             -work lpm                  
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                            -work lpm                  
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                          -work sgate                
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                               -work sgate                
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                -work altera_mf            
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                           -work altera_mf            
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"         -work altera_lnsim         
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"             -work altera_lnsim         
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"          -work cyclonev             
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                      -work cyclonev             
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                 -work cyclonev             
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                                             -work altera_common_sv_packages                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                                                      -work altera_common_sv_packages                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                                             -work altera_common_sv_packages                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_avalon_st_adapter_001_error_adapter_0.sv" -L altera_common_sv_packages -work error_adapter_0                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"     -L altera_common_sv_packages -work error_adapter_0                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                   -L altera_common_sv_packages -work border                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                 -L altera_common_sv_packages -work border                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                   -L altera_common_sv_packages -work border                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                   -L altera_common_sv_packages -work border                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_hps_io_border_memory.sv"                              -L altera_common_sv_packages -work border                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_hps_io_border_hps_io.sv"                              -L altera_common_sv_packages -work border                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_hps_io_border.sv"                                     -L altera_common_sv_packages -work border                                              
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_avalon_st_adapter_001.vhd"                                             -work avalon_st_adapter_001                               
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_avalon_st_adapter.vhd"                                                 -work avalon_st_adapter                                   
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                  -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_rsp_width_adapter
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                              -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_rsp_width_adapter
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                             -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_rsp_width_adapter
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_rsp_mux.sv"                               -L altera_common_sv_packages -work rsp_mux                                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                     -L altera_common_sv_packages -work rsp_mux                                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_rsp_demux.sv"                             -L altera_common_sv_packages -work rsp_demux                                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_cmd_mux.sv"                               -L altera_common_sv_packages -work cmd_mux                                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                     -L altera_common_sv_packages -work cmd_mux                                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_cmd_demux.sv"                             -L altera_common_sv_packages -work cmd_demux                                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                  -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_burst_adapter    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                           -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_burst_adapter    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                             -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_burst_adapter    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                              -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_burst_adapter    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                  -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_burst_adapter    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                  -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_burst_adapter    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                               -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_burst_adapter    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                              -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_burst_adapter    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                              -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_burst_adapter    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_burst_adapter    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                -L altera_common_sv_packages -work hps_0_h2f_lw_axi_master_wr_limiter                  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                 -L altera_common_sv_packages -work hps_0_h2f_lw_axi_master_wr_limiter                  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                         -L altera_common_sv_packages -work hps_0_h2f_lw_axi_master_wr_limiter                  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                -L altera_common_sv_packages -work hps_0_h2f_lw_axi_master_wr_limiter                  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_router_004.sv"                            -L altera_common_sv_packages -work router_004                                          
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_router_003.sv"                            -L altera_common_sv_packages -work router_003                                          
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_router.sv"                                -L altera_common_sv_packages -work router                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                    -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_agent            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                             -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_agent            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                   -L altera_common_sv_packages -work JTAG_console_master_agent                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_axi_master_ni.sv"                                  -L altera_common_sv_packages -work hps_0_h2f_lw_axi_master_agent                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                              -L altera_common_sv_packages -work hps_0_h2f_lw_axi_master_agent                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                               -L altera_common_sv_packages -work controle_onduleur_0_avalon_slave_0_translator       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                              -L altera_common_sv_packages -work JTAG_console_master_translator                      
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/core_hps_0_hps_io.v"                                                                          -work hps_io                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                   -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/questa_mvc_svapi.svh"                                            -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_common_axi.sv"                                               -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_axi_master.sv"                                               -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_axi_slave.sv"                                                -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                 -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                   -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                   -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_fpga_interfaces_f2h_cold_reset_req.sv"                -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_fpga_interfaces_h2f_mpu_events.sv"                    -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_fpga_interfaces.sv"                                   -L altera_common_sv_packages -work fpga_interfaces                                     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_JTAG_console_p2b_adapter.sv"                                -L altera_common_sv_packages -work p2b_adapter                                         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_JTAG_console_b2p_adapter.sv"                                -L altera_common_sv_packages -work b2p_adapter                                         
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_packets_to_master.v"                                                            -work transacto                                           
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_packets_to_bytes.v"                                                          -work p2b                                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_bytes_to_packets.v"                                                          -work b2p                                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                                      -work fifo                                                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_JTAG_console_timing_adt.sv"                                 -L altera_common_sv_packages -work timing_adt                                          
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_jtag_interface.v"                                                            -work jtag_phy_embedded_in_jtag_master                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_dc_streaming.v"                                                                   -work jtag_phy_embedded_in_jtag_master                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_sld_node.v"                                                                       -work jtag_phy_embedded_in_jtag_master                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_streaming.v"                                                                      -work jtag_phy_embedded_in_jtag_master                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                                             -work jtag_phy_embedded_in_jtag_master                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                              -work jtag_phy_embedded_in_jtag_master                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                                             -work jtag_phy_embedded_in_jtag_master                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_remover.v"                                                              -work jtag_phy_embedded_in_jtag_master                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_inserter.v"                                                             -work jtag_phy_embedded_in_jtag_master                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                              -L altera_common_sv_packages -work jtag_phy_embedded_in_jtag_master                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                                                    -work rst_controller                                      
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                                                  -work rst_controller                                      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_irq_mapper_001.sv"                                          -L altera_common_sv_packages -work irq_mapper_001                                      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_irq_mapper.sv"                                              -L altera_common_sv_packages -work irq_mapper                                          
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/core_mm_interconnect_0.v"                                                                     -work mm_interconnect_0                                   
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/core_pio_led.vhd"                                                                             -work pio_led                                             
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/core_identifiant_sys.v"                                                                       -work identifiant_sys                                     
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/core_hps_0.v"                                                                                 -work hps_0                                               
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/controle_onduleur.vhd"                                                                        -work controle_onduleur_0                                 
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/controle_hps_fpga.vhd"                                                                        -work controle_onduleur_0                                 
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/counter.vhd"                                                                                  -work controle_onduleur_0                                 
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/lock_data.vhd"                                                                                -work controle_onduleur_0                                 
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/MLI.vhd"                                                                                      -work controle_onduleur_0                                 
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/core_JTAG_console.vhd"                                                                        -work JTAG_console                                        
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/core.vhd"                                                                                                                                                          
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/core_rst_controller.vhd"                                                                                                                                           
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/core_rst_controller_001.vhd"                                                                                                                                       
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L error_adapter_0 -L border -L avalon_st_adapter_001 -L avalon_st_adapter -L controle_onduleur_0_avalon_slave_0_rsp_width_adapter -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L controle_onduleur_0_avalon_slave_0_burst_adapter -L hps_0_h2f_lw_axi_master_wr_limiter -L router_004 -L router_003 -L router -L controle_onduleur_0_avalon_slave_0_agent -L JTAG_console_master_agent -L hps_0_h2f_lw_axi_master_agent -L controle_onduleur_0_avalon_slave_0_translator -L JTAG_console_master_translator -L hps_io -L fpga_interfaces -L p2b_adapter -L b2p_adapter -L transacto -L p2b -L b2p -L fifo -L timing_adt -L jtag_phy_embedded_in_jtag_master -L rst_controller -L irq_mapper_001 -L irq_mapper -L mm_interconnect_0 -L pio_led -L identifiant_sys -L hps_0 -L controle_onduleur_0 -L JTAG_console -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L error_adapter_0 -L border -L avalon_st_adapter_001 -L avalon_st_adapter -L controle_onduleur_0_avalon_slave_0_rsp_width_adapter -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L controle_onduleur_0_avalon_slave_0_burst_adapter -L hps_0_h2f_lw_axi_master_wr_limiter -L router_004 -L router_003 -L router -L controle_onduleur_0_avalon_slave_0_agent -L JTAG_console_master_agent -L hps_0_h2f_lw_axi_master_agent -L controle_onduleur_0_avalon_slave_0_translator -L JTAG_console_master_translator -L hps_io -L fpga_interfaces -L p2b_adapter -L b2p_adapter -L transacto -L p2b -L b2p -L fifo -L timing_adt -L jtag_phy_embedded_in_jtag_master -L rst_controller -L irq_mapper_001 -L irq_mapper -L mm_interconnect_0 -L pio_led -L identifiant_sys -L hps_0 -L controle_onduleur_0 -L JTAG_console -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                                         -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                                           -- Compile device library files"
  echo
  echo "com                                               -- Compile the design files in correct order"
  echo
  echo "elab                                              -- Elaborate top level design"
  echo
  echo "elab_debug                                        -- Elaborate the top level design with novopt option"
  echo
  echo "ld                                                -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                                          -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                                    -- Top level module name."
  echo "                                                     For most designs, this should be overridden"
  echo "                                                     to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME                              -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                                       -- Platform Designer base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR                               -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS                      -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS                         -- User-defined elaboration options, added to elab/elab_debug aliases."
  echo
  echo "USER_DEFINED_VHDL_COMPILE_OPTIONS                 -- User-defined vhdl compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_VERILOG_COMPILE_OPTIONS              -- User-defined verilog compile options, added to com/dev_com aliases."
}
file_copy
h
