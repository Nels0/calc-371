module NBitLatch #(parameter BITS=8)(
			input [BITS-1:0] d,
			input clock,
			input enable,
			output reg[BITS-1:0] q);
			
			reg [BITS-1:0]q_int;
			
	always @ (posedge clock) begin
		q_int = d;
		if (enable) begin
			q = q_int;
		end else begin
			q = 0;
		end
	end 
	
	endmodule 