module clock_divider 
	#(parameter DIVISION = 19)(
	input wire clock,
	output wire slow_clock
);

	reg [DIVISION+1:0] clock_counter = DIVISION+1'd0;

	always @(posedge clock) begin

		clock_counter = clock_counter + 1;
		
	end

	assign slow_clock = clock_counter[DIVISION]; //19 for ~10ms 22 for debugging

endmodule	