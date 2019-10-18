module debouncer #(parameter DBDIVISION = 10, parameter DBPERIOD = 10)(
		input clock, 
		input signal,
		output wire db_signal);


	clock_divider #(.DIVISION(DBDIVISION)) debouncerclockmodule (.clock(clock),
										.slow_clock(debounceclock));
	wire debounceclock;
										
	reg [20:0] debouncetimer = 0;
	parameter debouncecount = (1/50000*2^DBDIVISION*DBPERIOD); // Maths for conversion to MS

	//Count type debouncer determines if signal has been valid for a given period in MS
	always @ (posedge debounceclock) begin
		if (signal) begin //count while signal true
			debouncetimer = debouncetimer + 1'b1;
		end
		if (~signal) begin //reset count if signal is ever false
			debouncetimer = 0;
		end
	end
	
	assign db_signal = (debouncetimer > debouncecount)? 1'b1:1'b0;
		
endmodule 