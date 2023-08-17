// first force clr=0. Then clr=1;

module JK_filpflop(q,qn,j,k,clk,clr);
output q,qn;
input j,k,clr,clk;
wire m,mn,p,pn,r,rn,clkn;

nand(m,qn,j,clk,clr);
nand(mn,q,clk,k);
nand(p,m,pn);
nand(pn,p,mn,clr);

not(clkn,clk);

nand(r,p,clkn);
nand(rn,pn,clkn);
nand(q,r,qn);
nand(qn,q,rn,clr);
endmodule
