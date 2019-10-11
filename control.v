module control (input dig_in,
				input reset_in,
				input ex_in,
				input op_in,
				input bksp_in,
				input MS_in,
				input MR_in,
				input MC_in,
				input clock,
				output reg bksp_A,
				output reg bksp_B,
				output reg load_A,
				output reg load_B,
				output reg load_op,
				output reg execute,
				output reg [1:0] display_select);
				
	parameter op_A = 0, op_B = 1, oprnd = 2, result = 3;
	
	reg[1:0]state = op_A;
	
	always @(posedge clock) begin
		case(state)
			op_A: begin
				if(op_in) state = oprnd;
			end
			op_B: begin
				if(ex_in) state = result;
				if(reset_in) state = op_A;
			end
			oprnd: begin
				if(dig_in) state = op_B;
				if(reset_in) state = op_A;
			end
			oprnd: begin
				if(reset_in) state = op_A;
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
			op_A: begin
				if(dig_in) load_A <= 1;
				if(bksp_in) bksp_A <= 1;
				if (op_in) load_op <= 1;
				display_select = 0;
			end
			op_B: begin
				if(dig_in) load_B <= 1;
				if(bksp_in) bksp_B <= 1;
				if(ex_in) execute <= 1;
				display_select = 1;
			end
			oprnd: begin
				display_select = 0;
			end
			result: begin
				display_select = 2;
			end
		endcase
	end

endmodule