module Truck (clk,update,rst,xLength,yLength,truck);	
input clk,rst,update;

input [9:0]xLength;
input [9:0]yLength;
wire [9:0] xLength;
wire [9:0] yLength;

output [14:0]truck;

//parks trucks into their parking slots, numbered left to right
assign truck[0] = slot0;
assign truck[1] = slot1;
assign truck[2] = slot2;
assign truck[3] = slot3;
assign truck[4] = slot4;
assign truck[5] = slot5;
assign truck[6] = slot6;
assign truck[7] = slot7;
assign truck[8] = slot8;
assign truck[9] = slot9;
assign truck[10] = slot10;
assign truck[11] = slot11;
assign truck[12] = slot12;
assign truck[13] = slot13;
assign truck[14] = slot14;


reg slot0;
reg slot1;
reg slot2;
reg slot3;
reg slot4;
reg slot5;
reg slot6;
reg slot7;
reg slot8;
reg slot9;
reg slot10;
reg slot11;
reg slot12;
reg slot13;
reg slot14;

reg [9:0] slot0X [0:31];
reg [9:0] slot1X [0:31];
reg [9:0] slot2X [0:31];
reg [9:0] slot3X [0:31];
reg [9:0] slot4X [0:31];
reg [9:0] slot5X [0:31];
reg [9:0] slot6X [0:31];
reg [9:0] slot7X [0:31];
reg [9:0] slot8X [0:31];
reg [9:0] slot9X [0:31];
reg [9:0] slot10X [0:31];
reg [9:0] slot11X [0:31];
reg [9:0] slot12X [0:31];
reg [9:0] slot13X [0:31];
reg [9:0] slot14X [0:31];

reg [8:0] slot0Y [0:31];
reg [8:0] slot1Y [0:31];
reg [8:0] slot2Y [0:31];
reg [8:0] slot3Y [0:31];
reg [8:0] slot4Y [0:31];
reg [8:0] slot5Y [0:31];
reg [8:0] slot6Y [0:31];
reg [8:0] slot7Y [0:31];
reg [8:0] slot8Y [0:31];
reg [8:0] slot9Y [0:31];
reg [8:0] slot10Y [0:31];
reg [8:0] slot11Y [0:31];
reg [8:0] slot12Y [0:31];
reg [8:0] slot13Y [0:31];
reg [8:0] slot14Y [0:31];


