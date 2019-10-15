module memreg (input clock,
			input [31:0] mem_input,
			input load,
			input clear,
			output reg [31:0] memreg
);
		
	always @ (posedge clock) begin
			if (clear) begin
			
				//we need to decide on default case, 0?
				bcdreg = {7{4'b1111},4b'0000};
				
			end else if (load) begin
			
				bcdreg = mem;
			
			end 
			
	end
endmodule 