module numlength (input signed [21:0] binary_num,
	output reg [2:0]length);
	
reg signed [21:0] abs_num;

always @ (*) begin
	abs_num = (binary_num[21] == 1)? -binary_num: binary_num;
	length <= 3'd1;
	if (abs_num > 22'd9) length <= 3'd2;
	if (abs_num > 22'd99) length <= 3'd3;
	if (abs_num > 22'd999) length <= 3'd4;
	if (abs_num > 22'd9999) length <= 3'd5;
	if (abs_num > 22'd99999) length <= 3'd6;
end

endmodule