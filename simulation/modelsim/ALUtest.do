vsim work.alu

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

# Set to add mode
force -freeze sim:/alu/opcode 00 0

#addcheck
for { set i 1 } { $i<=7 } { incr i } { # addcheck 
	# Convert to 11 binary digits, store result in "i_bin" variable    
	binary scan [binary format c $i] B16 i_bin  
	# Set compute strobe high for 1 cycle
	force -freeze sim:/alu/computestrobe 1 0 -cancel 100 
	force -freeze {sim:/alu/regA $i_bin [10:0]}   
	force -freeze {sim:/alu/regB $i_bin [10:0]}   
	run
	run
	if {[examine -radix decimal sim:/alu/result] != $i + $i} { 
		echo "FAIL ADD TEST $i"       
		abort
	}
}


echo "PASS ADD TESTS"

# Set to subtract mode
force -freeze sim:/alu/opcode 01 0

for { set i 0 } { $i<=7 } { incr i } { #subtrcheck    
	# Convert to 11 binary digits, store result in "i_bin" variable    
	binary scan [binary format c $i] B16 i_bin  
	# Set compute strobe high for 1 cycle
	force -freeze sim:/alu/computestrobe 1 0 -cancel 100 
	force -freeze sim:/alu/regA $i_bin [10:0]}    
	force -freeze sim:/alu/regB {$i_bin [10:0]} 0    
	run
	run
	if {[examine -radix decimal sim:/alu/result] != $i - $i} { 
		echo "FAIL SUBTR TEST $i"       
		abort
	}
}


echo "PASS SUBTR TESTS"