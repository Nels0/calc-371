module posedgetrigger (
		input clock,
		input signal,
		output strobe);
		
	reg signal_last;
	
	always @(posedge clock) begin
			signal_last <= signal;
	end
	
	assign strobe = (signal && ~signal_last)? 1:0;
	
endmodule 