module calculator (input [3:0] ROW,
							input CLOCK_50,
							input [3:0] KEY,
							output [3:0] COL,
							output [0:6] HEX0,
							output [0:6] HEX1,
							output [0:6] HEX2,
							output [7:0] LEDG,
							output [17:0] LEDR);
		
		//CLOCK
		wire clockmain;		
		//only use for debugging
		clock_divider #(.DIVISION(0)) mainclock (.clock(CLOCK_50), .slow_clock(clockmain));
		//~~~~~~~~~~~~~~~~
		
		//KEYPAD INPUT
		wire [3:0] keycode;
		wire keypressed, db_keypressed, keystrobe;
		keypadscanner KeyScan0(.clock(clockmain),
										.row(ROW),
										.col(COL),
										.keycode(keycode),
										.keypressed(keypressed));
										
		debouncer #(.DBDIVISION(10), //divides clock by 2^DBDIVISOn
				.DBPERIOD(5)) keydebouncer ( //debounce period in MS
				.clock(clockmain),
				.signal(keypressed),
				.db_signal(db_keypressed)); //debounced keypress signal
		
		posedgetrigger keypressedge (.clock(clockmain), .signal(db_keypressed), .strobe(keystrobe));
		//~~~~~~~~
		
		//PUSHBUTTON INPUT
		wire bksp_in;
		negedgetrigger bksppressedge (.clock(clockmain), .signal(KEY[0]), .strobe(bksp_in));
		
		
		//DISPLAY MEM
		bcdreg bcdreg0 (.clock(clockmain),
							.digit(keycode),
							.keystrobe(keystrobe),
							.bcd1(hex0char),
							.bcd10(hex1char),
							.bcd100(hex2char));
		//~~~~~~~~~~~~
		

		//DISPLAY
		wire [3:0] hex0char, hex1char, hex2char;
		
		char_7seg H0 (.S(hex0char), .Display(HEX0));
		char_7seg H1 (.S(hex1char), .Display(HEX1));
		char_7seg H2 (.S(hex2char), .Display(HEX2));
		//~~~~~~~~~~~~

endmodule 