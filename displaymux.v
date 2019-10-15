module displaymux (input [1:0] display_select,
					input [31:0] reg_A, reg_B, reg_result,
					output reg [3:0] hex0_out, hex1_out, hex2_out, hex3_out, hex4_out, hex5_out, hex6_out, hex7_out);
					
					
	reg [31:0] selected_reg;
	
	always @(*) begin
		case (display_select)
			2'b00 : selected_reg = reg_A;
			2'b01 : selected_reg = reg_B;
			2'b10 : selected_reg = reg_result;
			default : selected_reg = reg_A;
		endcase
	

	 hex0_out = selected_reg[3:0];
	 hex1_out = selected_reg[7:4];
	 hex2_out = selected_reg[11:8];
	 hex3_out = selected_reg[15:12];
	 hex4_out = selected_reg[19:16];
	 hex5_out = selected_reg[23:20];
	 hex6_out = selected_reg[27:24];
	 hex7_out = selected_reg[31:28];
	
	end
	
	
endmodule 