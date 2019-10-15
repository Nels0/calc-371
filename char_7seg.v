module char_7seg( input [3:0] S,
						output reg [0:6] Display);
						

	always @(S)
	begin
		case (S)
		4'b0000  : Display <= 7'b0000001; //0
		4'b0001  : Display <= 7'b1001111; //1
		4'b0010  : Display <= 7'b0010010; //2
		4'b0011  : Display <= 7'b0000110; //3
		4'b0100  : Display <= 7'b1001100; //4
		4'b0101  : Display <= 7'b0100100; //5
		4'b0110  : Display <= 7'b0100000; //6
		4'b0111  : Display <= 7'b0001111; //7
		4'b1000  : Display <= 7'b0000000; //8
		4'b1001  : Display <= 7'b0001100; //9
		4'b1010  : Display <= 7'b1111010; //r
		4'b1110  : Display <= 7'b1111110; //-
		default  : Display <= 7'b1111111; //blank
		endcase
	end
						
						
endmodule