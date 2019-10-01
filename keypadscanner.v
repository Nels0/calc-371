module keypadscanner(
			input clock,
			input [3:0] row,
			output [3:0] keycode,
			output reg [3:0] col,
			output reg keypressed, //This is a strobe
			output [7:0] rawcode); 
			
			
		//Doesn't handle 2 key presses well

		wire clock10ms;
		reg [1:0] n = 0;
		wire [3:0] keywire;
		reg [9:0] debouncetimer = 0;


		clock_divider slowclock(.clock(clock),
										.slow_clock(clock10ms));
		
		
		//Cycle column
		always @ (posedge clock10ms) 
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

		end

		always @ (posedge clock) begin
			if (~^row) begin
				debouncetimer = debouncetimer + 1;
			end else begin
				debouncetimer = 0;
			end
			
			if (debouncetimer == 1000) begin
				keypressed = 1'b1;
			end
		end
		

		
		//connect decoder
		keypadtohex keyencoder(.col(col), .row(row), .hexcode(keycode));
	
		assign rawcode = {col, row};
	
	endmodule 