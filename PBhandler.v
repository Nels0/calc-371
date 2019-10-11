module PBhandler (
	input [3:0] KEY,
	input clock,
	output bksp_strobe,
	output MS_strobe,
	output MR_strobe,
	output MC_strobe);

negedgetrigger bksp (.clock(clock), .signal(KEY[0]), .strobe(bksp_strobe));
negedgetrigger MS (.clock(clock), .signal(KEY[1]), .strobe(MS_strobe));
negedgetrigger MR (.clock(clock), .signal(KEY[2]), .strobe(MR_strobe));
negedgetrigger MC (.clock(clock), .signal(KEY[3]), .strobe(MC_strobe));

endmodule