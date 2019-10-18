module inputhandler (
	input keystrobe,
	input [3:0] keycode,
	
	output dig_strobe,
	output reset_strobe,
	output ex_strobe,
	output op_strobe,
	output sub_strobe,
	
	output [3:0] dig_code,
	output [1:0] op_code);
	
// combinatorial module takes the keycode and keystrobe signals in 
// gives to the FSM corresponding strobes for a digit press, reset press,
// equals press, operator press, and subtract press

//keycodes below 10 correspond to digits 
assign dig_strobe = ((keycode < 4'b1010) && keystrobe)? 1'b1:1'b0;
// keycode of 10 corresponds to reset (A key)
assign reset_strobe = ((keycode == 4'b1010) && keystrobe)? 1'b1:1'b0;
// keycode of 11 corresponds to equals (B key)
assign ex_strobe = ((keycode == 4'b1011) && keystrobe)? 1'b1:1'b0;
// keycode greater than 11 corresponds to operator keys
assign op_strobe = ((keycode > 4'b1011) && keystrobe)? 1'b1:1'b0;
// keycode of 14 corresponds to - key 
assign sub_strobe = ((keycode == 4'b1110) && keystrobe)? 1'b1:1'b0;


// data lines for digit code and operator code
assign dig_code = keycode;
assign op_code = ~keycode[1:0]; // + = 0, - = 1, * = 2, / = 3

endmodule