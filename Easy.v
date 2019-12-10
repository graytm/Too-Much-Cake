module Easy (clk,update,rst,xLength,yLength,cake);	
input clk,rst,update;

input [9:0]xLength;
input [9:0]yLength;
wire [9:0] xLength;
wire [9:0] yLength;

output [100:0]cake;

//cakes are being thrown out of trucks on either side of Guy
//trucks are numbered from left to right and can throw cakes from above or below

//truck 1 (far left truck)
assign cake[0] = truck1c0;
assign cake[1] = truck1c1;
assign cake[2] = truck1c2;
assign cake[3] = truck1c3;
assign cake[4] = truck1c4;
assign cake[5] = truck1c5;
//truck 2
assign cake[6] = truck2c0;
assign cake[7] = truck2c1;
assign cake[8] = truck2c2;
assign cake[9] = truck2c3;
assign cake[10] = truck2c4;
assign cake[11] = truck2c5;
//truck 3 (Doesnt throw cakes in Easy Mode)
assign cake[12] = 1'b0;
assign cake[13] = 1'b0;
assign cake[14] = 1'b0;
assign cake[15] = 1'b0;
assign cake[16] = 1'b0;
assign cake[17] = 1'b0;
//truck 4
assign cake[18] = truck4c0;
assign cake[19] = truck4c1;
assign cake[20] = truck4c2;
assign cake[21] = truck4c3;
assign cake[22] = truck4c4;
assign cake[23] = truck4c5;
//truck 5 (Doesnt throw cakes in Easy Mode)
assign cake[24] = 1'b0;
assign cake[25] = 1'b0;
assign cake[26] = 1'b0;
assign cake[27] = 1'b0;
assign cake[28] = 1'b0;
assign cake[29] = 1'b0;
//truck 6
assign cake[30] = truck6c0;
assign cake[31] = truck6c1;
assign cake[32] = truck6c2;
assign cake[33] = truck6c3;
assign cake[34] = truck6c4;
assign cake[35] = truck6c5;
assign cake[36] = truck6c6;
assign cake[37] = truck6c7;
//truck 7
assign cake[38] = truck7c0;
assign cake[39] = truck7c1;
assign cake[40] = truck7c2;
assign cake[41] = truck7c3;
assign cake[42] = truck7c4;
assign cake[43] = truck7c5;
//truck 8 (no cake falls here ever, its where Guy starts)
assign cake[44] = 1'b0;
assign cake[45] = 1'b0;
assign cake[46] = 1'b0;
assign cake[47] = 1'b0;
assign cake[48] = 1'b0;
assign cake[49] = 1'b0;
//truck 9
assign cake[50] = truck9c0;
assign cake[51] = truck9c1;
assign cake[52] = truck9c2;
assign cake[53] = truck9c3;
assign cake[54] = truck9c4;
assign cake[55] = truck9c5;
//truck 10 (Doesnt throw cakes in Easy Mode)
assign cake[56] = 1'b0;
assign cake[57] = 1'b0;
assign cake[58] = 1'b0;
assign cake[59] = 1'b0;
assign cake[60] = 1'b0;
assign cake[61] = 1'b0;
//truck 11
assign cake[62] = truck11c0;
assign cake[63] = truck11c1;
assign cake[64] = truck11c2;
assign cake[65] = truck11c3;
assign cake[66] = truck11c4;
assign cake[67] = truck11c5;
//truck 12 (Doesnt throw cakes in Easy Mode)
assign cake[68] = 1'b0;
assign cake[69] = 1'b0;
assign cake[70] = 1'b0;
assign cake[71] = 1'b0;
assign cake[72] = 1'b0;
assign cake[73] = 1'b0;
assign cake[74] = 1'b0;
//truck 13
assign cake[75] = truck13c0;
assign cake[76] = truck13c1;
assign cake[77] = truck13c2;
assign cake[78] = truck13c3;
assign cake[79] = truck13c4;
assign cake[80] = truck13c5;
//truck 14
assign cake[81] = truck14c0;
assign cake[82] = truck14c1;
assign cake[83] = truck14c2;
assign cake[84] = truck14c3;
assign cake[85] = truck14c4;
assign cake[86] = truck14c5;
assign cake[87] = truck14c6;
//truck 15 (Doesnt throw cakes in Easy Mode)
assign cake[88] = 1'b0;
assign cake[89] = 1'b0;
assign cake[90] = 1'b0;
assign cake[91] = 1'b0;
assign cake[92] = 1'b0;
assign cake[93] = 1'b0;
assign cake[94] = 1'b0;
//truck 16
assign cake[95] = truck16c0;
assign cake[96] = truck16c1;
assign cake[97] = truck16c2;
assign cake[98] = truck16c3;
assign cake[99] = truck16c4;
assign cake[100] = truck16c5;

//truck 1
reg truck1c0;
reg truck1c1;
reg truck1c2;
reg truck1c3;
reg truck1c4;
reg truck1c5;

//truck 2
reg truck2c0;
reg truck2c1;
reg truck2c2;
reg truck2c3;
reg truck2c4;
reg truck2c5;

//truck 3 (Doesnt throw cakes in Easy Mode)

//truck 4
reg truck4c0;
reg truck4c1;
reg truck4c2;
reg truck4c3;
reg truck4c4;
reg truck4c5;

//truck 5 (Doesnt throw cakes in Easy Mode)

//truck 6
reg truck6c0;
reg truck6c1;
reg truck6c2;
reg truck6c3;
reg truck6c4;
reg truck6c5;
reg truck6c6;
reg truck6c7;

//truck 7
reg truck7c0;
reg truck7c1;
reg truck7c2;
reg truck7c3;
reg truck7c4;
reg truck7c5;

//truck 8(not needed)

//truck 9
reg truck9c0;
reg truck9c1;
reg truck9c2;
reg truck9c3;
reg truck9c4;
reg truck9c5;

