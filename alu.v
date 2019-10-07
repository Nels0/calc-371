`define add 2'b00
`define subtract 2'b01
`define multiply 2'b10 
`define divide 2'b11 

module alu#(parameter BITS = 21)
				 (input signed [10:0] regA, regB, //11-bit reg for signed int +999 to -999
				input [1:0] opcode,
				input clock, computestrobe,
				output reg signed[BITS-1:0] result, //21-bit reg for signed int +999*999 to -999*999
				output reg ovf
				);
				
	reg signed [BITS-1:0] tempSum, shiftedA;
	integer i;
	always @(posedge clock) begin
		if (computestrobe) begin 
			tempSum = 0;
			shiftedA = regA;
			case(opcode)
			`add : begin 
				result = regA + regB;
			end
			`subtract : begin
				result = regA - regB;
			end
			
			`multiply : begin //Doesn't seem to handle 2's compleemnt negative numbers right
				for (i = 0; i < 11; i = i+1) begin
					//tempSum =(regB[i] == 1'b1)? tempSum + regA : tempSum;
					if (regB[i] == 1'b1) begin
						tempSum = tempSum + shiftedA;
					end
					shiftedA = shiftedA << 1;
				end
				result = tempSum;
			end
			
			default : begin
			result = 0;
			end
			
			
			endcase
		end
	end


endmodule 