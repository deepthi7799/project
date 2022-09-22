# wallace multiplier using normal Full Adder
module wallaceFA(
input [7:0] x,
input [7:0] y,
output [15:0] z
);
wire
w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w2
0,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w33,w34,w35
,w36,w37,w38,w39,w40,w41,w42,w43,w44,w45,w46,w47,w48,w49,w50,
w51,w52,w53,w54,w55,w56,w57,w58,w59,w60,w61,w62,w63,w64,w65,
w66;
wire
s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,
s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39;
wire
c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c
21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,
c39,c40,c41,c42,c43,c44,c45,c46,c47,c48,c49;
wire sh1,sh2,sh3;
wire ch1,ch2,ch3,ch4,ch5,ch6,ch7,ch8;
and(z[0],x[0],y[0]);
and(w4,x[1],y[0]);
and(w5,x[0],y[1]);
and(w6,x[2],y[0]);
and(w7,x[1],y[1]);
and(w8,x[0],y[2]);
and(w9,x[3],y[0]);
and(w10,x[2],y[1]);
and(w11,x[1],y[2]);
and(w12,x[4],y[0]);
and(w13,x[3],y[1]);
and(w14,x[2],y[2]);
and(w15,x[5],y[0]);
and(w16,x[4],y[1]);
and(w17,x[3],y[2]);
and(w18,x[6],y[0]);
and(w19,x[5],y[1]);
and(w20,x[4],y[2]);
and(w21,x[7],y[0]);
and(w22,x[6],y[1]);
and(w23,x[5],y[2]);
and(w24,x[7],y[1]);
and(w25,x[6],y[2]);
and(w26,x[5],y[3]);
and(w27,x[7],y[2]);
and(w28,x[6],y[3]);
and(w29,x[5],y[2]);
and(w30,x[7],y[3]);
and(w31,x[6],y[4]);
and(w32,x[5],y[5]);
and(w33,x[7],y[4]);
and(w34,x[6],y[5]);
and(w35,x[5],y[6]);
and(w36,x[7],y[5]);
and(w37,x[6],y[6]);
and(w38,x[5],y[7]);
and(w39,x[7],y[6]);
and(w40,x[6],y[7]);
and(w41,x[7],y[7]);
and(w42,x[0],y[3]);
and(w43,x[1],y[3]);
and(w44,x[0],y[4]);
and(w45,x[2],y[3]);
and(w46,x[1],y[4]);
and(w47,x[0],y[5]);
and(w48,x[3],y[3]);
and(w49,x[2],y[4]);
and(w50,x[1],y[5]);
and(w51,x[4],y[3]);
and(w52,x[3],y[4]);
and(w53,x[2],y[5]);
and(w54,x[4],y[4]);
and(w55,x[3],y[5]);
and(w56,x[2],y[6]);
and(w57,x[4],y[5]);
and(w58,x[3],y[6]);and(w59,x[2],y[7]);
and(w60,x[4],y[6]);
and(w61,x[3],y[7]);
and(w62,x[4],y[7]);
and(w63,x[0],y[6]);
and(w64,x[1],y[6]);
and(w65,x[0],y[7]);
and(w66,x[1],y[7]);
full_adder f1(w6,w7,w8,s1,c1);
full_adder f2(w9,w10,w11,s2,c2);
full_adder f3(w12,w13,w14,s3,c3);
full_adder f4(w15,w16,w17,s4,c4);
full_adder f5(w18,w19,w20,s5,c5);
full_adder f6(w21,w22,w23,s6,c6);
full_adder f7(w24,w25,w26,s7,c7);
full_adder f8(w27,w28,w29,s8,c8);
full_adder f9(w30,w31,w32,s9,c9);
full_adder f10(w33,w34,w35,s10,c10);
full_adder f11(w36,w37,w38,s11,c11);
full_adder f12(w45,w46,w47,s12,c12);
full_adder f13(w48,w49,w50,s13,c13);
full_adder f14(w51,w52,w53,s14,c14);
full_adder f15(w54,w55,w56,s15,c15);
full_adder f16(w57,w58,w59,s16,c16);
full_adder f17(s2,c1,w42,s17,c17);
full_adder f18(s3,c2,w43,s18,c18);
full_adder f19(s4,c3,s12,s19,c19);
full_adder f20(s5,c4,s13,s20,c20);
full_adder f21(s6,c5,s14,s21,c21);
full_adder f22(s7,c6,s15,s22,c22);
full_adder f23(s8,c7,s16,s23,c23);
full_adder f24(s9,c8,w60,s24,c24);
full_adder f25(s10,c9,w62,s25,c25);
full_adder f26(w39,c11,w40,s26,c26);
full_adder f27(c13,w64,w65,s27,c27);
half_adder h1(c14,w66,sh1,ch1);
full_adder f28(s18,c17,w44,s28,c28);
full_adder f29(s20,c19,c12,s29,c29);full_adder f30(s21,c20,s27,s30,c30);
full_adder f31(s22,c21,sh1,s31,c31);
full_adder f32(s23,c22,c15,s32,c32);
full_adder f33(s24,c23,c16,s33,c33);
full_adder f34(s11,c25,c10,s34,c34);
full_adder f35(s19,c28,c18,s35,c35);
half_adder h2(s29,w63,sh2,ch2);
half_adder h3(s30,c29,sh3,ch3);
full_adder f36(s31,c30,c27,s36,c36);
full_adder f37(s32,c31,ch1,s37,c37);
full_adder f38(s33,c32,w61,s38,c38);
full_adder f39(s25,c33,c24,s39,c39);
half_adder h4(w4,w5,z[1],ch4);
half_adder h5(s1,ch4,z[2],ch5);
half_adder h6(s17,ch5,z[3],ch6);
half_adder h7(s28,ch6,z[4],ch7);
half_adder h8(s30,ch7,z[5],ch8);
full_adder f40(sh2,c35,ch8,z[6],c40);
full_adder f41(sh3,ch2,c40,z[7],c41);
full_adder f42(s36,ch3,c41,z[8],c42);
full_adder f43(s37,c36,c42,z[9],c43);
full_adder f44(s38,c37,c43,z[10],c44);
full_adder f45(s39,c38,c44,z[11],c45);
full_adder f46(s34,c39,c45,z[12],c46);
full_adder f47(s26,c34,c46,z[13],c47);
full_adder f48(w41,c26,c47,z[14],z[15]);
endmodule
module full_adder(input a,b,c,output sum,carry);
wire w1,w2,w3;
xor(w1,a,b);
and(w2,a,b);
xor(sum,w1,c);
and(w3,w1,c);
or(carry,w2,w3);
endmodule
module half_adder(input a1,b1,output sum1,carry1);
xor(sum1,a1,b1);
and(carry1,a1,b1);
endmodule







#Testbench code for Wallace multiplier using normal Full Adder
module wallaceFAtb;
// Inputs
reg [7:0] x;
reg [7:0] y;
// Outputs
wire [15:0] z;
// Instantiate the Unit Under Test (UUT)
wallaceFA uut (
.x(x),
.y(y),
.z(z)
);
initial begin
// Initialize Inputs
x = 0;
y = 0;
// Wait 100 ns for global reset to finish
#100;x=8'b00000101;y=8'b00000011;
#100;x=8'b00000111;y=8'b00000010;
#100;x=8'b00000111;y=8'b00000011;
// Add stimulus here
end
endmodule
