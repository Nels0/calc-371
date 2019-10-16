module numlength (input signed [20:0] binary_num,
	output reg [3:0]length);
	
reg signed [20:0] abs_num;

always @ (*) begin
	abs_num = (binary_num[20] == 1)? -binary_num: binary_num;
	length <= 3'd1;
	if (abs_num > 22'd9) length <= 3'd2;
	if (abs_num > 22'd99) length <= 3'd3;
	if (abs_num > 22'd999) length <= 3'd4;
	if (abs_num > 22'd9999) length <= 3'd5;
	if (abs_num > 22'd99999) length <= 3'd6;
end

endmodule