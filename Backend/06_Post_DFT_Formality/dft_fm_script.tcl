########################### Define Top Module ############################

puts "#############################################"
puts "#             Define Top Module             #"
puts "#############################################"

set top_module SYS_TOP
set SCRIPT_DIR [file normalize [file dirname [info script]]]
set ROOT [file dirname $SCRIPT_DIR]
cd $SCRIPT_DIR
######################### Formality Setup File ###########################

puts "#############################################"
puts "#            Formality Setup File           #"
puts "#############################################"

set synopsys_auto_setup true

# Technology libraries

puts "#############################################"
puts "#            Technology libraries           #"
puts "#############################################"

set LIB_DIR /home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys
set SSLIB [file join $LIB_DIR scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db]
set TTLIB [file join $LIB_DIR scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db]
set FFLIB [file join $LIB_DIR scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db]
foreach library [list $SSLIB $TTLIB $FFLIB] {
    if {![file isfile $library]} {error "Missing library: $library"}
}

set OUT $SCRIPT_DIR
file mkdir $OUT
set_svf [file join $ROOT 05_DFT_Netlist_and_Reports $top_module.svf]

######################### Reference Container ############################

puts "#############################################"
puts "#            Reference Container            #"
puts "#############################################"

read_db -container r [list $SSLIB $TTLIB $FFLIB]
set fh [open [file join $ROOT 05_DFT_Netlist_and_Reports/system.lst] r]
while {[gets $fh line] >= 0} {
    set line [string trim $line]
    if {$line ne ""} {read_verilog -container r [file join $ROOT $line]}
}
close $fh
set_top r:/WORK/$top_module

######################## Implementation Container #########################

puts "#############################################"
puts "#          Implementation Container         #"
puts "#############################################"

read_db -container i [list $SSLIB $TTLIB $FFLIB]
read_verilog -container i [file join $ROOT 05_DFT_Netlist_and_Reports $top_module.v]
set_top i:/WORK/$top_module

# Compare functional operation; only scan outputs are excluded

puts "##################################################################"
puts "#  Compare functional operation; only scan outputs are excluded  #"
puts "##################################################################"

set_constant i:/WORK/$top_module/test_mode 0
set_constant i:/WORK/$top_module/SE 0
set_constant i:/WORK/$top_module/scan_rst 1
set_constant i:/WORK/$top_module/scan_clk 0
set_dont_verify_points -type port i:/WORK/$top_module/SO*
set_constant r:/WORK/$top_module/test_mode 0
set_constant r:/WORK/$top_module/SE 0
set_constant r:/WORK/$top_module/scan_rst 1
set_constant r:/WORK/$top_module/scan_clk 0
set_dont_verify_points -type port r:/WORK/$top_module/SO*

# Matching Compare Points

puts "#############################################"
puts "#          Matching Compare Points          #"
puts "#############################################"

match

# Verification

puts "#############################################"
puts "#                Verification               #"
puts "#############################################"

set successful [verify]

# Reports

puts "#############################################"
puts "#                  Reports                  #"
puts "#############################################"

report_passing_points > $OUT/passing_points.rpt
report_failing_points > $OUT/failing_points.rpt
report_aborted_points > $OUT/aborted_points.rpt
report_unverified_points > $OUT/unverified_points.rpt
if {!$successful} {
    diagnose
    error "Formality failed; inspect the log and reports"
}
exit
