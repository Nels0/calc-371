
`default_nettype none

module calculator (input [3:0] ROW,
							input CLOCK_50,
							input [3:0] KEY,
							output [3:0] COL,
							output [0:6] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7
							);
							
		
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
		keypadscanner KeyScan0(.clock(CLOCK_50),
										.row(ROW),
										.col(COL),
										.keycode(keycode),
										.keypressed(keypressed));
										
		debouncer #(.DBDIVISION(10), //divides clock by 2^DBDIVISOn
				.DBPERIOD(5)) keydebouncer ( //debounce period in MS
				.clock(CLOCK_50),
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
		wire load_op, reset_state, execute, load_A_mem, load_B_mem, load_mem, clear_mem;
		
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
			.bksp_A(bksp_A),
			.bksp_B(bksp_B),
			.load_A(load_A),
			.load_B(load_B),
			.load_mem(load_mem),
			.clear_mem(clear_mem),
			.load_A_mem(load_A_mem),
			.load_B_mem(load_B_mem),
			.load_op(load_op),
			.reset_out(reset_state),
			.execute(execute), //this is signal for ALU to execute the operation
			.display_select(display_select)
		);
		
		//OPERAND REGISTERS
		
		wire[31:0] reg_A, reg_B;
		
		bcdreg operand_A (.clock(clockmain),
							.digit(dig_code),
							.load(load_A),
							.bksp(bksp_A),
							.clear(reset_state),
							.bcdreg(reg_A),
							.mem(memory_stored),
							.load_mem(load_A_mem)
							);
							
		bcdreg operand_B (.clock(clockmain),
							.digit(dig_code),
							.load(load_B),
							.bksp(bksp_B),
							.clear(reset_state),
							.bcdreg(reg_B),
							.mem(memory_stored),
							.load_mem(load_B_mem)
							);
							
		//~~~~~~~~~~~~
		
		//OPERATOR REGISTER
		
		wire [1:0] operator;
		
		opreg op (.clock(clockmain),
			.load(load_op),
			.op_code(op_code),
			.operator(operator)
		);
		//~~~~~~~~~~~~
		
		//ALU
		wire [10:0] reg_A_binary, reg_B_binary;
		wire [31:0] reg_result, reg_memresult;
		wire [20:0] result_bin, remainder_bin; 
		wire remain;
			
		bcdtobin reg_A_tobinary (.BCD(reg_A), .binout(reg_A_binary));
		bcdtobin reg_B_tobinary (.BCD(reg_B), .binout(reg_B_binary));
		
		alu alu_1 (.regA(reg_A_binary), 
					.regB(reg_B_binary),
					.opcode(operator),
					.clock(clockmain),
					.computestrobe(execute),
					.result(result_bin),
					.remain(remain),
					.remainder(remainder_bin));
					
		
		
		resultformatter resultformatter_1 (.clock(clockmain),
														.remain(remain),
														.ALUresult(result_bin),
														.ALUremainder(remainder_bin),
														.formattedresult(reg_result),
														.result_formem(reg_memresult));
		
		//~~~~~~~~~~
		
		//MEMORY
		
		wire [31:0] memory_selected, memory_stored;
		
		memmux memory_select (.display_select(display_select),
									.A(reg_A),
									.B(reg_B),
									.result(reg_memresult),
									.mem_input(memory_selected));
		
		memreg memory_register (.clock(clockmain),
										.mem_input(memory_selected),
										.load(load_mem),
										.clear(clear_mem),
										.memreg(memory_stored));
			
		//~~~~~~~~~~~
		
		
		//DISPLAY
		
		wire [3:0] hex0char_A, hex1char_A, hex2char_A, bcdneg_A;
		wire [3:0] hex0char_B, hex1char_B, hex2char_B, bcdneg_B;
		wire [3:0] hex0_out, hex1_out, hex2_out, hex3_out, hex4_out, hex5_out, hex6_out, hex7_out;
		
		displaymux displayMUX (.display_select(display_select),
								.reg_A(reg_A),
								.reg_B(reg_B),
								.reg_result(reg_result),
								.hex0_out(hex0_out), 
								.hex1_out(hex1_out), 
								.hex2_out(hex2_out), 
								.hex3_out(hex3_out), 
								.hex4_out(hex4_out), 
								.hex5_out(hex5_out), 
								.hex6_out(hex6_out), 
								.hex7_out(hex7_out)
								);
		
		char_7seg H0 (.S(hex0_out), .Display(HEX0));
		char_7seg H1 (.S(hex1_out), .Display(HEX1));
		char_7seg H2 (.S(hex2_out), .Display(HEX2));
		char_7seg H3 (.S(hex3_out), .Display(HEX3));
		char_7seg H4 (.S(hex4_out), .Display(HEX4));
		char_7seg H5 (.S(hex5_out), .Display(HEX5));
		char_7seg H6 (.S(hex6_out), .Display(HEX6));
		char_7seg H7 (.S(hex7_out), .Display(HEX7));
		//~~~~~~~~~~~~

endmodule 