module control (input dig_in,
				input reset_in,
				input ex_in,
				input op_in,
				input bksp_in,
				input MS_in,
				input MR_in,
				input MC_in,
				input sub_in,
				input clock,
				output reg bksp_A,
				output reg bksp_B,
				output reg load_A,
				output reg load_B,
				output reg load_op,
				output reg execute,
				output reg [1:0] display_select);
				
	parameter op_A = 0, op_B = 1, oprnd = 2, result = 3, start = 4, op_A_neg = 5, op_B_neg = 6;
	
	reg[2:0]state = start;
	
	always @(posedge clock) begin
		case(state)
			start: begin
				if (sub_in) state = op_A_neg;
				if (dig_in) state = op_A;
			end
			op_A: begin
				if(op_in) state = oprnd;
			end
			op_A_neg: begin
				if (sub_in) state = start;
				if (dig_in) state = op_A;
				if(reset_in) state = start;
			end
			oprnd: begin
				if (sub_in) state = op_B_neg;
				if(dig_in) state = op_B;
				if(reset_in) state = start;
			end
			op_B: begin
				if(ex_in) state = result;
				if(reset_in) state = start;
				if(reset_in) state = start;
			end
			op_B_neg: begin
				if (sub_in) state = oprnd;
				if (dig_in) state = op_B;
			end
			result: begin
				if(reset_in) state = start;
			end
		endcase
	end
	
	always @(*) begin
		bksp_A <= 0;
		bksp_B <= 0;
		load_A <= 0;
		load_B <= 0;
		load_op <= 0;
		execute <= 0;
			
		case(state)
			start: begin
				if (sub_in || dig_in) load_A <= 1'b1;
				if (dig_in) load_A <= 1'b1;
				display_select <= 2'b00;
			end
			op_A: begin
				if(dig_in) load_A <= 1;
				if(bksp_in) bksp_A <= 1;
				if (op_in) load_op <= 1;
				display_select = 2'b00;
			end
			op_B: begin
				if(dig_in) load_B <= 1;
				if(bksp_in) bksp_B <= 1;
				if(ex_in) execute <= 1;
				if(dig_in) load_B <= 1;
				display_select = 2'b01;
			end
			op_A_neg: begin
				if (sub_in) bksp_A <= 1'b1;
				display_select = 2'b00;
			end
			op_B_neg: begin
				if (sub_in) bksp_B <= 1'b1;
				display_select = 2'b00;
			end
			oprnd: begin
				if (sub_in || dig_in) load_B <= 1'b1;
				display_select = 2'b00;
			end
			result: begin
				display_select = 2'b10;
			end
		endcase
	end

endmodule