module bcdreg (input clock,
			input [3:0] digit,
			input load,
			input bksp,
			input clear,
			output reg [3:0] bcd1, bcd10, bcd100
);
			
	always @ (posedge clock) begin
			if (clear) begin
				//blank character
				bcd1 <= 4'b1010; 
				bcd10 <= 4'b1010;
				bcd100 <= 4'b1010;
			end else if (bksp) begin
				bcd1 <= bcd10;
				bcd10 <= bcd100;
				bcd100 <= 4'b1010;
			end else if (load) begin
				bcd100 <= bcd10;
				bcd10 <= bcd1;
				bcd1 <= digit;
			end
	end
endmodule 