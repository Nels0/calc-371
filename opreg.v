module opreg (input load,
			input [1:0] op_code,
			output reg [1:0] operator);

	always @ (load) begin
		operator = op_code;
	end
	
endmodule 