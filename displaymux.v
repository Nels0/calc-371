module displaymux (input display_select,
					input [3:0] hex0char_A, hex1char_A, hex2char_A,
					input [3:0] hex0char_B, hex1char_B, hex2char_B,
					output [3:0] hex0char_out, hex1char_out, hex2char_out);
	
	if (~display_select) begin
		assign hex0char_out = hex0char_A;
		assign hex1char_out = hex1char_A;
		assign hex2char_out = hex2char_A;
	end else begin
		assign hex0char_out = hex0char_B;
		assign hex1char_out = hex1char_B;
		assign hex2char_out = hex2char_B;
	end
endmodule 