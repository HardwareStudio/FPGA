module final(LED, INPUT, LED_2);
	input [2:0] INPUT;
	output [2:0] LED_2;
	output [2:0] LED;
	
	assign LED = INPUT;
	assign LED_2 = INPUT;
endmodule
