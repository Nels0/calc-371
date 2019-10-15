module resultformatter (input clock, remain,
					input [20:0] ALUresult, ALUremainder,
					output reg [31:0] formattedresult, 
					output reg [31:0] result_formem);
					
	wire [2:0] length_result, length_remainder;
	wire [31:0] result_bcd, remainder_bcd;
	wire result_neg;
	
	
	//BCD conversion
	numlength resultlength (.binary_num(ALUresult),
									.length(length_result));
		
	numlength remainderlength (.binary_num(ALUremainder),
										.length(length_remainder));
	

	//generate length parameters for numbers and negative for resul	
	bintobcd result_to_bcd(.bin(ALUresult),
									.bcdnum(result_bcd));
									
	bintobcd remainder_to_bcd(.bin(ALUremainder),
									.bcdnum(remainder_bcd));
	
	assign result_neg = ALUresult[20];
	
	
	
	
	
	
	
	//genvar i;
	
	//always @(posedge clock) begin
		//formattedresult = {8{4'b1111}};
		
		
		
		
			
			 /*

				generate 
				for (i = 0; i < 8; i = i+1) begin : notdiv
			
					if(result_neg && i == length_result && !remain) begin
						assign formattedresult[i*4+3:i*4] = 4'b1110;
					end else if(i < length_result && !remain) begin
						assign formattedresult[i*4+3:i*4] = result_bcd[i*4+3:i*4];
					end else if(!remain) begin
						assign formattedresult[i*4+3:i*4] = 4'b1111;
					end
				end
				endgenerate

			
			
			end else begin
				if(result_neg && i == length_result + length_remainder + 1) begin
					formattedresult[i*4+3:i*4] = 4'b1110;
				end else if(i < length_result + length_remainder && i > 1 + length_remainder) begin
					formattedresult[i*4+3:i*4] = result_bcd[i*4 - 1 - length_remainder + 3:i*4 - 1 - length_remainder];
				end else if(i == length_remainder) begin
					formattedresult[i*4+3:i*4] = 4'b1010;
				end else if (i < length_remainder) begin
					formattedresult[i*4+3:i*4] = result_bcd[i*4+3:i*4];		
				end
			end
			*/
	//end
		
	
endmodule 