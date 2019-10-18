module bcdtobin (
	input [31:0] BCD,
	output reg signed [10:0] binout);
	

	reg signed [10:0] temp;
	
	always @ (*) begin
		
		//Multiplies each digit by their decimal postion (10^n)
		//and adds them
		//Inverts sign if there's a negative char (should be only one)

		temp = 11'd0; //initialise to zero
		
		if(BCD[3:0] < 4'b1010) begin //1's dig IsNumeric
			temp = temp + BCD[3:0];		
		end else if (BCD[3:0] == 4'b1110) begin //isNeg
			temp = -temp; //invert number
		end
		
		if(BCD[7:4] < 4'b1010) begin //IsNumeric
			temp = temp + (11'd10*BCD[7:4]);		
		end else if (BCD[7:4] == 4'b1110) begin //isNeg
			temp = -temp;
		end
		
		
		if(BCD[11:8] < 4'b1010) begin //IsNumeric
			temp = temp + (11'd100 * BCD[11:8]);
		end else if (BCD[11:8] == 4'b1110) begin //isNeg
			temp = -temp;
		end
		
	
		if(BCD[15:12] == 4'b1110) begin //is negative
			temp = -temp;
		
		end
	
		binout = temp;
	
	end
	
	
endmodule 