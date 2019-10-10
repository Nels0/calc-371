module keypadsignal (
	input keystrobe,
	input [3:0] keycode,
	output op_strobe,
	output dig_strobe);

// when keystrobe is pressed, sends out either a strobe for operator or digit depending on the keycode
assign op_strobe = (keystrobe && keycode[2] && keycode[3]);
assign dig_strobe = (keystrobe && ~(keycode[2] && keycode[3]));

endmodule