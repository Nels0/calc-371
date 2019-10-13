module displaymux (input [1:0] display_select,
					input [3:0] hex0char_A, hex1char_A, hex2char_A,
					input [3:0] hex0char_B, hex1char_B, hex2char_B,
					output reg [3:0] hex0char_out, hex1char_out, hex2char_out);
					
always @(display_select) begin
	if (display_select == 2'b00) begin
		hex0char_out = hex0char_A;
		hex1char_out = hex1char_A;
		hex2char_out = hex2char_A;
	end else if (display_select == 2'b01) begin
		hex0char_out = hex0char_B;
		hex1char_out = hex1char_B;
		hex2char_out = hex2char_B;
	end else if (display_select == 2'b10) begin
		hex0char_out = 0;
		hex1char_out = 2;
		hex2char_out = 4;
	end
end

endmodule 