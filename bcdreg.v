module bcdreg (input clock,
			input [3:0] digit,
			input load,
			input bksp,
			input clear,
			output reg [3:0] bcd1, bcd10, bcd100, bcdneg
);
			
	always @ (posedge clock) begin
			if (clear) begin
				//blank character
				bcd1 <= 4'b1111; 
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
				if (bcd100 == 4'b1110) begin
					bcdneg = bcd100;
				end
				bcd100 <= bcd10;
				bcd10 <= bcd1;
				bcd1 <= digit;
			end
			
	end
endmodule 