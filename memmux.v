module memmux (input [1:0] display_select,
					input [31:0] A, B, result,
					output reg [31:0] mem_input);
	
	always @(*) begin
		case (display_select)
			2'b00 : mem_input = A;
			2'b01 : mem_input = B;
			2'b10 : mem_input = result;
			default : mem_input = A;
		endcase
	
	end
	
endmodule 