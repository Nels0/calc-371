module bcdtobin #(
	parameter BITS = 11, 
	parameter BCDDIG = 4 )(
	input [3:0] BCD0, BCD1, BCD2, BCD3,
	output reg signed [10:0] binout);
	

	reg signed [10:0]temp;
	
	always @ (*) begin
		
		temp = 11'd0;
		
		if(BCD0 < 4'b1001) begin //IsNumeric
			temp = temp + BCD0;
		
		end
		if(BCD1 < 4'b1001) begin //IsNumeric
			temp = temp + (11'd10*BCD1);
		
		end 
		if(BCD2 < 4'b1001) begin //IsNumeric
			temp = temp + (11'd100 * BCD2);
		
		end
	
		if(BCD3 == 4'b1011) begin //is negative
			temp = -temp;
		
		end
	
		binout = temp;
	
	end
	
	
endmodule 