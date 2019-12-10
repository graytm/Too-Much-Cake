module Apple(clk,update,rst,xLength,yLength,apple);

input clk, update, rst;
input [9:0]xLength;
input [9:0]yLength;
wire [9:0] xLength;
wire [9:0] yLength;

output [4:0]apple;

//creates "baskets" for the apples to be stored
assign apple[0] = basket0;
assign apple[1] = basket1;
assign apple[2] = basket2;
assign apple[3] = basket3;
assign apple[4] = basket4;

reg basket0;
reg basket1;
reg basket2;
reg basket3;
reg basket4;

reg [9:0] basket0X [0:31];
reg [9:0] basket1X [0:31];
reg [9:0] basket2X [0:31];
reg [9:0] basket3X [0:31];
reg [9:0] basket4X [0:31];

reg [8:0] basket0Y [0:31];
reg [8:0] basket1Y [0:31];
reg [8:0] basket2Y [0:31];
reg [8:0] basket3Y [0:31];
reg [8:0] basket4Y [0:31];


//creates a basket size of 14 x 14 to hold apples
always@(posedge clk) 
	begin	 
		basket0 <= (xLength > basket0X[0] && xLength < (basket0X[0]+10'd14)) && (yLength > basket0Y[0] && yLength < (basket0Y[0]+10'd14));
		basket1 <= (xLength > basket1X[0] && xLength < (basket1X[0]+10'd14)) && (yLength > basket1Y[0] && yLength < (basket1Y[0]+10'd14));
		basket2 <= (xLength > basket2X[0] && xLength < (basket2X[0]+10'd14)) && (yLength > basket2Y[0] && yLength < (basket2Y[0]+10'd14));
		basket3 <= (xLength > basket3X[0] && xLength < (basket3X[0]+10'd14)) && (yLength > basket3Y[0] && yLength < (basket3Y[0]+10'd14));
		basket4 <= (xLength > basket4X[0] && xLength < (basket4X[0]+10'd14)) && (yLength > basket4Y[0] && yLength < (basket4Y[0]+10'd14));
	end

//positions of 5 apples in the respective "baskets"
	always @(posedge update)
	begin
		if (rst == 1'b1)
			begin 				
				basket0X[0] <= 10'd35;
				basket0Y[0] <= 9'd80;
				basket1X[0] <= 10'd135;
				basket1Y[0] <= 9'd300;
				basket2X[0] <= 10'd205;
				basket2Y[0] <= 9'd400;
				basket3X[0] <= 10'd440;
				basket3Y[0] <= 9'd290;
				basket4X[0] <= 10'd600;
				basket4Y[0] <= 9'd50;
			end
		else
			begin
				basket0X[0] <= 10'd35;
				basket0Y[0] <= 9'd80;
				basket1X[0] <= 10'd135;
				basket1Y[0] <= 9'd300;
				basket2X[0] <= 10'd205;
				basket2Y[0] <= 9'd400;
				basket3X[0] <= 10'd440;
				basket3Y[0] <= 9'd290;
				basket4X[0] <= 10'd600;
				basket4Y[0] <= 9'd50;
			end
	end	

endmodule 