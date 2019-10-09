module bcdreg (input clock,
			input [3:0] digit,
			input keystrobe,
			input bksp,
			output reg [3:0] bcd1, bcd10, bcd100);
			
			
			
	always @ (posedge clock) begin
		if (keystrobe) begin
			if (bksp) begin
				bcd1 <= bcd10;
				bcd10 <= bcd100;
				bcd100 <= 0;
			end else begin
				bcd100 <= bcd10;
				bcd10 <= bcd1;
				bcd1 <= digit;
			end
		end
	end
endmodule 