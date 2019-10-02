module edgetrigger (
		input clock,
		input signal,
		output reg strobe);
		
	reg signal_last;
	
	always @(posedge clock) begin
			signal_last <= signal;
			
			strobe = (signal && ~signal_last)? 1:0;
	
	end
	
	
endmodule 