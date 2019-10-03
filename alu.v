`define add 2'b00
`define subtract 2'b01
`define multiply 2'b10 
`define divide 2'b11 

module alu (input [7:0] regA, regB,
				input [1:0] opcode,
				input clock, computestrobe,
				output reg [7:0] result,
				output reg ovf
				);
				
			
	always @(posedge clock) begin
		if (computestrobe) begin 
			case(opcode)
			`add : begin 
			
			end
			`subtract : begin
			end
			
			
			
			endcase
		end
	end


endmodule 