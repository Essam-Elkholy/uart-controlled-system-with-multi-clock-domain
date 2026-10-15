########################### Define Top Module ############################

puts "#############################################"
puts "#             Define Top Module             #"
puts "#############################################"

set top_module SYS_TOP
set SCRIPT_DIR [file normalize [file dirname [info script]]]
set ROOT [file dirname $SCRIPT_DIR]
cd $SCRIPT_DIR

################## Design Compiler Library Files #setup ######################

puts "#############################################"
puts "#    Design Compiler Library Files Setup    #"
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

##################### Define Working Library Directory ######################

puts "#############################################"
puts "#      Define Working Library Directory     #"
puts "#############################################"

set OUT $SCRIPT_DIR
define_design_lib WORK -path ./work
############################# Formality Setup File ##########################

puts "#############################################"
puts "#            Formality Setup File           #"
puts "#############################################"

set_svf $OUT/$top_module.svf

######################## Reading RTL Files #################################

puts "#############################################"
puts "#             Reading RTL Files             #"
puts "#############################################"

set file_format verilog
set fh [open system.lst r]
set designs {}
while {[gets $fh line] >= 0} {
    set line [string trim $line]
    if {$line ne ""} {lappend designs [file join $ROOT $line]}
}
close $fh
if {![analyze -format $file_format -library WORK $designs]} {
    puts stderr "RTL analysis failed"
    exit 1
}

###################### Defining toplevel ###################################

puts "#############################################"
puts "#             Defining toplevel             #"
puts "#############################################"

elaborate $top_module -library WORK
current_design $top_module
#################### Liniking All The Design Parts #########################

puts "#############################################"
puts "#       Liniking All The Design Parts       #"
puts "#############################################"

if {![link]} {
    puts stderr "RTL link failed"
    exit 1
}

# Check design consistency

puts "#############################################"
puts "#          Check design consistency         #"
puts "#############################################"

check_design
set_dont_touch [get_cells -hierarchical -filter {ref_name == TLATNCAX12M}] true

puts "#############################################"
puts "#          Clock Gate Scan Policy           #"
puts "#############################################"

set ICG_CELL [get_cells U_CLK_GATE/U_ICG]
if {[sizeof_collection $ICG_CELL] != 1} {
    puts stderr "Expected one integrated clock-gating cell"
    exit 1
}
# Only the clock-gating latch is nonscan; all data flops remain scan candidates.
set_scan_element false $ICG_CELL

#################### Define Design Constraints #########################

puts "#############################################"
puts "#         Define Design Constraints         #"
puts "#############################################"

source ./cons.tcl

#################### Archirecture Scan Chains #########################

puts "#############################################"
puts "#          Archirecture Scan Chains         #"
puts "#############################################"

set_scan_configuration -style multiplexed_flip_flop -chain_count 3 -clock_mixing no_mix
###################### Mapping and optimization ########################

puts "#############################################"
puts "#          Mapping and optimization         #"
puts "#############################################"

puts "#############################################"
puts "#            ALU Optimization               #"
puts "#############################################"

ungroup [get_cells U_ALU] -flatten
set_fix_hold [get_clocks {REF_CLK UART_CLK ALU_CLK TX_CLK RX_CLK}]
compile -scan -map_effort high

# Setting Test Timing Variables

puts "#############################################"
puts "#       Setting Test Timing Variables       #"
puts "#############################################"

set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################

puts "#############################################"
puts "#             Define DFT Signals            #"
puts "#############################################"

set_dft_signal -port [get_ports scan_clk] -type ScanClock -view existing_dft -timing {45 55}
set_dft_signal -port [get_ports scan_rst] -type Reset -view existing_dft -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant -view existing_dft -active_state 1
set_dft_signal -port [get_ports test_mode] -type TestMode -view spec -active_state 1
set_dft_signal -port [get_ports SE] -type ScanEnable -view spec -active_state 1 -usage scan
for {set n 0} {$n < 3} {incr n} {
    set si [get_ports [format {SI[%d]} $n]]
    set so [get_ports [format {SO[%d]} $n]]
    set_dft_signal -port $si -type ScanDataIn -view spec
    set_dft_signal -port $so -type ScanDataOut -view spec
    set_scan_path chain_$n -view spec -scan_data_in [get_object_name $si] -scan_data_out [get_object_name $so]
}

############################# Create Test Protocol #######################

puts "#############################################"
puts "#            Create Test Protocol           #"
puts "#############################################"

create_test_protocol
###################### Pre-DFT Design Rule Checking #######################

