module calculator (input [3:0]ROW,
							input CLOCK_50,
							output [3:0] COL,
							output [0:6] HEX0);
		
		wire [3:0] keycode;
		wire keypressed;
		wire clock10ms;
		
		clock_divider slowclock(.clock(CLOCK_50),
										.slow_clock(clock10ms));
		
		keypadscanner KeyScan0(.clock(clock10ms),
										.row(ROW),
										.col(COL),
										.keycode(keycode),
										.keypressed(keypressed));
										
		
		
	//todo: latch key to debug
		
		char_7seg H0 (.S(keycode), .Display(HEX0));

endmodule 