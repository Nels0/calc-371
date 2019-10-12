`define add 2'b00
`define subtract 2'b01
`define multiply 2'b10 
`define divide 2'b11 

//asd

module alu#(parameter BITS = 21)
				 (input signed [10:0] regA, regB, //11-bit reg for signed int +999 to -999
				input [1:0] opcode,
				input clock, computestrobe,
				output reg signed[20:0] result, //21-bit reg for signed int +999*999 to -999*999
				output reg ovf,
				output reg remainderbitmask // Where values are 1, the mux should display that as remainder?
				);
				
	reg signed [20:0] tempSum, shiftedA, extendedB;
	reg signed [10:0] A, Qinv;
	reg signed [22:0] P;
	integer i;
	always @(posedge clock) begin
		if (computestrobe) begin 

			case(opcode)
			`add : begin 
				result = regA + regB;
			end
			`subtract : begin
				result = regA - regB;
			end
			
			`multiply : begin //Doesn't seem to handle 2's complement negative numbers right
			/*
				tempSum = 0;

				shiftedA = {{10{regA[10]}}, {regA}};
				extendedB = {{10{regB[10]}}, {regB}};
				
				
					for (i = 0; i < 21; i = i+1) begin
						//tempSum =(regB[i] == 1'b1)? tempSum + regA : tempSum;
						if (extendedB[i] == 1'b1) begin
							tempSum = tempSum + shiftedA;
						end
						shiftedA = shiftedA << 1;
					end
				result = tempSum;
			*/
			
			
				//Implementation of Booth's Algorithm
				
				//A: tracking variable A
				//RegA: Multiplicand M
				//RegB: Mutliplier Q
				
				//A defaults to 0
				A = {11{1'b0}};	
				//AQq_0 initialise
				P = {A, regB, 1'b0};
				
				for (i = 11; i > 0; i = i-1) begin
				

					//q1q0 = P [1:0];
					
					Qinv = -regA;
					
					case (P [1:0]) 
						2'b01 : A = A + regA;
						2'b10 : A = A + Qinv;
						default: begin end
					endcase
					
					//Update AQq
					P = {A, P [11:0]};
					
					//Shift AQq right (with sign extension)
					//P = P >> 1;
					P = {P[22], P[22:1]};
					
				end
				
				result = P [22:1];
				
			end
				
			default : begin
				result = 0;
			end
			
			
			endcase
		end
	end


endmodule 