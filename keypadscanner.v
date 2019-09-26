module keypadscanner(
			input CLOCK,
			input [3:0] ROW,
			output [3:0] keycode,
			output [3:0] COL,
			output keyPressed)
			
			//shift column to next column
			
			assign int n = 0;
	
	//connect decoder
	keypadtohex keyencoder(.keystroke({ROW, COL}), .hexcode(keycode));
	
	always @ (posedge CLOCK) 
	begin
		if (n == 3)
			assign n = 0;
		else
			n = n + 1;
		end
	end

	
	
	assign 
			