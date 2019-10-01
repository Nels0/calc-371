module calculator (input [3:0] ROW,
							input CLOCK_50,
							output [3:0] COL,
							output [0:6] HEX0,
							output [7:0] LEDG,
							output [17:0] LEDR);
		
		wire [3:0] keycode;
		wire keypressed;
		//wire clock10ms;
		

		
		keypadscanner KeyScan0(.clock(CLOCK_50),
										.row(ROW),
										.col(COL),
										.keycode(keycode),
										.keypressed(keypressed),
										.rawcode(LEDR[7:0]));
										
		assign LEDG [3:0] = keycode;
		
	//todo: latch key to debug
		
		char_7seg H0 (.S(keycode), .Display(HEX0));

endmodule 