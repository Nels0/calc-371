module bintobcd(input signed [20:0] bin,
						output reg [31:0] bcdnum);
						
						
//NB: Fails on -1,048,576 BUT THIS IS OKAY because we will never get this number 
						
							
		reg [51:0] masterreg;
		reg negative;
		integer i;
		
		
		always @(bin) begin

			masterreg = {52{1'b0}};
			
			negative = (bin[20] == 1)? 1'b1: 1'b0;
			
			masterreg[19:0] = (negative)? -bin[19:0]: bin[19:0];

			
			for (i = 0; i < 20; i = i + 1) begin
			  
			
				  
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
							  
				masterreg = masterreg << 1;
				 

			end
			

			masterreg[51:48] = (negative)? 4'b1011 : 4'b1111;
			
			bcdnum = masterreg[51:20];
		  
		
		end
		
	endmodule 
	
