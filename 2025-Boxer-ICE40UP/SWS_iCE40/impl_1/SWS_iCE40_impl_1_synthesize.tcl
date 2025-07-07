if {[catch {

# define run engine funtion
source [file join {C:/lscc/radiant/2024.2} scripts tcl flow run_engine.tcl]
# define global variables
global para
set para(gui_mode) "1"
set para(prj_dir) "C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40"
if {![file exists {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/impl_1}]} {
  file mkdir {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/impl_1}
}
cd {C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/impl_1}
# synthesize IPs
# synthesize VMs
# synthesize top design
file delete -force -- SWS_iCE40_impl_1.vm SWS_iCE40_impl_1.ldc
if {[file normalize "C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/impl_1/SWS_iCE40_impl_1_synplify.tcl"] != [file normalize "./SWS_iCE40_impl_1_synplify.tcl"]} {
  file copy -force "C:/Users/worbb/Desktop/IMA/FPGA/SWS_iCE40/impl_1/SWS_iCE40_impl_1_synplify.tcl" "./SWS_iCE40_impl_1_synplify.tcl"
}
if {[ catch {::radiant::runengine::run_engine synpwrap -prj "SWS_iCE40_impl_1_synplify.tcl" -log "SWS_iCE40_impl_1.srf"} result options ]} {
    file delete -force -- SWS_iCE40_impl_1.vm SWS_iCE40_impl_1.ldc
    return -options $options $result
}
::radiant::runengine::run_postsyn [list -a iCE40UP -p iCE40UP5K -t SG48 -sp High-Performance_1.2V -oc Industrial -top -w -o SWS_iCE40_impl_1_syn.udb SWS_iCE40_impl_1.vm] [list SWS_iCE40_impl_1.ldc]

} out]} {
   ::radiant::runengine::runtime_log $out
   exit 1
}
