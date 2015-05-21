module Debounce(CLK, INPUT, OUTPUT);
input CLK;
input INPUT;
output OUTPUT;

reg [3:0] DEBOUNCE_COUNT;

always @(posedge CLK) begin
	if (INPUT)
		DEBOUNCE_COUNT <= 4'h0; 
	else if (DEBOUNCE_COUNT <= 4'hE)
		DEBOUNCE_COUNT <= DEBOUNCE_COUNT + 1;
end
assign OUTPUT = (DEBOUNCE_COUNT == 4'hD) ? 1'b1 : 1'b0;
endmodule