//size of trucks are 30 x 30
always@(posedge clk) 
	begin	 
		slot0 <= (xLength > slot0X[0] && xLength < (slot0X[0]+10'd30)) && (yLength > slot0Y[0] && yLength < (slot0Y[0]+10'd30));
		slot1 <= (xLength > slot1X[0] && xLength < (slot1X[0]+10'd30)) && (yLength > slot1Y[0] && yLength < (slot1Y[0]+10'd30));
		slot2 <= (xLength > slot2X[0] && xLength < (slot2X[0]+10'd30)) && (yLength > slot2Y[0] && yLength < (slot2Y[0]+10'd30));
		slot3 <= (xLength > slot3X[0] && xLength < (slot3X[0]+10'd30)) && (yLength > slot3Y[0] && yLength < (slot3Y[0]+10'd30));
		slot4 <= (xLength > slot4X[0] && xLength < (slot4X[0]+10'd30)) && (yLength > slot4Y[0] && yLength < (slot4Y[0]+10'd30));
		slot5 <= (xLength > slot5X[0] && xLength < (slot5X[0]+10'd30)) && (yLength > slot5Y[0] && yLength < (slot5Y[0]+10'd30));
		slot6 <= (xLength > slot6X[0] && xLength < (slot6X[0]+10'd30)) && (yLength > slot6Y[0] && yLength < (slot6Y[0]+10'd30));
		slot7 <= (xLength > slot7X[0] && xLength < (slot7X[0]+10'd30)) && (yLength > slot7Y[0] && yLength < (slot7Y[0]+10'd30));
		slot8 <= (xLength > slot8X[0] && xLength < (slot8X[0]+10'd30)) && (yLength > slot8Y[0] && yLength < (slot8Y[0]+10'd30));
		slot9 <= (xLength > slot9X[0] && xLength < (slot9X[0]+10'd30)) && (yLength > slot9Y[0] && yLength < (slot9Y[0]+10'd30));
		slot10 <= (xLength > slot10X[0] && xLength < (slot10X[0]+10'd30)) && (yLength > slot10Y[0] && yLength < (slot10Y[0]+10'd30));
		slot11 <= (xLength > slot11X[0] && xLength < (slot11X[0]+10'd30)) && (yLength > slot11Y[0] && yLength < (slot11Y[0]+10'd30));
		slot12 <= (xLength > slot12X[0] && xLength < (slot12X[0]+10'd30)) && (yLength > slot12Y[0] && yLength < (slot12Y[0]+10'd30));
		slot13 <= (xLength > slot13X[0] && xLength < (slot13X[0]+10'd30)) && (yLength > slot13Y[0] && yLength < (slot13Y[0]+10'd30));
		slot14 <= (xLength > slot14X[0] && xLength < (slot14X[0]+10'd30)) && (yLength > slot14Y[0] && yLength < (slot14Y[0]+10'd30));
	end

	always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of trucks			
				slot0X[0] <= 10'd60;
				slot0Y[0] <= 9'd0;
				slot1X[0] <= 10'd95;
				slot1Y[0] <= 9'd450;
				slot2X[0] <= 10'd130;
				slot2Y[0] <= 9'd450;
				slot3X[0] <= 10'd165;
				slot3Y[0] <= 9'd0;
				slot4X[0] <= 10'd200;
				slot4Y[0] <= 9'd0;
				slot5X[0] <= 10'd235;
				slot5Y[0] <= 9'd450;
				slot6X[0] <= 10'd270;
				slot6Y[0] <= 9'd450;
				slot7X[0] <= 10'd330;
				slot7Y[0] <= 9'd450;
				slot8X[0] <= 10'd365;
				slot8Y[0] <= 9'd0;
				slot9X[0] <= 10'd400;
				slot9Y[0] <= 9'd0;
				slot10X[0] <= 10'd435;
				slot10Y[0] <= 9'd450;
				slot11X[0] <= 10'd470;
				slot11Y[0] <= 9'd450;
				slot12X[0] <= 10'd505;
				slot12Y[0] <= 9'd0;
				slot13X[0] <= 10'd540;
				slot13Y[0] <= 9'd0;
				slot14X[0] <= 10'd575;
				slot14Y[0] <= 9'd450;
			end
		else
			begin
				slot0X[0] <= 10'd60;
				slot0Y[0] <= 9'd0;
				slot1X[0] <= 10'd95;
				slot1Y[0] <= 9'd450;
				slot2X[0] <= 10'd130;
				slot2Y[0] <= 9'd450;
				slot3X[0] <= 10'd165;
				slot3Y[0] <= 9'd0;
				slot4X[0] <= 10'd200;
				slot4Y[0] <= 9'd0;
				slot5X[0] <= 10'd235;
				slot5Y[0] <= 9'd450;
				slot6X[0] <= 10'd270;
				slot6Y[0] <= 9'd450;
				slot7X[0] <= 10'd330;
				slot7Y[0] <= 9'd450;
				slot8X[0] <= 10'd365;
				slot8Y[0] <= 9'd0;
				slot9X[0] <= 10'd400;
				slot9Y[0] <= 9'd0;
				slot10X[0] <= 10'd435;
				slot10Y[0] <= 9'd450;
				slot11X[0] <= 10'd470;
				slot11Y[0] <= 9'd450;
				slot12X[0] <= 10'd505;
				slot12Y[0] <= 9'd0;
				slot13X[0] <= 10'd540;
				slot13Y[0] <= 9'd0;
				slot14X[0] <= 10'd575;
				slot14Y[0] <= 9'd450;
			end
	end	
		
	


endmodule 