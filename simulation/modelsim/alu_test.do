# Reading C:/Altera/12.0/modelsim_ase/tcl/vsim/pref.tcl 
# do Calculator_run_msim_rtl_verilog.do 
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Copying C:\Altera\12.0\modelsim_ase\win32aloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# ** Warning: Copied C:\Altera\12.0\modelsim_ase\win32aloem/../modelsim.ini to modelsim.ini.
#          Updated modelsim.ini.
# 
# vlog -vlog01compat -work work +incdir+D:/ncoo/calc-371 {D:/ncoo/calc-371/alu.v}
# Model Technology ModelSim ALTERA vlog 10.0d Compiler 2012.01 Jan 18 2012
# -- Compiling module alu
# 
# Top level modules:
# 	alu
# 
#  
vsim -voptargs=+acc work.alu
# vsim -voptargs=+acc work.alu 
# Loading work.alu
add wave  \
sim:/alu/regA \
sim:/alu/regB \
sim:/alu/opcode \
sim:/alu/clock \
sim:/alu/computestrobe \
sim:/alu/result \
sim:/alu/ovf \
sim:/alu/tempSum \
sim:/alu/shiftedA \
sim:/alu/i
force -freeze sim:/alu/clock 1 0, 0 {50 ps} -r 100
run
force -freeze sim:/alu/regA 00000000011 0
force -freeze sim:/alu/regB 00000000010 0
force -freeze sim:/alu/opcode 00 0
force -freeze sim:/alu/computestrobe 1 0 -cancel 100
run
run
force -freeze sim:/alu/regB 11111111110 0
run
force -freeze sim:/alu/computestrobe 1 0 -cancel 100
run
run
force -freeze sim:/alu/opcode 10 0
noforce sim:/alu/computestrobe
force -freeze sim:/alu/computestrobe 1 0 -cancel 100
run
run
write format wave -window .main_pane.wave.interior.cs.body.pw.wf D:/ncoo/calc-371/simulation/modelsim/alu_sim.do
