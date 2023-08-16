module mod10(c,cn,clk,clr);
input clk,clr;
output [3:0]c,cn;
nand(clr,c[1],c[3]);
JK_filpflop JK1(c[0],cn[0],1,1,clk,clr);
JK_filpflop JK2(c[1],cn[1],1,1,c[0],clr);
JK_filpflop JK3(c[2],cn[2],1,1,c[1],clr);
JK_filpflop JK4(c[3],cn[3],1,1,c[2],clr);
endmodule 