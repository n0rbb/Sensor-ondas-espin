#-- Lattice Semiconductor Corporation Ltd.
#-- Map run script generated by Radiant

set ret 0
if {[catch {

if {![file exists {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/impl_1}]} {
  file mkdir {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/impl_1}
}
cd {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/impl_1}

sys_set_attribute -gui on -msg {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/promote.xml}
msg_load {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/promote.xml}
des_set_project_udb -in {SWS_iCE40_impl_1_syn.udb} -out {SWS_iCE40_impl_1_map.udb} -milestone map -pm ice40tp
des_set_reference_udb -clean
map_set_option {pdc_file "C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/source/impl_1/impl_1.pdc"}
# map option
map_set_option { report_symbol_cross_reference false report_signal_cross_reference false   ignore_constraint_errors false}
map_run

} out]} {
   puts $out
   set ret 1
}
exit -force ${ret}
