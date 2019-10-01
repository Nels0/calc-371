module clock_divider(
	input wire clock,
	output wire slow_clock
);

reg [31:0] clock_counter = 32'd0;

always @(posedge clock) begin

	clock_counter = clock_counter + 1;
	
end

assign slow_clock = clock_counter[19]; //19 for ~10ms 22 for debugging

endmodule	