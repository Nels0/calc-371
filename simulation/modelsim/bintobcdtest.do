vlog -vlog01compat -work work +incdir+C:/Users/nelso/source/repos/calc-371 -O0 C:/Users/nelso/source/repos/calc-371/bintobcd.v

vsim work.bintobcd

add wave  \
sim:/bintobcd/bin \
sim:/bintobcd/BCD0 \
sim:/bintobcd/BCD1 \
sim:/bintobcd/BCD2 \
sim:/bintobcd/BCD3 \
sim:/bintobcd/BCD4 \
sim:/bintobcd/BCD5 \
sim:/bintobcd/BCD6 \
sim:/bintobcd/BCD7 \
sim:/bintobcd/BCD8 \
sim:/bintobcd/masterreg \
sim:/bintobcd/i
run
force -freeze sim:/bintobcd/bin 000000000000011110011 0
run
force -freeze sim:/bintobcd/bin 000000000000011010011 0
run
force -freeze sim:/bintobcd/bin 000000000010011110011 0
run
force -freeze sim:/bintobcd/bin 000001000010011110011 0
run
force -freeze sim:/bintobcd/bin 000001000010011110011 0
run
force -freeze sim:/bintobcd/bin 111111111111111111111 0
run
force -freeze sim:/bintobcd/bin 100001000010011110011 0
run
force -freeze sim:/bintobcd/bin 100000000000000000000 0
run