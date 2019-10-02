module control (input dig_in
				input op_in,
				input bksp_in,
				input clock,
				output bksp,
				output load_A,
				output load_B);
				
	parameter op_A = 0, op_B = 1, A_temp = 2, B_temp = 3;
	
	reg[1:0]state = op_A;
	
	always @(posedge clock) begin
		case(state)
			op_A: begin
				if(op_in) state = op_B;
				if(dig_in) state = A_temp;
			end
			op_B: begin
				if(op_in) state = op_A;
				if(dig_in) state = B_temp;
			end
			A_temp: begin
				state = op_A;
			end
			B_temp: begin
				state = op_B;
			end
		endcase
	end
	
	always @(state,dig_in,op_in,bksp_in) begin
		bksp <= 0;
		load_A <= 0;
		load_B <= 0;
		
		if(bksp_in) bksp = 1;
		
		case(state)
			op_A: begin
				if(dig_in) load_A = 1;
			end
			op_B: begin
				if(dig_in) load_B = 1;
			end
		endcase
	end

endmodule