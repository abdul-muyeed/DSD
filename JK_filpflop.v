module JK_filpflop(q,qn,j,k,clk,clr);
output q,qn;
input j,k,clr,clk;
wire a,b,y,z,c,d,clkn;

nand(a,qn,j,clk,clr);
nand(b,q,clk,k);
nand(y,a,z);
nand(z,y,b,clr);

not(clkn,clk);

nand(c,y,clkn);
nand(d,z,clkn);
nand(q,c,qn);
nand(qn,q,d,clr);
endmodule
