module calculator (input [3:0] ROW,
							input CLOCK_50,
							output [3:0] COL,
							output [0:6] HEX0,
							output [0:6] HEX1,
							output [0:6] HEX2,
							output [7:0] LEDG,
							output [17:0] LEDR);
		
		wire [3:0] keycode;
		wire keystrobe;
		wire clockmain;
		
		clock_divider #(.DIVISION(10)) mainclock (.clock(CLOCK_50), .slow_clock(clockmain));
		
		keypadscanner KeyScan0(.clock(clockmain),
										.row(ROW),
										.col(COL),
										.keycode(keycode),
										.keypressed(keystrobe),
										.rawcode(LEDR[7:0]));
										
		assign LEDG [3:0] = keycode;
		assign LEDR [8] = keystrobe;
		
	//todo: latch key to debug
		
		bcdreg bcdreg0 (.clock(clockmain),
							.digit(keycode),
							.keystrobe(keystrobe),
							.bcd1(hex0char),
							.bcd10(hex1char),
							.bcd100(hex2char));
							
		wire [3:0] hex0char, hex1char, hex2char;
		
		char_7seg H0 (.S(hex0char), .Display(HEX0));
		char_7seg H1 (.S(hex1char), .Display(HEX1));
		char_7seg H2 (.S(hex2char), .Display(HEX2));

endmodule 