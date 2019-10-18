module numlength (input signed [20:0] binary_num,
	output reg [3:0]length);
	
//Performs essentially a lookup in base ten to determine base 10 number of digits
//Works on numbers up to 6 base 10 digits
//Minimum output of 1 (so zero has length one because it has a digit

reg signed [20:0] abs_num;

always @ (*) begin
	//Absolute value
	abs_num = (binary_num[20] == 1)? -binary_num: binary_num;
	//Default length 1
	length <= 3'd1;
	if (abs_num > 22'd9) length <= 3'd2;
	if (abs_num > 22'd99) length <= 3'd3;
	if (abs_num > 22'd999) length <= 3'd4;
	if (abs_num > 22'd9999) length <= 3'd5;
	if (abs_num > 22'd99999) length <= 3'd6;
end

endmodule