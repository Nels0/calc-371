module keypadscanner(
			input clock,
			input [3:0] row,
			output [3:0] keycode,
			output reg [3:0] col,
			output keypressed,
			output [7:0] rawcode); //TODO: decide if this is a strobe
			

			
		reg [1:0] n = 0;
		wire [3:0] keywire;


		
		//Cycle column
		always @ (posedge clock) 
		begin
			if (~^row) begin //if any key detected as pressed stop iterating over cols
				if (n < 3) begin //iterate over cols
					n = n + 1;
				end else begin
					n = 0;
				end
			end
			
			//Decoder to set nth bit to 0
			col[3:0] = {4{1'b1}};
			col[n] = 0;
			
			

			//keypressed = ~&row;

		end

		
		//TODO: Debounce inside here WITH TIMER METHOD

		
		//connect decoder
		keypadtohex keyencoder(.col(col), .row(row), .hexcode(keycode));
	
		assign rawcode = {col, row};
	
	endmodule 