module bcdreg (input clock,
			input [3:0] digit,
			input load,
			input bksp,
			input clear,
			output reg [31:0] bcdreg
);
		
	always @ (posedge clock) begin
			if (clear) begin
				//blank characters
				bcdreg = {8{4'b1111}};
			end else if (bksp) begin
			
				bcdreg = bcdreg >> 4;
				bcdreg[31:28] = 4'b1111;
				
			end else if (load) begin
			
				if(bcdreg[11:8] == 4'b1110) begin
					bcdreg[15:0] = bcdreg[15:0] << 4;
				end else begin
					bcdreg[11:0] = bcdreg[11:0] << 4;
				end
				
				bcdreg[3:0] = digit;

			end
			
	end
endmodule 