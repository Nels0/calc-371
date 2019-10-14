module bcdreg (input clock,
			input [3:0] digit,
			input load,
			input bksp,
			input clear,
			output reg [3:0] bcd1, bcd10, bcd100, bcdneg,
			output reg empty
);
			
	always @ (posedge clock) begin
			
			empty = (bcd1 > 4'b1001 && bcd10 > 4'b1001 && bcd100 > 4'b1001)? 1'b1:1'b0;
	
			if (clear) begin
				//blank character
				bcd1 <= 4'b0000; 
				bcd10 <= 4'b1111;
				bcd100 <= 4'b1111;				
				bcdneg <= 4'b1111;
			end else if (bksp) begin
				bcd1 <= bcd10;
				bcd10 <= bcd100;
				if (bcdneg == 4'b1011) begin
					bcd100 = bcdneg;
					bcdneg = 4'b1111;
				end else begin
					bcd100 <= 4'b1111;
				end
			end else if (load) begin
				if (bcd100 == 4'b1011) begin
					bcdneg = bcd100;
				end
				bcd100 <= bcd10;
				bcd10 <= bcd1;
				bcd1 <= digit;
			end
			
			
	end
endmodule 