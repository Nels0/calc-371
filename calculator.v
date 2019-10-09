module calculator (input [3:0] ROW,
							input CLOCK_50,
							input [3:0] KEY,
							input [17:0] SW,
							output [3:0] COL,
							output [0:6] HEX0,
							output [0:6] HEX1,
							output [0:6] HEX2,
							output [7:0] LEDG,
							output [17:0] LEDR);
							
		assign LEDR[0] = SW[0];
		
		//CLOCK
		wire clockmain;		
		//only use for debugging
		clock_divider #(.DIVISION(0)) mainclock (.clock(CLOCK_50), .slow_clock(clockmain));
		//~~~~~~~~~~~~~~~~
		
		//KEYPAD INPUT
		wire [3:0] keycode;
		wire keypressed, db_keypressed, keystrobe;
		wire load_A, load_B;
		wire bksp_A, bksp_B;
		wire switchregister;
		wire display_select;
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
		wire bksp_strobe;
		negedgetrigger bksppressedge (.clock(clockmain), .signal(KEY[0]), .strobe(bksp_strobe));
		
		
		
		//CONTROL UNIT
		control FSM (.dig_in(keystrobe),
				.op_in(0),
				.bksp_in(bksp_strobe),
				.clock(clockmain),
				.bksp_A(bksp_A),
				.bksp_B(bksp_B),
				.load_A(load_A),
				.load_B(load_B),
				.display_select(display_select));
		
		//DISPLAY MEM
		bcdreg bcdreg_A (.clock(clockmain),
							.digit(keycode),
							.keystrobe(load_A),
							.bksp(bksp_A),
							.bcd1(hex0char_A),
							.bcd10(hex1char_A),
							.bcd100(hex2char_A));
							
		bcdreg bcdreg_B (.clock(clockmain),
							.digit(keycode),
							.keystrobe(load_B),
							.bksp(bksp_B),
							.bcd1(hex0char_B),
							.bcd10(hex1char_B),
							.bcd100(hex2char_B));
		//~~~~~~~~~~~~
		

		//DISPLAY
		wire [3:0] hex0char_A, hex1char_A, hex2char_A;
		wire [3:0] hex0char_B, hex1char_B, hex2char_B;
		wire [3:0] hex0char_out, hex1char_out, hex2char_out;
		
		displaymux displayMUX (.display_select(SW[0]),
								.hex0char_A(hex0char_A), 
								.hex1char_A(hex1char_A), 
								.hex2char_A(hex2char_A),
								.hex0char_B(0), 
								.hex1char_B(0), 
								.hex2char_B(0),
								.hex0char_out(hex0char_out),
								.hex1char_out(hex1char_out), 
								.hex2char_out(hex2char_out));
		
		char_7seg H0 (.S(hex0char_out), .Display(HEX0));
		char_7seg H1 (.S(hex1char_out), .Display(HEX1));
		char_7seg H2 (.S(hex2char_out), .Display(HEX2));
		//~~~~~~~~~~~~

endmodule 