module keypadhandler (
	input keystrobe,
	input [3:0] keycode,
	
	output dig_strobe,
	output reset_strobe,
	output ex_strobe,
	output op_strobe,
	
	output dig_code,
	output op_code);
	
assign dig_strobe = ((keycode < 4'b1010) && keystrobe)? 1:0;
assign reset_strobe = ((keycode == 4'b1010) && keystrobe)? 1:0;
assign ex_strobe = ((keycode == 4'b1011) && keystrobe)? 1:0;
assign op_strobe = ((keycode > 4'b1011) && keystrobe)? 1:0;

assign dig_code = keycode;
assign op_code = {~keycode[1],~keycode[0]}; // + = 0, - = 1, * = 2, / = 3

endmodule