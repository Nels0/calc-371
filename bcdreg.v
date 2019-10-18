module bcdreg (input clock,
			input [3:0] digit,
			input [31:0] mem,
			input load,
			input bksp,
			input clear,
			input load_mem,
			output reg [31:0] bcdreg
);
		
	always @ (posedge clock) begin
			if (clear) begin //Reset reg to blank
				//blank characters
				//bcdreg = {{7{4'b1111}}, 4'b0000};
				bcdreg = {8{4'b1111}};
			end else if (load_mem) begin
				//Parallel load from MR
				bcdreg = mem;
			
			end else if (bksp) begin
				//Rightshift BCD chars, fill in with blank
				bcdreg = bcdreg >> 4;
				bcdreg[31:28] = 4'b1111;
				
			end else if (load) begin
				//Leftshift chars
				//If there's a negative sign in 3rd pos,
				// shift it into 4th pos
				if(bcdreg[11:8] == 4'b1110) begin 
					bcdreg[15:0] = bcdreg[15:0] << 4;
				end else begin
				//Else only shift right 3 chars (rest are blank or negative)
					bcdreg[11:0] = bcdreg[11:0] << 4;
				end
				
				//Append digit to load
				bcdreg[3:0] = digit;

			end
			
	end
endmodule 