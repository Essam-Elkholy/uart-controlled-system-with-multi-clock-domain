########################### Define Top Module ############################
puts "#############################################"
puts "#         Functional Clock Check            #"
puts "#############################################"

set top_module SYS_TOP
set SCRIPT_DIR [file normalize [file dirname [info script]]]
cd $SCRIPT_DIR
set OUT [file join $SCRIPT_DIR clock_check]
file mkdir $OUT

########################### Technology Libraries #########################
puts "#############################################"
puts "#            Technology Libraries           #"
puts "#############################################"

set LIB_DIR /home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys
set SS_NAME scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set TT_NAME scmetro_tsmc_cl013g_rvt_tt_1p2v_25c
set FF_NAME scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set SSLIB [file join $LIB_DIR ${SS_NAME}.db]
set TTLIB [file join $LIB_DIR ${TT_NAME}.db]
set FFLIB [file join $LIB_DIR ${FF_NAME}.db]
foreach library [list $SSLIB $TTLIB $FFLIB] {
    if {![file isfile $library]} {
        puts stderr "Missing library: $library"
        exit 1
    }
}
lappend search_path $LIB_DIR
set target_library [list $SSLIB]
set link_library [list * $SSLIB $TTLIB $FFLIB]
set_min_library $SSLIB -min_version $FFLIB

########################### Read DFT Design ##############################
puts "#############################################"
puts "#             Read DFT Design               #"
puts "#############################################"

if {![read_file -format ddc [file join $SCRIPT_DIR SYS_TOP.ddc]]} {
    puts stderr "Unable to read DFT DDC"
    exit 1
}
current_design $top_module
if {![link]} {
    puts stderr "DFT DDC link failed"
    exit 1
}

########################### Functional Constraints #######################
puts "#############################################"
puts "#          Functional Constraints           #"
puts "#############################################"

remove_clock [all_clocks]
set_case_analysis 0 [get_ports test_mode]
set_case_analysis 0 [get_ports SE]
source ./cons.tcl
# The scan output interface is not timed as a functional output interface.
set_false_path -to [get_ports SO*]
update_timing

########################### Clock Check Reports ##########################
puts "#############################################"
puts "#           Clock Check Reports             #"
puts "#############################################"

check_timing > $OUT/check_timing.rpt
report_clock -attributes > $OUT/clocks.rpt
report_case_analysis > $OUT/case_analysis.rpt
report_disable_timing > $OUT/disabled_timing.rpt
report_net -connections [get_nets {REF_CLK_M UART_CLK_M}] > $OUT/clock_mux_connections.rpt
report_timing -delay_type max -max_paths 100 > $OUT/setup.rpt
report_timing -delay_type min -max_paths 100 > $OUT/hold.rpt
report_constraint -all_violators -nosplit > $OUT/constraints.rpt
exit

