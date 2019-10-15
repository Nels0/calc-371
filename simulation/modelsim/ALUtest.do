vsim work.alu

add wave  \
sim:/alu/regA \
sim:/alu/regB \
sim:/alu/opcode \
sim:/alu/clock \
sim:/alu/computestrobe \
sim:/alu/result \
sim:/alu/remain \
sim:/alu/remainder \
sim:/alu/i \
sim:/alu/P \


force -freeze sim:/alu/clock 1 0, 0 {50 ps} -r 100

force -freeze sim:/alu/opcode 11 0

for { set i -3 } { $i<=4 } { incr i } { #timescheck    
	# Convert to 32 binary digits, store result in "i_bin" variable
	# I don't know how this fucking works fuck    
	binary scan [binary format I $i] B32 i_bin  
	
	for { set j -3 } { $j<=4 } { incr j } {
	   
		if {$j != 0} {	
			binary scan [binary format I $j] B32 j_bin
			
			# Set compute strobe high for 1 cycle
			force -freeze sim:/alu/computestrobe 1 0 -cancel 100 
			force -freeze sim:/alu/regA $i_bin 0 
			force -freeze sim:/alu/regB $j_bin 0    
			run

			#For correct answer (if you forget that -3 * -3 is 9)
				set k [expr {int([expr {double($i) / double($j)}])}]

			if {[examine -radix decimal sim:/alu/result] != $k} { 
				echo "FAIL DIV TEST $i / $j = $k GOT [examine -radix decimal sim:/alu/result]"       
				abort
			}
				set k [expr {$i % $j}]

			if {[examine -radix decimal sim:/alu/remainder] != $i % $j} { 
				echo "FAIL DIV TEST $i % $j = $k GOT [examine -radix decimal sim:/alu/remainder]"       
				#abort
			}
		}
	}
}

echo "PASS DIVISION TESTS"


force -freeze sim:/alu/opcode 10 0

for { set i -3 } { $i<=4 } { incr i } { #timescheck    
	# Convert to 32 binary digits, store result in "i_bin" variable
	# I don't know how this fucking works fuck    
	binary scan [binary format I $i] B32 i_bin  
	
	for { set j -3 } { $j<=4 } { incr j } {
	   
	   binary scan [binary format I $j] B32 j_bin
	   
	   # Set compute strobe high for 1 cycle
	   force -freeze sim:/alu/computestrobe 1 0 -cancel 100 
	   force -freeze sim:/alu/regA $i_bin 0 
	   force -freeze sim:/alu/regB $j_bin 0    
	   run

	   #For correct answer (if you forget that -3 * -3 is 9)
		set k [expr {$i * $j}]

	   if {[examine -radix decimal sim:/alu/result] != $i * $j} { 
		  echo "FAIL MULT TEST $i * $j = $k"       
		  abort
	   }
	}
}

echo "PASS MUTLIPLICATION TESTS"

# Set to add mode
force -freeze sim:/alu/opcode 00 0

#addcheck
for { set i -3 } { $i<=4 } { incr i } { # addcheck 
	# Convert to 11 binary digits, store result in "i_bin" variable    
	# I don't know how this fucking works fuck whatever these functions are what's a scan fuck you
	binary scan [binary format I $i] B32 i_bin 
	
	for { set j -3 } { $j<=4 } { incr j } {
	   
	   binary scan [binary format I $j] B32 j_bin
	   
	   # Set compute strobe high for 1 cycle
	   force -freeze sim:/alu/computestrobe 1 0 -cancel 100 
	   force -freeze sim:/alu/regA $i_bin 0 
	   force -freeze sim:/alu/regB $j_bin 0    
	   run
	   if {[examine -radix decimal sim:/alu/result] != $i + $j} { 
		  echo "FAIL ADD TEST $i + $j"       
		  abort
	   }
	}
}


echo "PASS ADD TESTS"

# Set to subtract mode
force -freeze sim:/alu/opcode 01 0

for { set i -3 } { $i<=4 } { incr i } { #subtrcheck    
	# Convert to 32 binary digits, store result in "i_bin" variable
	# I don't know how this fucking works fuck    
	binary scan [binary format I $i] B32 i_bin  
	
	for { set j -3 } { $j<=4 } { incr j } {
	   
	   binary scan [binary format I $j] B32 j_bin
	   
	   # Set compute strobe high for 1 cycle
	   force -freeze sim:/alu/computestrobe 1 0 -cancel 100 
	   force -freeze sim:/alu/regA $i_bin 0 
	   force -freeze sim:/alu/regB $j_bin 0    
	   run
	   if {[examine -radix decimal sim:/alu/result] != $i - $j} { 
		  echo "FAIL SUBTR TEST $i - $j"       
		  abort
	   }
	}
}


echo "PASS SUBTR TESTS"


echo "PASS ALL TESTS"