//truck 10 (Doesnt throw cakes in Easy Mode)

//truck 11
reg truck11c0;
reg truck11c1;
reg truck11c2;
reg truck11c3;
reg truck11c4;
reg truck11c5;

//truck 12 (Doesnt throw cakes in Easy Mode)

//truck 13
reg truck13c0;
reg truck13c1;
reg truck13c2;
reg truck13c3;
reg truck13c4;
reg truck13c5;

//truck 14
reg truck14c0;
reg truck14c1;
reg truck14c2;
reg truck14c3;
reg truck14c4;
reg truck14c5;
reg truck14c6;

//truck 15 (Doesnt throw cakes in Easy Mode)

//truck 16
reg truck16c0;
reg truck16c1;
reg truck16c2;
reg truck16c3;
reg truck16c4;
reg truck16c5;

//cake X directions

//truck 1
reg [9:0] truck1c0X [0:31];
reg [9:0] truck1c1X [0:31];
reg [9:0] truck1c2X [0:31];
reg [9:0] truck1c3X [0:31];
reg [9:0] truck1c4X [0:31];
reg [9:0] truck1c5X [0:31];

//truck 2
reg [9:0] truck2c0X [0:31];
reg [9:0] truck2c1X [0:31];
reg [9:0] truck2c2X [0:31];
reg [9:0] truck2c3X [0:31];
reg [9:0] truck2c4X [0:31];
reg [9:0] truck2c5X [0:31];

//truck 3(Doesnt throw cakes in Easy Mode)


//truck 4
reg [9:0] truck4c0X [0:31];
reg [9:0] truck4c1X [0:31];
reg [9:0] truck4c2X [0:31];
reg [9:0] truck4c3X [0:31];
reg [9:0] truck4c4X [0:31];
reg [9:0] truck4c5X [0:31];

//truck 5 (Doesnt throw cakes in Easy Mode)


//truck 6
reg [9:0] truck6c0X [0:31];
reg [9:0] truck6c1X [0:31];
reg [9:0] truck6c2X [0:31];
reg [9:0] truck6c3X [0:31];
reg [9:0] truck6c4X [0:31];
reg [9:0] truck6c5X [0:31];
reg [9:0] truck6c6X [0:31];
reg [9:0] truck6c7X [0:31];

//truck 7
reg [9:0] truck7c0X [0:31];
reg [9:0] truck7c1X [0:31];
reg [9:0] truck7c2X [0:31];
reg [9:0] truck7c3X [0:31];
reg [9:0] truck7c4X [0:31];
reg [9:0] truck7c5X [0:31];

//truck 8(not needed)

//truck 9
reg [9:0] truck9c0X [0:31];
reg [9:0] truck9c1X [0:31];
reg [9:0] truck9c2X [0:31];
reg [9:0] truck9c3X [0:31];
reg [9:0] truck9c4X [0:31];
reg [9:0] truck9c5X [0:31];

//truck 10 (Doesnt throw cakes in Easy Mode)


//truck 11
reg [9:0] truck11c0X [0:31];
reg [9:0] truck11c1X [0:31];
reg [9:0] truck11c2X [0:31];
reg [9:0] truck11c3X [0:31];
reg [9:0] truck11c4X [0:31];
reg [9:0] truck11c5X [0:31];

//truck 12 (Doesnt throw cakes in Easy Mode)


//truck 13
reg [9:0] truck13c0X [0:31];
reg [9:0] truck13c1X [0:31];
reg [9:0] truck13c2X [0:31];
reg [9:0] truck13c3X [0:31];
reg [9:0] truck13c4X [0:31];
reg [9:0] truck13c5X [0:31];

//truck 14
reg [9:0] truck14c0X [0:31];
reg [9:0] truck14c1X [0:31];
reg [9:0] truck14c2X [0:31];
reg [9:0] truck14c3X [0:31];
reg [9:0] truck14c4X [0:31];
reg [9:0] truck14c5X [0:31];
reg [9:0] truck14c6X [0:31];

//truck 15 (Doesnt throw cakes in Easy Mode)


//truck 16
reg [9:0] truck16c0X [0:31];
reg [9:0] truck16c1X [0:31];
reg [9:0] truck16c2X [0:31];
reg [9:0] truck16c3X [0:31];
reg [9:0] truck16c4X [0:31];
reg [9:0] truck16c5X [0:31];

//cake Y directions

//truck 1
reg [8:0] truck1c0Y [0:31];
reg [8:0] truck1c1Y [0:31];
reg [8:0] truck1c2Y [0:31];
reg [8:0] truck1c3Y [0:31];
reg [8:0] truck1c4Y [0:31];
reg [8:0] truck1c5Y [0:31];

//truck 2
reg [8:0] truck2c0Y [0:31];
reg [8:0] truck2c1Y [0:31];
reg [8:0] truck2c2Y [0:31];
reg [8:0] truck2c3Y [0:31];
reg [8:0] truck2c4Y [0:31];
reg [8:0] truck2c5Y [0:31];

//truck 3 (Doesnt throw cakes in Easy Mode)

//truck 4
reg [8:0] truck4c0Y [0:31];
reg [8:0] truck4c1Y [0:31];
reg [8:0] truck4c2Y [0:31];
reg [8:0] truck4c3Y [0:31];
reg [8:0] truck4c4Y [0:31];
reg [8:0] truck4c5Y [0:31];

//truck 5 (Doesnt throw cakes in Easy Mode)

//truck 6
reg [8:0] truck6c0Y [0:31];
reg [8:0] truck6c1Y [0:31];
reg [8:0] truck6c2Y [0:31];
reg [8:0] truck6c3Y [0:31];
reg [8:0] truck6c4Y [0:31];
reg [8:0] truck6c5Y [0:31];
reg [8:0] truck6c6Y [0:31];
reg [8:0] truck6c7Y [0:31];

