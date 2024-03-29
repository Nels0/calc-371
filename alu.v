`define add 2'b00
`define subtract 2'b01
`define multiply 2'b10 
`define divide 2'b11 

//asd

module alu (input signed [10:0] regA, regB, //11-bit reg for signed int +999 to -999
				input [1:0] opcode,
				input clock, computestrobe,
				output reg signed[20:0] result, //21-bit reg for signed int +999*999 to -999*999
				output reg remain, //Whether there's a remainder
				output reg [20:0] remainder // Where values are 1, the mux should display that as remainder?
				);

	reg [10:0] N, D;
	reg signed [22:0] P;
	integer i;
	
	always @(posedge clock) begin
		if (computestrobe) begin 

			remain <= 1'b0;
			
			case(opcode)
			`add : begin 
				result = regA + regB;
			end
			`subtract : begin
				result = regA - regB;
			end
			
			`multiply : begin

				//Implementation of Booth's Algorithm for 11 bit numbers(from wikipedia desc)	
				//RegA: Multiplicand M
				//RegB: Mutliplier R
				//P: Product register that is operated on by the algorithm
				
				//Initialise P with zeros, multiplier and a zero bit
				P = {{11{1'b0}}, regB, 1'b0};
				
				//Perform algorithm n bit times
				for (i = 11; i > 0; i = i-1) begin

					//Update P
					case (P [1:0]) 
						2'b01 : P[22:12] = P[22:12] + regA;
						2'b10 : P[22:12] = P[22:12] - regA;
						default: begin end
					endcase
										
					//Shift AQq right (with sign extension)
					P = {P[22], P[22:1]};
					
				end
				
				//Trim zero and leading bit off
				result = P [21:1];
				
			end
				
			`divide : begin
			  //NOTE: The way we're asked to implement it is ass
			  //Why would the quotient be different whenyou flip the sign of one???
			  //Remainder should be the same sign as the numerator
			  //But I guess we'll fo the dum offset???
			  
				//Implementation of long division algorithm
				/*
				Numerator 	N : regA
				Divisor 		D : regB
				Quotient 	Q : result
				Remainder 	R : remainder
				*/
			

				result = 21'd0;
				remainder = 21'd0;
				
				//Convert N and D to magnitude only
				N = (regA[10] == 1)? -regA: regA;
				D = (regB[10] == 1)? -regB: regB;
				
				
				if(D != 11'd0) begin //div/0 check all outputs zero when div/0
					for (i = 10; i >= 0; i = i-1) begin
						remainder = remainder << 1;
						remainder[0] = N[i];
						
						if (remainder >= D) begin
							remainder = remainder - D;
							result[i] = 1'b1;
						end
					end
					
					
					if(regA[10] == 1'b1 && remainder != 21'd0) begin //handle the STUPID case
						remainder = D - remainder;
						result = result + 1'b1;
					end
					
					//Convert results back to two's complement
					result = ((regA[10] == 1)^(regB[10] == 1))? -result:result;
					//stupid case: remainder is positive
					//remainder = ((regA[10] == 1)^(regB[10] == 1))? -remainder : remainder;
					remain <= 1'b1;
				end
				
				
				
			end
				
			default : begin	end
			
			
			endcase
		end
	end


endmodule 