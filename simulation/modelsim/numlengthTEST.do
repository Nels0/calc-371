vsim -voptargs=+acc work.numlength

add wave  \
sim:/numlength/binary_num \
sim:/numlength/length \
sim:/numlength/abs_num
force -freeze sim:/numlength/binary_num 0000000000000000110000 0
run
force -freeze sim:/numlength/binary_num 0000000110000000000000 0
run
force -freeze sim:/numlength/binary_num 0111000000000000000000 0
run
force -freeze sim:/numlength/binary_num 011110011101001110001 0
run

