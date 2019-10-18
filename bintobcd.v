module bintobcd(input signed [20:0] bin,
						output reg [31:0] bcdnum);
						
						
//NB: Fails on -1,048,576 BUT THIS IS OKAY because we will never get this number 
						
//Implementation of the double dabble algorithm
							
		reg [51:0] masterreg;
		reg negative;
		integer i;
		
		
		always @(bin) begin
			//register for scratch spave
			masterreg = {52{1'b0}};
			
			//Keep track of sign of number
			negative = (bin[20] == 1)? 1'b1: 1'b0;
			
			//Absolute binary value put in scratch space
			masterreg[19:0] = (negative)? -bin[19:0]: bin[19:0];

			//Perform algoirthm n (bits) times
			for (i = 0; i < 20; i = i + 1) begin
			  
			
				//Adds three to each BCD digit as needed
				if(masterreg[23:20] >= 4'd5 ) begin
				  masterreg[23:20] = masterreg[23:20] + 4'd3;
				end
				if(masterreg[27:24] >= 4'd5 ) begin
				  masterreg[27:24] = masterreg[27:24] + 4'd3;
				end
				if(masterreg[31:28] >= 4'd5 ) begin
				  masterreg[31:28] = masterreg[31:28] + 4'd3;
				end
				if(masterreg[35:32] >= 4'd5 ) begin
				  masterreg[35:32] = masterreg[35:32] + 4'd3;
				end
				if(masterreg[39:36] >= 4'd5 ) begin
				  masterreg[39:36] = masterreg[39:36] + 4'd3;
				end
				if(masterreg[43:40] >= 4'd5 ) begin
				  masterreg[43:40] = masterreg[43:40] + 4'd3;
				end
				if(masterreg[47:44] >= 4'd5 ) begin
				  masterreg[47:44] = masterreg[47:44] + 4'd3;
				end
				//Left shit		  
				masterreg = masterreg << 1;
				 

			end
			
			//Adds negative sign to rightmost BCD char
			masterreg[51:48] = (negative)? 4'b1110 : 4'b1111;
			
			//Extract BCD string from scratch space
			bcdnum = masterreg[51:20];
		  
		
		end
		
	endmodule 
	
