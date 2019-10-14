
vsim work.bcdtobin

add wave  \
sim:/bcdtobin/BCD0 \
sim:/bcdtobin/BCD1 \
sim:/bcdtobin/BCD2 \
sim:/bcdtobin/BCD3 \
sim:/bcdtobin/binout
run
force -freeze sim:/bcdtobin/BCD0 001 0
force -freeze sim:/bcdtobin/BCD1 0010 0
force -freeze sim:/bcdtobin/BCD2 0100 0
force -freeze sim:/bcdtobin/BCD3 1111 0
run
force -freeze sim:/bcdtobin/BCD3 1011 0
run
force -freeze sim:/bcdtobin/BCD3 1111 0
force -freeze sim:/bcdtobin/BCD2 1011 0
run
force -freeze sim:/bcdtobin/BCD1 1011 0
force -freeze sim:/bcdtobin/BCD2 111 0
force -freeze sim:/bcdtobin/BCD2 1111 0
run

