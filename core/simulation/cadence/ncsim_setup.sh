
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

# ACDS 18.1 646 win32 2020.01.14.08:15:57

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     core
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "ncsim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
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
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify any compilation options:
# #   USER_DEFINED_COMPILE_OPTIONS
# #   USER_DEFINED_VHDL_COMPILE_OPTIONS applied to vhdl compiler
# #   USER_DEFINED_VERILOG_COMPILE_OPTIONS applied to verilog compiler
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# USER_DEFINED_VHDL_COMPILE_OPTIONS=<VHDL compilation options for your design> \
# USER_DEFINED_VERILOG_COMPILE_OPTIONS=<Verilog compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# ncvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
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
# initialize variables
TOP_LEVEL_NAME="core"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/intelfpga/18.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/border/
mkdir -p ./libraries/avalon_st_adapter_001/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/controle_onduleur_0_avalon_slave_0_rsp_width_adapter/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/controle_onduleur_0_avalon_slave_0_burst_adapter/
mkdir -p ./libraries/hps_0_h2f_lw_axi_master_wr_limiter/
mkdir -p ./libraries/router_004/
mkdir -p ./libraries/router_003/
mkdir -p ./libraries/router/
mkdir -p ./libraries/controle_onduleur_0_avalon_slave_0_agent/
mkdir -p ./libraries/JTAG_console_master_agent/
mkdir -p ./libraries/hps_0_h2f_lw_axi_master_agent/
mkdir -p ./libraries/controle_onduleur_0_avalon_slave_0_translator/
mkdir -p ./libraries/JTAG_console_master_translator/
mkdir -p ./libraries/hps_io/
mkdir -p ./libraries/fpga_interfaces/
mkdir -p ./libraries/p2b_adapter/
mkdir -p ./libraries/b2p_adapter/
mkdir -p ./libraries/transacto/
mkdir -p ./libraries/p2b/
mkdir -p ./libraries/b2p/
mkdir -p ./libraries/fifo/
mkdir -p ./libraries/timing_adt/
mkdir -p ./libraries/jtag_phy_embedded_in_jtag_master/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/irq_mapper_001/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/pio_led/
mkdir -p ./libraries/identifiant_sys/
mkdir -p ./libraries/hps_0/
mkdir -p ./libraries/controle_onduleur_0/
mkdir -p ./libraries/JTAG_console/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cyclonev/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                         -work cyclonev_ver         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                    -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                -work cyclonev_pcie_hip_ver
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"                -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"            -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"               -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"            -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"         -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                    -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                              -work lpm                  
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                             -work lpm                  
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                           -work sgate                
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                                -work sgate                
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                 -work altera_mf            
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                            -work altera_mf            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim         
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"              -work altera_lnsim         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"          -work cyclonev             
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                       -work cyclonev             
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                  -work cyclonev             
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                -work altera_common_sv_packages                            -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                         -work altera_common_sv_packages                            -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                -work altera_common_sv_packages                            -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_avalon_st_adapter_001_error_adapter_0.sv" -work error_adapter_0                                      -cdslib ./cds_libs/error_adapter_0.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"     -work error_adapter_0                                      -cdslib ./cds_libs/error_adapter_0.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                   -work border                                               -cdslib ./cds_libs/border.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                 -work border                                               -cdslib ./cds_libs/border.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                   -work border                                               -cdslib ./cds_libs/border.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                   -work border                                               -cdslib ./cds_libs/border.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_hps_io_border_memory.sv"                              -work border                                               -cdslib ./cds_libs/border.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_hps_io_border_hps_io.sv"                              -work border                                               -cdslib ./cds_libs/border.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_hps_io_border.sv"                                     -work border                                               -cdslib ./cds_libs/border.cds.lib                                              
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_avalon_st_adapter_001.vhd"                -work avalon_st_adapter_001                                -cdslib ./cds_libs/avalon_st_adapter_001.cds.lib                               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_avalon_st_adapter.vhd"                    -work avalon_st_adapter                                    -cdslib ./cds_libs/avalon_st_adapter.cds.lib                                   
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                  -work controle_onduleur_0_avalon_slave_0_rsp_width_adapter -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_rsp_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                              -work controle_onduleur_0_avalon_slave_0_rsp_width_adapter -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_rsp_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                             -work controle_onduleur_0_avalon_slave_0_rsp_width_adapter -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_rsp_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_rsp_mux.sv"                               -work rsp_mux                                              -cdslib ./cds_libs/rsp_mux.cds.lib                                             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                     -work rsp_mux                                              -cdslib ./cds_libs/rsp_mux.cds.lib                                             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_rsp_demux.sv"                             -work rsp_demux                                            -cdslib ./cds_libs/rsp_demux.cds.lib                                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_cmd_mux.sv"                               -work cmd_mux                                              -cdslib ./cds_libs/cmd_mux.cds.lib                                             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                     -work cmd_mux                                              -cdslib ./cds_libs/cmd_mux.cds.lib                                             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_cmd_demux.sv"                             -work cmd_demux                                            -cdslib ./cds_libs/cmd_demux.cds.lib                                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                  -work controle_onduleur_0_avalon_slave_0_burst_adapter     -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_burst_adapter.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                           -work controle_onduleur_0_avalon_slave_0_burst_adapter     -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_burst_adapter.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                             -work controle_onduleur_0_avalon_slave_0_burst_adapter     -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_burst_adapter.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                              -work controle_onduleur_0_avalon_slave_0_burst_adapter     -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_burst_adapter.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                  -work controle_onduleur_0_avalon_slave_0_burst_adapter     -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_burst_adapter.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                  -work controle_onduleur_0_avalon_slave_0_burst_adapter     -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_burst_adapter.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                               -work controle_onduleur_0_avalon_slave_0_burst_adapter     -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_burst_adapter.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                              -work controle_onduleur_0_avalon_slave_0_burst_adapter     -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_burst_adapter.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                              -work controle_onduleur_0_avalon_slave_0_burst_adapter     -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_burst_adapter.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                -work controle_onduleur_0_avalon_slave_0_burst_adapter     -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_burst_adapter.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                -work hps_0_h2f_lw_axi_master_wr_limiter                   -cdslib ./cds_libs/hps_0_h2f_lw_axi_master_wr_limiter.cds.lib                  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                 -work hps_0_h2f_lw_axi_master_wr_limiter                   -cdslib ./cds_libs/hps_0_h2f_lw_axi_master_wr_limiter.cds.lib                  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                         -work hps_0_h2f_lw_axi_master_wr_limiter                   -cdslib ./cds_libs/hps_0_h2f_lw_axi_master_wr_limiter.cds.lib                  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                -work hps_0_h2f_lw_axi_master_wr_limiter                   -cdslib ./cds_libs/hps_0_h2f_lw_axi_master_wr_limiter.cds.lib                  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_router_004.sv"                            -work router_004                                           -cdslib ./cds_libs/router_004.cds.lib                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_router_003.sv"                            -work router_003                                           -cdslib ./cds_libs/router_003.cds.lib                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_mm_interconnect_0_router.sv"                                -work router                                               -cdslib ./cds_libs/router.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                    -work controle_onduleur_0_avalon_slave_0_agent             -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_agent.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                             -work controle_onduleur_0_avalon_slave_0_agent             -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_agent.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                   -work JTAG_console_master_agent                            -cdslib ./cds_libs/JTAG_console_master_agent.cds.lib                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_axi_master_ni.sv"                                  -work hps_0_h2f_lw_axi_master_agent                        -cdslib ./cds_libs/hps_0_h2f_lw_axi_master_agent.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                              -work hps_0_h2f_lw_axi_master_agent                        -cdslib ./cds_libs/hps_0_h2f_lw_axi_master_agent.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                               -work controle_onduleur_0_avalon_slave_0_translator        -cdslib ./cds_libs/controle_onduleur_0_avalon_slave_0_translator.cds.lib       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                              -work JTAG_console_master_translator                       -cdslib ./cds_libs/JTAG_console_master_translator.cds.lib                      
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/core_hps_0_hps_io.v"                                             -work hps_io                                               -cdslib ./cds_libs/hps_io.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                   -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/questa_mvc_svapi.svh"                                            -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_common_axi.sv"                                               -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_axi_master.sv"                                               -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_axi_slave.sv"                                                -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                 -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                   -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                   -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_fpga_interfaces_f2h_cold_reset_req.sv"                -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_fpga_interfaces_h2f_mpu_events.sv"                    -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_hps_0_fpga_interfaces.sv"                                   -work fpga_interfaces                                      -cdslib ./cds_libs/fpga_interfaces.cds.lib                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_JTAG_console_p2b_adapter.sv"                                -work p2b_adapter                                          -cdslib ./cds_libs/p2b_adapter.cds.lib                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_JTAG_console_b2p_adapter.sv"                                -work b2p_adapter                                          -cdslib ./cds_libs/b2p_adapter.cds.lib                                         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_packets_to_master.v"                               -work transacto                                            -cdslib ./cds_libs/transacto.cds.lib                                           
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_packets_to_bytes.v"                             -work p2b                                                  -cdslib ./cds_libs/p2b.cds.lib                                                 
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_bytes_to_packets.v"                             -work b2p                                                  -cdslib ./cds_libs/b2p.cds.lib                                                 
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                         -work fifo                                                 -cdslib ./cds_libs/fifo.cds.lib                                                
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_JTAG_console_timing_adt.sv"                                 -work timing_adt                                           -cdslib ./cds_libs/timing_adt.cds.lib                                          
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_jtag_interface.v"                               -work jtag_phy_embedded_in_jtag_master                     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_dc_streaming.v"                                      -work jtag_phy_embedded_in_jtag_master                     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_sld_node.v"                                          -work jtag_phy_embedded_in_jtag_master                     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_streaming.v"                                         -work jtag_phy_embedded_in_jtag_master                     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                -work jtag_phy_embedded_in_jtag_master                     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                 -work jtag_phy_embedded_in_jtag_master                     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                -work jtag_phy_embedded_in_jtag_master                     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_remover.v"                                 -work jtag_phy_embedded_in_jtag_master                     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_inserter.v"                                -work jtag_phy_embedded_in_jtag_master                     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                              -work jtag_phy_embedded_in_jtag_master                     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                       -work rst_controller                                       -cdslib ./cds_libs/rst_controller.cds.lib                                      
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                     -work rst_controller                                       -cdslib ./cds_libs/rst_controller.cds.lib                                      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_irq_mapper_001.sv"                                          -work irq_mapper_001                                       -cdslib ./cds_libs/irq_mapper_001.cds.lib                                      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/core_irq_mapper.sv"                                              -work irq_mapper                                           -cdslib ./cds_libs/irq_mapper.cds.lib                                          
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/core_mm_interconnect_0.v"                                        -work mm_interconnect_0                                    -cdslib ./cds_libs/mm_interconnect_0.cds.lib                                   
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/core_pio_led.vhd"                                                -work pio_led                                              -cdslib ./cds_libs/pio_led.cds.lib                                             
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/core_identifiant_sys.v"                                          -work identifiant_sys                                      -cdslib ./cds_libs/identifiant_sys.cds.lib                                     
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/core_hps_0.v"                                                    -work hps_0                                                -cdslib ./cds_libs/hps_0.cds.lib                                               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/controle_onduleur.vhd"                                           -work controle_onduleur_0                                  -cdslib ./cds_libs/controle_onduleur_0.cds.lib                                 
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/controle_hps_fpga.vhd"                                           -work controle_onduleur_0                                  -cdslib ./cds_libs/controle_onduleur_0.cds.lib                                 
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/counter.vhd"                                                     -work controle_onduleur_0                                  -cdslib ./cds_libs/controle_onduleur_0.cds.lib                                 
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/lock_data.vhd"                                                   -work controle_onduleur_0                                  -cdslib ./cds_libs/controle_onduleur_0.cds.lib                                 
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/MLI.vhd"                                                         -work controle_onduleur_0                                  -cdslib ./cds_libs/controle_onduleur_0.cds.lib                                 
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/core_JTAG_console.vhd"                                           -work JTAG_console                                         -cdslib ./cds_libs/JTAG_console.cds.lib                                        
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/core.vhd"                                                                                                                                                                                                             
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/core_rst_controller.vhd"                                                                                                                                                                                              
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/core_rst_controller_001.vhd"                                                                                                                                                                                          
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  export GENERIC_PARAM_COMPAT_CHECK=1
  ncelab -access +w+r+c -namemap_mixgen -relax $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