puts "#############################################"
puts "#        Pre-DFT Design Rule Checking       #"
puts "#############################################"

dft_drc -verbose > $OUT/pre_dft_drc.rpt
############################# Preview DFT ##############################

puts "#############################################"
puts "#                Preview DFT                #"
puts "#############################################"

preview_dft -show scan_summary > $OUT/preview_dft.rpt
############################# Insert DFT ##############################

puts "#############################################"
puts "#                 Insert DFT                #"
puts "#############################################"

insert_dft
set_case_analysis 1 [get_ports test_mode]
set_fix_hold [get_clocks SCAN_CLK]
compile -scan -incremental_mapping -map_effort high

puts "#############################################"
puts "#     Post-DFT Functional Optimization      #"
puts "#############################################"

set_case_analysis 0 [get_ports test_mode]
set_case_analysis 0 [get_ports SE]
update_timing
set_fix_hold [get_clocks {REF_CLK UART_CLK ALU_CLK TX_CLK RX_CLK}]
compile -scan -incremental_mapping -map_effort high
remove_case_analysis [get_ports SE]
set_case_analysis 1 [get_ports test_mode]
change_names -rules verilog -hierarchy

# Check the mapped design

puts "#############################################"
puts "#          Check the mapped design          #"
puts "#############################################"

if {![link]} {
    puts stderr "Mapped design link failed"
    exit 1
}
check_design
if {[sizeof_collection [get_cells -hierarchical -filter {ref_name =~ GTECH*}]]} {
    puts stderr "Unmapped GTECH cells remain"
    exit 1
}
if {[sizeof_collection [get_cells -hierarchical -filter {ref_name =~ TLATNX* || ref_name =~ TLATX*}]]} {
    puts stderr "Unexpected standalone latch remains"
    exit 1
}

# Post-DFT Design Rule Checking and scan reports

puts "####################################################"
puts "#  Post-DFT Design Rule Checking and scan reports  #"
puts "####################################################"

dft_drc -verbose > $OUT/post_dft_drc.rpt
dft_drc -coverage_estimate > $OUT/dft_coverage.rpt
report_scan_path -view existing_dft -chain all > $OUT/scan_paths.rpt
report_dft_signal -view existing_dft > $OUT/dft_signals.rpt

# Scan timing: test_mode=1

puts "#############################################"
puts "#          Scan timing: test_mode=1         #"
puts "#############################################"

set_case_analysis 1 [get_ports test_mode]

####################### reporting ##########################################

puts "#############################################"
puts "#                 reporting                 #"
puts "#############################################"

report_area -hierarchy > $OUT/area.rpt
report_power -hierarchy > $OUT/power.rpt
report_timing -delay_type max -max_paths 100 -nworst 10 > $OUT/setup.rpt
report_timing -delay_type min -max_paths 100 -nworst 10 > $OUT/hold.rpt
report_constraint -all_violators -nosplit > $OUT/constraints.rpt
report_clock -attributes > $OUT/clocks.rpt
check_design > $OUT/check_design.rpt
check_timing > $OUT/check_timing.rpt
report_reference -hierarchy > $OUT/references.rpt

write_sdc -nosplit $OUT/${top_module}_scan.sdc

# Functional timing: test_mode=0, SE=0

puts "#############################################"
puts "#    Functional timing: test_mode=0, SE=0   #"
puts "#############################################"

set_case_analysis 0 [get_ports test_mode]
set_case_analysis 0 [get_ports SE]
update_timing
report_case_analysis > $OUT/case_analysis_functional.rpt
report_clock -attributes > $OUT/clocks_functional.rpt
report_disable_timing > $OUT/disabled_timing_functional.rpt
report_timing -delay_type max -max_paths 100 > $OUT/setup_functional.rpt
report_timing -delay_type min -max_paths 100 > $OUT/hold_functional.rpt
report_constraint -all_violators -nosplit > $OUT/constraints_functional.rpt
check_timing > $OUT/check_timing_functional.rpt

write_sdc -nosplit $OUT/${top_module}_functional.sdc

# Write out files

puts "#############################################"
puts "#              Write out files              #"
puts "#############################################"

remove_case_analysis [get_ports SE]
set_case_analysis 1 [get_ports test_mode]
write_file -format verilog -hierarchy -output $OUT/$top_module.v
write_file -format ddc -hierarchy -output $OUT/$top_module.ddc
write_sdf $OUT/$top_module.sdf
write_test_protocol -output $OUT/$top_module.spf
set_svf -off
exit

