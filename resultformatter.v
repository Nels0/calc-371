module resultformatter (input clock, remain,
					input [20:0] ALUresult, ALUremainder,
					output reg [31:0] formattedresult, 
					output reg [31:0] result_formem);
					
	wire [2:0] length_result, length_remainder;
	reg [31:0] temp_result, temp_result_1, temp_remainder;
	reg [2:0] result_used, result_used_1, remainder_used;
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
	
	integer i;
	
	always @ (posedge clock) begin;
	
		result_used = 3'd0;
		remainder_used = 3'd0;
		temp_remainder = remainder_bcd;
		temp_result = result_bcd;
	
		//ALU result format
		for (i = 0; i < 8; i = i + 1) begin
			if (remainder_used < length_remainder && remain) begin //Put in remainder
				formattedresult = formattedresult >> 4; //shift right
				formattedresult[31:28] = temp_remainder[3:0]; //add remainder digit
				temp_remainder = temp_remainder >> 4; //shift remainder used
				remainder_used = remainder_used + 1; //keep track
			end else if (remainder_used == length_remainder && remain) begin
				formattedresult = formattedresult >> 4; //put in "r"
				formattedresult[31:28] = 4'b1010; //"r" 
				remainder_used = remainder_used + 1;
			end else if (result_used < length_result) begin //put in result
				formattedresult = formattedresult >> 4;
				formattedresult[31:28] = temp_result[3:0];
				temp_result = temp_result >> 4;
				result_used = result_used + 1; //keep track
			end else if (result_used == length_result && result_neg == 1) begin //put in negative
				formattedresult = formattedresult >> 4;
				formattedresult[31:28] = 4'b1110; //"r"
				result_used = result_used + 1;
			end else begin
				formattedresult = formattedresult >> 4; //fill the rest with blanks
				formattedresult[31:28] = 4'b1111; //blank
			end
		end
	end

	always @ (posedge clock) begin
		
		//Memory storage format 
		result_used_1 = 3'd0;
		temp_result_1 = result_bcd;
		
		for (i = 0; i < 8; i = i + 1) begin
			if (result_used_1 < length_result && result_used_1 < 3'd3) begin //put in last 3 digs of result
				result_formem = result_formem >> 4;
				result_formem[31:28] = temp_result_1[3:0];
				temp_result_1 = temp_result_1 << 4;
				result_used_1 = result_used_1 + 1;
			end else begin
				result_formem = result_formem >> 4; //fill the rest with blanks
				result_formem[31:28] = 4'b1111; //blank
			end
		end
		
	end

	
endmodule 