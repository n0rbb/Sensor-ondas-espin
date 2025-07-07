#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology SBTICE40UP
set_option -part iCE40UP5K
set_option -package SG48I
set_option -speed_grade -6
#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog standard option
set_option -vlog_std v2001

#map options
set_option -frequency 200
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -retiming false; set_option -pipe true

set_option -compiler_compatible 0


set_option -default_enum_encoding default

#timing analysis options



#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 0
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0


set_option -rw_check_on_ram 0



#-- set any command lines input by customer

set_option -dup false
set_option -disable_io_insertion false
add_file -constraint {C:/lscc/radiant/2024.2/scripts/tcl/flow/radiant_synplify_vars.tcl}
add_file -constraint {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/impl_1.sdc}
add_file -verilog {C:/lscc/radiant/2024.2/ip/pmi/pmi_iCE40UP.v}
add_file -vhdl -lib pmi {C:/lscc/radiant/2024.2/ip/pmi/pmi_iCE40UP.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/INST_pkg.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/MEM_pkg.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/SWS_top.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/RS232_transmitter.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/RS232_shiftregister.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/RS232_receiver.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/RS232_fifo.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/RS232.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/ALU.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/CPU.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/DMA.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/RAM.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/ROM.vhd}
add_file -vhdl -lib "work" {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/iCE40_SWS.vhd}
#-- top module name
set_option -top_module iCE_SWS
add_file -vhdl {C:/lscc/radiant/2024.2/cae_library/synthesis/vhdl/iCE40UP.vhd}

#-- set result format/file last
project -result_format "vm"
project -result_file "./SWS_iCE40_impl_1.vm"

#-- error message log file
project -log_file {SWS_iCE40_impl_1.srf}

#-- run Synplify with 'arrange HDL file'
catch {project -run hdl_info_gen -fileorder}

project -run -clean
