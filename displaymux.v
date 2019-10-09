module displaymux (input display_select,
					input [3:0] hex0char_A, hex1char_A, hex2char_A,
					input [3:0] hex0char_B, hex1char_B, hex2char_B,
					output reg [3:0] hex0char_out, hex1char_out, hex2char_out);
always @(*) begin
	if (~display_select) begin
		hex0char_out = hex0char_A;
		hex1char_out = hex1char_A;
		hex2char_out = hex2char_A;
	end else begin
		hex0char_out = hex0char_B;
		hex1char_out = hex1char_B;
		hex2char_out = hex2char_B;
	end
	end
endmodule 