//truck 7
reg [8:0] truck7c0Y [0:31];
reg [8:0] truck7c1Y [0:31];
reg [8:0] truck7c2Y [0:31];
reg [8:0] truck7c3Y [0:31];
reg [8:0] truck7c4Y [0:31];
reg [8:0] truck7c5Y [0:31];

//truck 8(not needed)

//truck 9
reg [8:0] truck9c0Y [0:31];
reg [8:0] truck9c1Y [0:31];
reg [8:0] truck9c2Y [0:31];
reg [8:0] truck9c3Y [0:31];
reg [8:0] truck9c4Y [0:31];
reg [8:0] truck9c5Y [0:31];

//truck 10 (Doesnt throw cakes in Easy Mode)

//truck 11
reg [8:0] truck11c0Y [0:31];
reg [8:0] truck11c1Y [0:31];
reg [8:0] truck11c2Y [0:31];
reg [8:0] truck11c3Y [0:31];
reg [8:0] truck11c4Y [0:31];
reg [8:0] truck11c5Y [0:31];

//truck 12 (Doesnt throw cakes in Easy Mode)

//truck 13
reg [8:0] truck13c0Y [0:31];
reg [8:0] truck13c1Y [0:31];
reg [8:0] truck13c2Y [0:31];
reg [8:0] truck13c3Y [0:31];
reg [8:0] truck13c4Y [0:31];
reg [8:0] truck13c5Y [0:31];

//truck 14
reg [8:0] truck14c0Y [0:31];
reg [8:0] truck14c1Y [0:31];
reg [8:0] truck14c2Y [0:31];
reg [8:0] truck14c3Y [0:31];
reg [8:0] truck14c4Y [0:31];
reg [8:0] truck14c5Y [0:31];
reg [8:0] truck14c6Y [0:31];

//truck 15 (Doesnt throw cakes in Easy Mode)

//truck 16
reg [8:0] truck16c0Y [0:31];
reg [8:0] truck16c1Y [0:31];
reg [8:0] truck16c2Y [0:31];
reg [8:0] truck16c3Y [0:31];
reg [8:0] truck16c4Y [0:31];
reg [8:0] truck16c5Y [0:31];


