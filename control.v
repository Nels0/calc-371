module control (input dig_in
				input op_in,
				input bksp_in,
				input clock,
				output bksp,
				output load_A,
				output load_B);
				
	parameter op_A = 0, op_B = 1;
	
	reg[1:0]state = op_A;
	
	always @(state,dig_in,op_in) begin
		bksp <= 0;
		load_A <= 0;
		load_B <= 0;
		
		if(bksp_in && dig_in) bksp = 1;
		
		case(state)
			op_A: begin
				if(dig_in && ~op_in) load_A = 1;
				if(op_in && ~dig_in) state = op_B;
			end
			op_B: begin
				if(dig_in && ~op_in) load_B = 1;
				if(op_in && ~dig_in) state = op_A;
			end
		endcase
	end

endmodule