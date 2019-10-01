module keypadtohex(
							input [3:0] col,
							input [3:0] row,
						output reg [3:0] hexcode);
						
//Module that takes {COL, ROW} arguments and returns hex value of key face for DE2 keypad

wire [7:0] keystroke = {col, row};

always @(keystroke)
begin
	case (keystroke)
	8'b11010111 : hexcode <= 0;  //0
	8'b11101110 : hexcode <= 1;  //1
	8'b11011110 : hexcode <= 2;  //2
	8'b10111110 : hexcode <= 3;  //3
	8'b11101101 : hexcode <= 4;  //4
	8'b11011101 : hexcode <= 5;  //5
	8'b10111101 : hexcode <= 6;  //6
	8'b11101011 : hexcode <= 7;  //7
	8'b11011011 : hexcode <= 8;  //8
	8'b10111011 : hexcode <= 9;  //9
	8'b11100111 : hexcode <= 10; //A
	8'b10110111 : hexcode <= 11; //B
	8'b01110111 : hexcode <= 12; //C
	8'b01111011 : hexcode <= 13; //D
	8'b01111101 : hexcode <= 14; //E
	8'b01111110 : hexcode <= 15; //F
	default: hexcode <= 0; //default 0 (maybe should just be F)
	endcase
end

endmodule 