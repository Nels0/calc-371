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
				output [2:0] LED,
				output reg bksp_A,
				output reg bksp_B,
				output reg load_A,
				output reg load_B,
				output reg load_op,
				output reg execute,
				output reg reset_out,
				output reg [1:0] display_select);
				
	parameter start = 0, op_A = 1, op_A_neg = 2, oprnd = 3, op_B = 4, op_B_neg = 5, result = 6;
	
	reg[2:0]state = start;
	
	assign LED[2:0] = state[2:0];
	
	always @(posedge clock) begin
		case(state)
			start: begin
				if (sub_in) state = op_A_neg;
				if (dig_in) state = op_A;
			end
			op_A: begin
				if(op_in) state = oprnd;
				if(reset_in) state = start;
			end
			op_A_neg: begin
				if (sub_in || bksp_in) state = start;
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
			end
			op_B_neg: begin
				if (sub_in || bksp_in) state = oprnd;
				if (dig_in) state = op_B;
				if(reset_in) state = start;
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
		reset_out <= 0;
			
		case(state)
			start: begin
				if (sub_in || dig_in) load_A <= 1;
				else 	reset_out <= 1;
				
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
				display_select = 2'b01;
			end
			op_A_neg: begin
				if(dig_in) load_A <= 1;
				if (sub_in || bksp_in) bksp_A <= 1'b1;
				display_select = 2'b00;
			end
			op_B_neg: begin
				if(dig_in) load_B <= 1;
				if (sub_in || bksp_in) bksp_B <= 1'b1;
				display_select = 2'b01;
			end
			oprnd: begin
				if (sub_in || dig_in) load_B <= 1'b1;
				display_select = 2'b01;
			end
			result: begin
				display_select = 2'b10;
			end
			default : begin
				display_select <= 2'b00;
			end
		endcase
	end

endmodule