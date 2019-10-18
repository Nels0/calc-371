module posedgetrigger (
		input clock,
		input signal,
		output strobe);

	//Compares value with value last clock tick to detect rising edge
	//Produces a 1 tick strobe

	reg signal_last;
	
	always @(posedge clock) begin
			signal_last <= signal;
	end
	
	assign strobe = (signal && ~signal_last)? 1'b1:1'b0;
	
endmodule 