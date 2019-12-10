module Lab_4_1(a,b,c,d,o1,o2,o3,o4,o5,o6,o7);
input a,b,c,d;
output o1,o2,o3,o4,o5,o6,o7;
assign o1 = (!((!a&b&d) | (a&!b&!c) | (a&!d) | (c&b) | (!b&!d) | (!a&c)));
assign o2 = (!((!a&!b) | (!b&!d) | (!a&c&d) | (!a&!c&!d) | (a&!c&d)));
assign o3 = (!((!a&!c) | (!a&d) | (!a&b) | (!c&d) | (a&!b)));
assign o4 = (!((!a&!b&c) | (!a&!b&!d) | (b&c&!d) | (!b&c&d) | (b&!c&d) | (a&!c&!d)));
assign o5 = (!((!b&!d) | (a&b) | (c&!d) | (a&c)));
assign o6 = (!((!a&b&!c) | (b&!d) | (a&c) | (a&!b) | (!c&!d)));
assign o7 = (!((!a&b&!c) | (!a&!b&c) | (c&!d) | (a&d) | (a&!b)));
endmodule 