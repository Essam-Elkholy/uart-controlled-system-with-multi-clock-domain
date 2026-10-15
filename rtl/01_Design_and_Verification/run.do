transcript on

if {![file exists work]} {
    vlib work
}

vmap work work

vlog -work work -f source_files.f
vlog -work work -f tb_source_files.f

vsim -voptargs=+acc work.SYS_TOP_tb

# organized waveform (groups, radix, colors) from wave.do
do wave.do

run -all
wave zoom full
