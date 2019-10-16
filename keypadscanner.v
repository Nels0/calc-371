module keypadscanner(
			input clock,
			input [3:0] row,
			output [3:0] keycode,
			output reg [3:0] col,
			output reg keypressed
			); 
			
			
		//Doesn't handle 2 key presses well

		wire keyclock;
		reg [1:0] n = 0;
		wire [3:0] keywire;



		clock_divider #(.DIVISION(19)) keypadclock (.clock(clock),
										.slow_clock(keyclock));
		
		
		
		
		
		//Cycle column
		always @ (posedge keyclock) 
		begin
			if (&row) begin //if any key detected as pressed stop iterating over cols
				if (n < 3) begin //iterate over cols
					n = n + 1'b1;
				end else begin
					n = 0;
				end
			end
			
			keypressed = (~&row)? 1'b1:1'b0;
			
			//Decoder to set nth bit to 0
			col[3:0] = {4{1'b1}};
			col[n] = 0;

		end


		
		//connect decoder
		keypadtohex keyencoder(.col(col), .row(row), .hexcode(keycode));

	
	endmodule 