//controls the size of the "cakes" (All cakes are 20x20)
always@(posedge clk) 
	begin	
		//truck 1 
		truck1c0 <= (xLength > truck1c0X[0] && xLength < (truck1c0X[0]+10'd20)) && (yLength > truck1c0Y[0] && yLength < (truck1c0Y[0]+10'd20));
		truck1c1 <= (xLength > truck1c1X[0] && xLength < (truck1c1X[0]+10'd20)) && (yLength > truck1c1Y[0] && yLength < (truck1c1Y[0]+10'd20));
		truck1c2 <= (xLength > truck1c2X[0] && xLength < (truck1c2X[0]+10'd20)) && (yLength > truck1c2Y[0] && yLength < (truck1c2Y[0]+10'd20));
		truck1c3 <= (xLength > truck1c3X[0] && xLength < (truck1c3X[0]+10'd20)) && (yLength > truck1c3Y[0] && yLength < (truck1c3Y[0]+10'd20));
		truck1c4 <= (xLength > truck1c4X[0] && xLength < (truck1c4X[0]+10'd20)) && (yLength > truck1c4Y[0] && yLength < (truck1c4Y[0]+10'd20));
		truck1c5 <= (xLength > truck1c5X[0] && xLength < (truck1c5X[0]+10'd20)) && (yLength > truck1c5Y[0] && yLength < (truck1c5Y[0]+10'd20));
		
		//truck 2
		truck2c0 <= (xLength > truck2c0X[0] && xLength < (truck2c0X[0]+10'd20)) && (yLength > truck2c0Y[0] && yLength < (truck2c0Y[0]+10'd20));
		truck2c1 <= (xLength > truck2c1X[0] && xLength < (truck2c1X[0]+10'd20)) && (yLength > truck2c1Y[0] && yLength < (truck2c1Y[0]+10'd20));
		truck2c2 <= (xLength > truck2c2X[0] && xLength < (truck2c2X[0]+10'd20)) && (yLength > truck2c2Y[0] && yLength < (truck2c2Y[0]+10'd20));
		truck2c3 <= (xLength > truck2c3X[0] && xLength < (truck2c3X[0]+10'd20)) && (yLength > truck2c3Y[0] && yLength < (truck2c3Y[0]+10'd20));
		truck2c4 <= (xLength > truck2c4X[0] && xLength < (truck2c4X[0]+10'd20)) && (yLength > truck2c4Y[0] && yLength < (truck2c4Y[0]+10'd20));
		truck2c5 <= (xLength > truck2c5X[0] && xLength < (truck2c5X[0]+10'd20)) && (yLength > truck2c5Y[0] && yLength < (truck2c5Y[0]+10'd20));

		//truck 4
		truck4c0 <= (xLength > truck4c0X[0] && xLength < (truck4c0X[0]+10'd20)) && (yLength > truck4c0Y[0] && yLength < (truck4c0Y[0]+10'd20));
		truck4c1 <= (xLength > truck4c1X[0] && xLength < (truck4c1X[0]+10'd20)) && (yLength > truck4c1Y[0] && yLength < (truck4c1Y[0]+10'd20));
		truck4c2 <= (xLength > truck4c2X[0] && xLength < (truck4c2X[0]+10'd20)) && (yLength > truck4c2Y[0] && yLength < (truck4c2Y[0]+10'd20));
		truck4c3 <= (xLength > truck4c3X[0] && xLength < (truck4c3X[0]+10'd20)) && (yLength > truck4c3Y[0] && yLength < (truck4c3Y[0]+10'd20));
		truck4c4 <= (xLength > truck4c4X[0] && xLength < (truck4c4X[0]+10'd20)) && (yLength > truck4c4Y[0] && yLength < (truck4c4Y[0]+10'd20));
		truck4c5 <= (xLength > truck4c5X[0] && xLength < (truck4c5X[0]+10'd20)) && (yLength > truck4c5Y[0] && yLength < (truck4c5Y[0]+10'd20));

		//truck 6
		truck6c0 <= (xLength > truck6c0X[0] && xLength < (truck6c0X[0]+10'd20)) && (yLength > truck6c0Y[0] && yLength < (truck6c0Y[0]+10'd20));
		truck6c1 <= (xLength > truck6c1X[0] && xLength < (truck6c1X[0]+10'd20)) && (yLength > truck6c1Y[0] && yLength < (truck6c1Y[0]+10'd20));
		truck6c2 <= (xLength > truck6c2X[0] && xLength < (truck6c2X[0]+10'd20)) && (yLength > truck6c2Y[0] && yLength < (truck6c2Y[0]+10'd20));
		truck6c3 <= (xLength > truck6c3X[0] && xLength < (truck6c3X[0]+10'd20)) && (yLength > truck6c3Y[0] && yLength < (truck6c3Y[0]+10'd20));
		truck6c4 <= (xLength > truck6c4X[0] && xLength < (truck6c4X[0]+10'd20)) && (yLength > truck6c4Y[0] && yLength < (truck6c4Y[0]+10'd20));
		truck6c5 <= (xLength > truck6c5X[0] && xLength < (truck6c5X[0]+10'd20)) && (yLength > truck6c5Y[0] && yLength < (truck6c5Y[0]+10'd20));
		truck6c6 <= (xLength > truck6c6X[0] && xLength < (truck6c6X[0]+10'd20)) && (yLength > truck6c6Y[0] && yLength < (truck6c6Y[0]+10'd20));
		truck6c7 <= (xLength > truck6c7X[0] && xLength < (truck6c7X[0]+10'd20)) && (yLength > truck6c7Y[0] && yLength < (truck6c7Y[0]+10'd20));
		
		//truck 7
		truck7c0 <= (xLength > truck7c0X[0] && xLength < (truck7c0X[0]+10'd20)) && (yLength > truck7c0Y[0] && yLength < (truck7c0Y[0]+10'd20));
		truck7c1 <= (xLength > truck7c1X[0] && xLength < (truck7c1X[0]+10'd20)) && (yLength > truck7c1Y[0] && yLength < (truck7c1Y[0]+10'd20));
		truck7c2 <= (xLength > truck7c2X[0] && xLength < (truck7c2X[0]+10'd20)) && (yLength > truck7c2Y[0] && yLength < (truck7c2Y[0]+10'd20));
		truck7c3 <= (xLength > truck7c3X[0] && xLength < (truck7c3X[0]+10'd20)) && (yLength > truck7c3Y[0] && yLength < (truck7c3Y[0]+10'd20));
		truck7c4 <= (xLength > truck7c4X[0] && xLength < (truck7c4X[0]+10'd20)) && (yLength > truck7c4Y[0] && yLength < (truck7c4Y[0]+10'd20));
		truck7c5 <= (xLength > truck7c5X[0] && xLength < (truck7c5X[0]+10'd20)) && (yLength > truck7c5Y[0] && yLength < (truck7c5Y[0]+10'd20));

		//truck 9
		truck9c0 <= (xLength > truck9c0X[0] && xLength < (truck9c0X[0]+10'd20)) && (yLength > truck9c0Y[0] && yLength < (truck9c0Y[0]+10'd20));
		truck9c1 <= (xLength > truck9c1X[0] && xLength < (truck9c1X[0]+10'd20)) && (yLength > truck9c1Y[0] && yLength < (truck9c1Y[0]+10'd20));
		truck9c2 <= (xLength > truck9c2X[0] && xLength < (truck9c2X[0]+10'd20)) && (yLength > truck9c2Y[0] && yLength < (truck9c2Y[0]+10'd20));
		truck9c3 <= (xLength > truck9c3X[0] && xLength < (truck9c3X[0]+10'd20)) && (yLength > truck9c3Y[0] && yLength < (truck9c3Y[0]+10'd20));
		truck9c4 <= (xLength > truck9c4X[0] && xLength < (truck9c4X[0]+10'd20)) && (yLength > truck9c4Y[0] && yLength < (truck9c4Y[0]+10'd20));
		truck9c5 <= (xLength > truck9c5X[0] && xLength < (truck9c5X[0]+10'd20)) && (yLength > truck9c5Y[0] && yLength < (truck9c5Y[0]+10'd20));
		
		//truck 11
		truck11c0 <= (xLength > truck11c0X[0] && xLength < (truck11c0X[0]+10'd20)) && (yLength > truck11c0Y[0] && yLength < (truck11c0Y[0]+10'd20));
		truck11c1 <= (xLength > truck11c1X[0] && xLength < (truck11c1X[0]+10'd20)) && (yLength > truck11c1Y[0] && yLength < (truck11c1Y[0]+10'd20));
		truck11c2 <= (xLength > truck11c2X[0] && xLength < (truck11c2X[0]+10'd20)) && (yLength > truck11c2Y[0] && yLength < (truck11c2Y[0]+10'd20));
		truck11c3 <= (xLength > truck11c3X[0] && xLength < (truck11c3X[0]+10'd20)) && (yLength > truck11c3Y[0] && yLength < (truck11c3Y[0]+10'd20));
		truck11c4 <= (xLength > truck11c4X[0] && xLength < (truck11c4X[0]+10'd20)) && (yLength > truck11c4Y[0] && yLength < (truck11c4Y[0]+10'd20));
		truck11c5 <= (xLength > truck11c5X[0] && xLength < (truck11c5X[0]+10'd20)) && (yLength > truck11c5Y[0] && yLength < (truck11c5Y[0]+10'd20));
		
		//truck 13
		truck13c0 <= (xLength > truck13c0X[0] && xLength < (truck13c0X[0]+10'd20)) && (yLength > truck13c0Y[0] && yLength < (truck13c0Y[0]+10'd20));
		truck13c1 <= (xLength > truck13c1X[0] && xLength < (truck13c1X[0]+10'd20)) && (yLength > truck13c1Y[0] && yLength < (truck13c1Y[0]+10'd20));
		truck13c2 <= (xLength > truck13c2X[0] && xLength < (truck13c2X[0]+10'd20)) && (yLength > truck13c2Y[0] && yLength < (truck13c2Y[0]+10'd20));
		truck13c3 <= (xLength > truck13c3X[0] && xLength < (truck13c3X[0]+10'd20)) && (yLength > truck13c3Y[0] && yLength < (truck13c3Y[0]+10'd20));
		truck13c4 <= (xLength > truck13c4X[0] && xLength < (truck13c4X[0]+10'd20)) && (yLength > truck13c4Y[0] && yLength < (truck13c4Y[0]+10'd20));
		truck13c5 <= (xLength > truck13c5X[0] && xLength < (truck13c5X[0]+10'd20)) && (yLength > truck13c5Y[0] && yLength < (truck13c5Y[0]+10'd20));
			
		//truck 14
		truck14c0 <= (xLength > truck14c0X[0] && xLength < (truck14c0X[0]+10'd20)) && (yLength > truck14c0Y[0] && yLength < (truck14c0Y[0]+10'd20));
		truck14c1 <= (xLength > truck14c1X[0] && xLength < (truck14c1X[0]+10'd20)) && (yLength > truck14c1Y[0] && yLength < (truck14c1Y[0]+10'd20));
		truck14c2 <= (xLength > truck14c2X[0] && xLength < (truck14c2X[0]+10'd20)) && (yLength > truck14c2Y[0] && yLength < (truck14c2Y[0]+10'd20));
		truck14c3 <= (xLength > truck14c3X[0] && xLength < (truck14c3X[0]+10'd20)) && (yLength > truck14c3Y[0] && yLength < (truck14c3Y[0]+10'd20));
		truck14c4 <= (xLength > truck14c4X[0] && xLength < (truck14c4X[0]+10'd20)) && (yLength > truck14c4Y[0] && yLength < (truck14c4Y[0]+10'd20));
		truck14c5 <= (xLength > truck14c5X[0] && xLength < (truck14c5X[0]+10'd20)) && (yLength > truck14c5Y[0] && yLength < (truck14c5Y[0]+10'd20));
		truck14c6 <= (xLength > truck14c6X[0] && xLength < (truck14c6X[0]+10'd20)) && (yLength > truck14c6Y[0] && yLength < (truck14c6Y[0]+10'd20));
		
		//truck 16
		truck16c0 <= (xLength > truck16c0X[0] && xLength < (truck16c0X[0]+10'd20)) && (yLength > truck16c0Y[0] && yLength < (truck16c0Y[0]+10'd20));
		truck16c1 <= (xLength > truck16c1X[0] && xLength < (truck16c1X[0]+10'd20)) && (yLength > truck16c1Y[0] && yLength < (truck16c1Y[0]+10'd20));
		truck16c2 <= (xLength > truck16c2X[0] && xLength < (truck16c2X[0]+10'd20)) && (yLength > truck16c2Y[0] && yLength < (truck16c2Y[0]+10'd20));
		truck16c3 <= (xLength > truck16c3X[0] && xLength < (truck16c3X[0]+10'd20)) && (yLength > truck16c3Y[0] && yLength < (truck16c3Y[0]+10'd20));
		truck16c4 <= (xLength > truck16c4X[0] && xLength < (truck16c4X[0]+10'd20)) && (yLength > truck16c4Y[0] && yLength < (truck16c4Y[0]+10'd20));
		truck16c5 <= (xLength > truck16c5X[0] && xLength < (truck16c5X[0]+10'd20)) && (yLength > truck16c5Y[0] && yLength < (truck16c5Y[0]+10'd20));
				
	end

	/////truck1 cake positioning and speed
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of truck1 cake				
				truck1c0X[0] <= 10'd65;
				truck1c0Y[0] <= 9'd70;
				truck1c1X[0] <= 10'd65;
				truck1c1Y[0] <= 9'd150;
				truck1c2X[0] <= 10'd65;
				truck1c2Y[0] <= 9'd200;
				truck1c3X[0] <= 10'd65;
				truck1c3Y[0] <= 9'd290;
				truck1c4X[0] <= 10'd65;
				truck1c4Y[0] <= 9'd370;
				truck1c5X[0] <= 10'd65;
				truck1c5Y[0] <= 9'd450;
			
			end
			
		//recycling cake back to the start of the truck
		else if (truck1c0Y[0] >= 9'd480)
			truck1c0Y[0] <= 9'd0;
		else if (truck1c1Y[0] >= 9'd480)
			truck1c1Y[0] <= 9'd0;
		else if (truck1c2Y[0] >= 9'd480)
			truck1c2Y[0] <= 9'd0;
		else if (truck1c3Y[0] >= 9'd480)
			truck1c3Y[0] <= 9'd0;
		else if (truck1c4Y[0] >= 9'd480)
			truck1c4Y[0] <= 9'd0;
		else if (truck1c5Y[0] >= 9'd480)
			truck1c5Y[0] <= 9'd0;


		else
			begin //rate and direction of cake
				truck1c0Y[0] <= truck1c0Y[0] + 9'd1;
				truck1c1Y[0] <= truck1c1Y[0] + 9'd1;
				truck1c2Y[0] <= truck1c2Y[0] + 9'd1;
				truck1c3Y[0] <= truck1c3Y[0] + 9'd1;
				truck1c4Y[0] <= truck1c4Y[0] + 9'd1;
				truck1c5Y[0] <= truck1c5Y[0] + 9'd1;	
			end
	end
//
	/////truck2 cake positioning and speed
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of truck2 cake				
				truck2c0X[0] <= 10'd100;
				truck2c0Y[0] <= 9'd50;
				truck2c1X[0] <= 10'd100;
				truck2c1Y[0] <= 9'd150;
				truck2c2X[0] <= 10'd100;
				truck2c2Y[0] <= 9'd220;
				truck2c3X[0] <= 10'd100;
				truck2c3Y[0] <= 9'd290;
				truck2c4X[0] <= 10'd100;
				truck2c4Y[0] <= 9'd340;
				truck2c5X[0] <= 10'd100;
				truck2c5Y[0] <= 9'd440;
			
			end
			
		//recycling cake back to the start of the truck
		else if (truck2c0Y[0] == 9'd0)
			truck2c0Y[0] <= 9'd480;
		else if (truck2c1Y[0] == 9'd0)
			truck2c1Y[0] <= 9'd480;
		else if (truck2c2Y[0] == 9'd0)
			truck2c2Y[0] <= 9'd480;
		else if (truck2c3Y[0] == 9'd0)
			truck2c3Y[0] <= 9'd480;
		else if (truck2c4Y[0] == 9'd0)
			truck2c4Y[0] <= 9'd480;
		else if (truck2c5Y[0] == 9'd0)
			truck2c5Y[0] <= 9'd480;


		else
			begin //rate and direction of cake
				truck2c0Y[0] <= truck2c0Y[0] - 9'd1;
				truck2c1Y[0] <= truck2c1Y[0] - 9'd1;
				truck2c2Y[0] <= truck2c2Y[0] - 9'd1;
				truck2c3Y[0] <= truck2c3Y[0] - 9'd1;
				truck2c4Y[0] <= truck2c4Y[0] - 9'd1;
				truck2c5Y[0] <= truck2c5Y[0] - 9'd1;	
			end
	end
	

	
	/////truck4 cake positioning and speed
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of truck4 cake				
				truck4c0X[0] <= 10'd170;
				truck4c0Y[0] <= 9'd16;
				truck4c1X[0] <= 10'd170;
				truck4c1Y[0] <= 9'd69;
				truck4c2X[0] <= 10'd170;
				truck4c2Y[0] <= 9'd145;
				truck4c3X[0] <= 10'd170;
				truck4c3Y[0] <= 9'd215;
				truck4c4X[0] <= 10'd170;
				truck4c4Y[0] <= 9'd375;
				truck4c5X[0] <= 10'd170;
				truck4c5Y[0] <= 9'd420;
			
			end
			
		//recycling cake back to the start of the truck
		else if (truck4c0Y[0] >= 9'd480)
			truck4c0Y[0] <= 9'd0;
		else if (truck4c1Y[0] >= 9'd480)
			truck4c1Y[0] <= 9'd0;
		else if (truck4c2Y[0] >= 9'd480)
			truck4c2Y[0] <= 9'd0;
		else if (truck4c3Y[0] >= 9'd480)
			truck4c3Y[0] <= 9'd0;
		else if (truck4c4Y[0] >= 9'd480)
			truck4c4Y[0] <= 9'd0;
		else if (truck4c5Y[0] >= 9'd480)
			truck4c5Y[0] <= 9'd0;


		else
			begin //rate and direction of cake
				truck4c0Y[0] <= truck4c0Y[0] + 9'd1;
				truck4c1Y[0] <= truck4c1Y[0] + 9'd1;
				truck4c2Y[0] <= truck4c2Y[0] + 9'd1;
				truck4c3Y[0] <= truck4c3Y[0] + 9'd1;
				truck4c4Y[0] <= truck4c4Y[0] + 9'd1;
				truck4c5Y[0] <= truck4c5Y[0] + 9'd1;	
			end
	end

	
	/////truck6 cake positioning and speed
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of truck6 cake				
				truck6c0X[0] <= 10'd240;
				truck6c0Y[0] <= 9'd25;
				truck6c1X[0] <= 10'd240;
				truck6c1Y[0] <= 9'd75;
				truck6c2X[0] <= 10'd240;
				truck6c2Y[0] <= 9'd180;
				truck6c3X[0] <= 10'd240;
				truck6c3Y[0] <= 9'd210;
				truck6c4X[0] <= 10'd240;
				truck6c4Y[0] <= 9'd350;
				truck6c5X[0] <= 10'd240;
				truck6c5Y[0] <= 9'd375;
				truck6c6X[0] <= 10'd240;
				truck6c6Y[0] <= 9'd415;
				truck6c7X[0] <= 10'd240;
				truck6c7Y[0] <= 9'd460;
			
			end
			
		//recycling cake back to the start of the truck
		else if (truck6c0Y[0] == 9'd0)
			truck6c0Y[0] <= 9'd480;
		else if (truck6c1Y[0] == 9'd0)
			truck6c1Y[0] <= 9'd480;
		else if (truck6c2Y[0] == 9'd0)
			truck6c2Y[0] <= 9'd480;
		else if (truck6c3Y[0] == 9'd0)
			truck6c3Y[0] <= 9'd480;
		else if (truck6c4Y[0] == 9'd0)
			truck6c4Y[0] <= 9'd480;
		else if (truck6c5Y[0] == 9'd0)
			truck6c5Y[0] <= 9'd480;
		else if (truck6c6Y[0] == 9'd0)
			truck6c6Y[0] <= 9'd480;
		else if (truck6c7Y[0] == 9'd0)
			truck6c7Y[0] <= 9'd480;


		else
			begin //rate and direction of cake
				truck6c0Y[0] <= truck6c0Y[0] - 9'd2;
				truck6c1Y[0] <= truck6c1Y[0] - 9'd2;
				truck6c2Y[0] <= truck6c2Y[0] - 9'd2;
				truck6c3Y[0] <= truck6c3Y[0] - 9'd2;
				truck6c4Y[0] <= truck6c4Y[0] - 9'd2;
				truck6c5Y[0] <= truck6c5Y[0] - 9'd2;
				truck6c6Y[0] <= truck6c6Y[0] - 9'd2;
				truck6c7Y[0] <= truck6c7Y[0] - 9'd2;	
			end
	end
	
	/////truck7 cake positioning and speed
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of truck7 cake				
				truck7c0X[0] <= 10'd275;
				truck7c0Y[0] <= 9'd55;
				truck7c1X[0] <= 10'd275;
				truck7c1Y[0] <= 9'd155;
				truck7c2X[0] <= 10'd275;
				truck7c2Y[0] <= 9'd225;
				truck7c3X[0] <= 10'd275;
				truck7c3Y[0] <= 9'd296;
				truck7c4X[0] <= 10'd275;
				truck7c4Y[0] <= 9'd348;
				truck7c5X[0] <= 10'd275;
				truck7c5Y[0] <= 9'd451;
			
			end
			
		//recycling cake back to the start of the truck
		else if (truck7c0Y[0] == 9'd0)
			truck7c0Y[0] <= 9'd480;
		else if (truck7c1Y[0] == 9'd0)
			truck7c1Y[0] <= 9'd480;
		else if (truck7c2Y[0] == 9'd0)
			truck7c2Y[0] <= 9'd480;
		else if (truck7c3Y[0] == 9'd0)
			truck7c3Y[0] <= 9'd480;
		else if (truck7c4Y[0] == 9'd0)
			truck7c4Y[0] <= 9'd480;
		else if (truck7c5Y[0] == 9'd0)
			truck7c5Y[0] <= 9'd480;


		else
			begin //rate and direction of cake
				truck7c0Y[0] <= truck7c0Y[0] - 9'd1;
				truck7c1Y[0] <= truck7c1Y[0] - 9'd1;
				truck7c2Y[0] <= truck7c2Y[0] - 9'd1;
				truck7c3Y[0] <= truck7c3Y[0] - 9'd1;
				truck7c4Y[0] <= truck7c4Y[0] - 9'd1;
				truck7c5Y[0] <= truck7c5Y[0] - 9'd1;	
			end
	end
	
//No truck 8 (safe zone from 285-325 x)

/////truck9 cake positioning and speed
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of truck9 cake				
				truck9c0X[0] <= 10'd335;
				truck9c0Y[0] <= 9'd70;
				truck9c1X[0] <= 10'd335;
				truck9c1Y[0] <= 9'd160;
				truck9c2X[0] <= 10'd335;
				truck9c2Y[0] <= 9'd220;
				truck9c3X[0] <= 10'd335;
				truck9c3Y[0] <= 9'd255;
				truck9c4X[0] <= 10'd335;
				truck9c4Y[0] <= 9'd315;
				truck9c5X[0] <= 10'd335;
				truck9c5Y[0] <= 9'd420;
			
			end
			
		//recycling cake back to the start of the truck
		else if (truck9c0Y[0] == 9'd0)
			truck9c0Y[0] <= 9'd480;
		else if (truck9c1Y[0] == 9'd0)
			truck9c1Y[0] <= 9'd480;
		else if (truck9c2Y[0] == 9'd0)
			truck9c2Y[0] <= 9'd480;
		else if (truck9c3Y[0] == 9'd0)
			truck9c3Y[0] <= 9'd480;
		else if (truck9c4Y[0] == 9'd0)
			truck9c4Y[0] <= 9'd480;
		else if (truck9c5Y[0] == 9'd0)
			truck9c5Y[0] <= 9'd480;


		else
			begin //rate and direction of cake
				truck9c0Y[0] <= truck9c0Y[0] - 9'd1;
				truck9c1Y[0] <= truck9c1Y[0] - 9'd1;
				truck9c2Y[0] <= truck9c2Y[0] - 9'd1;
				truck9c3Y[0] <= truck9c3Y[0] - 9'd1;
				truck9c4Y[0] <= truck9c4Y[0] - 9'd1;
				truck9c5Y[0] <= truck9c5Y[0] - 9'd1;	
			end
	end
	

	
	/////truck11 cake positioning and speed
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of truck4 cake				
				truck11c0X[0] <= 10'd405;
				truck11c0Y[0] <= 9'd60;
				truck11c1X[0] <= 10'd405;
				truck11c1Y[0] <= 9'd190;
				truck11c2X[0] <= 10'd405;
				truck11c2Y[0] <= 9'd235;
				truck11c3X[0] <= 10'd405;
				truck11c3Y[0] <= 9'd280;
				truck11c4X[0] <= 10'd405;
				truck11c4Y[0] <= 9'd370;
				truck11c5X[0] <= 10'd405;
				truck11c5Y[0] <= 9'd445;
			
			end
			
		//recycling cake back to the start of the truck
		else if (truck11c0Y[0] >= 9'd480)
			truck11c0Y[0] <= 9'd0;
		else if (truck11c1Y[0] >= 9'd480)
			truck11c1Y[0] <= 9'd0;
		else if (truck11c2Y[0] >= 9'd480)
			truck11c2Y[0] <= 9'd0;
		else if (truck11c3Y[0] >= 9'd480)
			truck11c3Y[0] <= 9'd0;
		else if (truck11c4Y[0] >= 9'd480)
			truck11c4Y[0] <= 9'd0;
		else if (truck11c5Y[0] >= 9'd480)
			truck11c5Y[0] <= 9'd0;


		else
			begin //rate and direction of cake
				truck11c0Y[0] <= truck11c0Y[0] + 9'd1;
				truck11c1Y[0] <= truck11c1Y[0] + 9'd1;
				truck11c2Y[0] <= truck11c2Y[0] + 9'd1;
				truck11c3Y[0] <= truck11c3Y[0] + 9'd1;
				truck11c4Y[0] <= truck11c4Y[0] + 9'd1;
				truck11c5Y[0] <= truck11c5Y[0] + 9'd1;	
			end
	end		
	
	
	
/////truck13 cake positioning and speed
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of truck13 cake				
				truck13c0X[0] <= 10'd475;
				truck13c0Y[0] <= 9'd50;
				truck13c1X[0] <= 10'd475;
				truck13c1Y[0] <= 9'd160;
				truck13c2X[0] <= 10'd475;
				truck13c2Y[0] <= 9'd220;
				truck13c3X[0] <= 10'd475;
				truck13c3Y[0] <= 9'd255;
				truck13c4X[0] <= 10'd475;
				truck13c4Y[0] <= 9'd335;
				truck13c5X[0] <= 10'd475;
				truck13c5Y[0] <= 9'd430;
			
			end
			
		//recycling cake back to the start of the truck
		else if (truck13c0Y[0] == 9'd0)
			truck13c0Y[0] <= 9'd480;
		else if (truck13c1Y[0] == 9'd0)
			truck13c1Y[0] <= 9'd480;
		else if (truck13c2Y[0] == 9'd0)
			truck13c2Y[0] <= 9'd480;
		else if (truck13c3Y[0] == 9'd0)
			truck13c3Y[0] <= 9'd480;
		else if (truck13c4Y[0] == 9'd0)
			truck13c4Y[0] <= 9'd480;
		else if (truck13c5Y[0] == 9'd0)
			truck13c5Y[0] <= 9'd480;


		else
			begin //rate and direction of cake
				truck13c0Y[0] <= truck13c0Y[0] - 9'd1;
				truck13c1Y[0] <= truck13c1Y[0] - 9'd1;
				truck13c2Y[0] <= truck13c2Y[0] - 9'd1;
				truck13c3Y[0] <= truck13c3Y[0] - 9'd1;
				truck13c4Y[0] <= truck13c4Y[0] - 9'd1;
				truck13c5Y[0] <= truck13c5Y[0] - 9'd1;	
			end
	end	
	
	
/////truck14 cake positioning and speed
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of truck14 cake				
				truck14c0X[0] <= 10'd510;
				truck14c0Y[0] <= 9'd20;
				truck14c1X[0] <= 10'd510;
				truck14c1Y[0] <= 9'd100;
				truck14c2X[0] <= 10'd510;
				truck14c2Y[0] <= 9'd200;
				truck14c3X[0] <= 10'd510;
				truck14c3Y[0] <= 9'd255;
				truck14c4X[0] <= 10'd510;
				truck14c4Y[0] <= 9'd330;
				truck14c5X[0] <= 10'd510;
				truck14c5Y[0] <= 9'd400;
				truck14c6X[0] <= 10'd510;
				truck14c6Y[0] <= 9'd430;
			
			
			end
			
		//recycling cake back to the start of the truck
		else if (truck14c0Y[0] >= 9'd480)
			truck14c0Y[0] <= 9'd0;
		else if (truck14c1Y[0] >= 9'd480)
			truck14c1Y[0] <= 9'd0;
		else if (truck14c2Y[0] >= 9'd480)
			truck14c2Y[0] <= 9'd0;
		else if (truck14c3Y[0] >= 9'd480)
			truck14c3Y[0] <= 9'd0;
		else if (truck14c4Y[0] >= 9'd480)
			truck14c4Y[0] <= 9'd0;
		else if (truck14c5Y[0] >= 9'd480)
			truck14c5Y[0] <= 9'd0;
		else if (truck14c6Y[0] >= 9'd480)
			truck14c6Y[0] <= 9'd0;


		else
			begin //rate and direction of cake
				truck14c0Y[0] <= truck14c0Y[0] + 9'd1;
				truck14c1Y[0] <= truck14c1Y[0] + 9'd1;
				truck14c2Y[0] <= truck14c2Y[0] + 9'd1;
				truck14c3Y[0] <= truck14c3Y[0] + 9'd1;
				truck14c4Y[0] <= truck14c4Y[0] + 9'd1;
				truck14c5Y[0] <= truck14c5Y[0] + 9'd1;
				truck14c6Y[0] <= truck14c6Y[0] + 9'd1;		
			end
	end	
	
	
/////truck16 cake positioning and speed
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of truck16 cake				
				truck16c0X[0] <= 10'd580;
				truck16c0Y[0] <= 9'd100;
				truck16c1X[0] <= 10'd580;
				truck16c1Y[0] <= 9'd150;
				truck16c2X[0] <= 10'd580;
				truck16c2Y[0] <= 9'd220;
				truck16c3X[0] <= 10'd580;
				truck16c3Y[0] <= 9'd300;
				truck16c4X[0] <= 10'd580;
				truck16c4Y[0] <= 9'd340;
				truck16c5X[0] <= 10'd580;
				truck16c5Y[0] <= 9'd430;
			
			end
			
		//recycling cake back to the start of the truck
		else if (truck16c0Y[0] == 9'd0)
			truck16c0Y[0] <= 9'd480;
		else if (truck16c1Y[0] == 9'd0)
			truck16c1Y[0] <= 9'd480;
		else if (truck16c2Y[0] == 9'd0)
			truck16c2Y[0] <= 9'd480;
		else if (truck16c3Y[0] == 9'd0)
			truck16c3Y[0] <= 9'd480;
		else if (truck16c4Y[0] == 9'd0)
			truck16c4Y[0] <= 9'd480;
		else if (truck16c5Y[0] == 9'd0)
			truck16c5Y[0] <= 9'd480;


		else
			begin //rate and direction of cake
				truck16c0Y[0] <= truck16c0Y[0] - 9'd1;
				truck16c1Y[0] <= truck16c1Y[0] - 9'd1;
				truck16c2Y[0] <= truck16c2Y[0] - 9'd1;
				truck16c3Y[0] <= truck16c3Y[0] - 9'd1;
				truck16c4Y[0] <= truck16c4Y[0] - 9'd1;
				truck16c5Y[0] <= truck16c5Y[0] - 9'd1;	
			end
	end	
		
	
endmodule 
