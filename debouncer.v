module debouncer #(parameter DBDIVISION = 10, parameter DBPERIOD = 10)(
		input clock, 
		input signal,
		output wire db_signal);


	clock_divider #(.DIVISION(DBDIVISION)) debouncerclockmodule (.clock(clock),
										.slow_clock(debounceclock));
	wire debounceclock;
										
	reg [20:0] debouncetimer = 0;
	parameter debouncecount = (1/50000*2^DBDIVISION*DBPERIOD);

	always @ (posedge debounceclock) begin
		if (signal) begin
			debouncetimer = debouncetimer + 1;
		end
		if (~signal) begin
			debouncetimer = 0;
		end
	end
	
	assign db_signal = (debouncetimer > debouncecount)? 1:0;
		
endmodule 