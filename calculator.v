module calculator (input [3:0] ROW,
							input CLOCK_50,
							input [3:0] KEY,
							input [17:0] SW,
							output [3:0] COL,
							output [0:6] HEX0,
							output [0:6] HEX1,
							output [0:6] HEX2,
							output [0:6] HEX3,
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
		wire load_A, load_B;
		wire bksp_A, bksp_B;
		wire switchregister;
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
		
		//KEY PAD INPUT HANDLER
		
		wire dig_strobe, reset_strobe, ex_strobe, op_strobe, sub_strobe;
		wire [3:0] dig_code;
		wire [1:0] op_code;
		
		//////////////////////////////////////////////////////////////////////////////////////////////////DEBUGGING
		//////////////////////////////////////////////////////////////////////////////////////////////////DEBUGGING
		
		inputhandler keypad (
			.keystrobe(keystrobe),
			.keycode(keycode),
			.dig_strobe(dig_strobe),
			.reset_strobe(reset_strobe),
			.ex_strobe(ex_strobe),
			.op_strobe(op_strobe),
			.sub_strobe(sub_strobe),
			.dig_code(dig_code),
			.op_code(op_code)
		);
		
		//PUSH BUTTON INPUT HANDLER
		
		wire bksp_strobe, MS_strobe, MR_strobe, MC_strobe;
		
		PBhandler PB (
			.KEY(KEY),
			.clock(clockmain),
			.bksp_strobe(bksp_strobe),
			.MS_strobe(MS_strobe),
			.MR_strobe(MR_strobe),
			.MC_strobe(MC_strobe)
		);
		
		
		//CONTROL UNIT
		
		wire [1:0] display_select;
		wire load_op, reset_state, execute;
		
		control FSM (
			.dig_in(dig_strobe),
			.reset_in(reset_strobe),
			.ex_in(ex_strobe),
			.op_in(op_strobe),
			.bksp_in(bksp_strobe),
			.MS_in(MS_strobe),
			.MR_in(MR_strobe),
			.MC_in(MC_strobe),
			.sub_in(sub_strobe),
			.clock(clockmain),
			.LED(LEDG[2:0]),
			.bksp_A(bksp_A),
			.bksp_B(bksp_B),
			.load_A(load_A),
			.load_B(load_B),
			.load_op(load_op),
			.reset_out(reset_state),
			.execute(execute), //this is signal for ALU to execute the operation
			.display_select(display_select)
		);
		
		//OPERAND REGISTERS
		
		bcdreg operand_A (.clock(clockmain),
							.digit(dig_code),
							.load(load_A),
							.bksp(bksp_A),
							.clear(reset_state),
							.bcd1(hex0char_A),
							.bcd10(hex1char_A),
							.bcd100(hex2char_A),
							.bcdneg(bcdneg_A)
							);
							
		bcdreg operand_B (.clock(clockmain),
							.digit(dig_code),
							.load(load_B),
							.bksp(bksp_B),
							.clear(reset_state),
							.bcd1(hex0char_B),
							.bcd10(hex1char_B),
							.bcd100(hex2char_B),
							.bcdneg(bcdneg_B)
							);
							
		//~~~~~~~~~~~~
		
		//OPERATOR REGISTER
		
		wire [1:0] operator;
		
		opreg op (.load(load_op),
			.op_code(op_code),
			.operator(operator)
		);

		//DISPLAY
		
		wire [3:0] hex0char_A, hex1char_A, hex2char_A, bcdneg_A;
		wire [3:0] hex0char_B, hex1char_B, hex2char_B, bcdneg_B;
		wire [3:0] hex0char_out, hex1char_out, hex2char_out, hexnegchar_out;
		
		displaymux displayMUX (.display_select(display_select),
								.hex0char_A(hex0char_A), 
								.hex1char_A(hex1char_A), 
								.hex2char_A(hex2char_A),
								.bcdneg_A(bcdneg_A),
								.hex0char_B(hex0char_B), 
								.hex1char_B(hex1char_B), 
								.hex2char_B(hex2char_B),
								.bcdneg_B(bcdneg_B),
								.hex0char_out(hex0char_out),
								.hex1char_out(hex1char_out), 
								.hex2char_out(hex2char_out),
								.hexnegchar_out(hexnegchar_out)
								);
		
		char_7seg H0 (.S(hex0char_out), .Display(HEX0));
		char_7seg H1 (.S(hex1char_out), .Display(HEX1));
		char_7seg H2 (.S(hex2char_out), .Display(HEX2));
		char_7seg H4 (.S(hexnegchar_out), .Display(HEX3));
		//~~~~~~~~~~~~

endmodule 