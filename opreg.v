module opreg (input load,
			input [1:0] op_code,
			input clock,
			output reg [1:0] operator);

	always @ (posedge clock) begin
		if(load)	operator = op_code;
	end
	
endmodule 