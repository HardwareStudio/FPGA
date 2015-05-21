module RemoteControlCar(CLK, BUTTUM, GROUND, VOL);
input CLK;
input BUTTUM;
output GROUND;
output VOL;

wire BUTTUM_D;
reg GROUND;
reg VOL;

Debounce D1(.CLK(CLK), .INPUT(BUTTUM), .OUTPUT(BUTTUM_D));

always @(BUTTUM_D) begin
	if(BUTTUM_D) begin
		GROUND = 1'b1;
		VOL = 1'b1;
	end
end

endmodule