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

set OUT [file join $ROOT 02_Synthesis_Netlist_and_Reports]
file mkdir $OUT
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
#################### Define Design Constraints #########################

puts "#############################################"
puts "#         Define Design Constraints         #"
puts "#############################################"

source ./cons.tcl

###################### Mapping and optimization ########################

puts "#############################################"
puts "#          Mapping and optimization         #"
puts "#############################################"

puts "#############################################"
puts "#            ALU Optimization               #"
puts "#############################################"

ungroup [get_cells U_ALU] -flatten
set_fix_hold [all_clocks]
compile -map_effort high
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

# Write out files

puts "#############################################"
puts "#              Write out files              #"
puts "#############################################"

write_file -format verilog -hierarchy -output $OUT/$top_module.v
write_file -format ddc -hierarchy -output $OUT/$top_module.ddc
write_sdc -nosplit $OUT/$top_module.sdc
write_sdf $OUT/$top_module.sdf
set_svf -off

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

exit
