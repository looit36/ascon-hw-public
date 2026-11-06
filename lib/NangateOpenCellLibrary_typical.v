//
// Conformal-LEC: Version 25.10-p100 (27-Mar-2025) (64 bit executable)
//
module XOR2_X2(A, B, Z);
input  A, B;
output Z;
wire  A, B, Z;
  xor U$1(Z, A, B);
endmodule

module XOR2_X1(A, B, Z);
input  A, B;
output Z;
wire  A, B, Z;
  xor U$1(Z, A, B);
endmodule

module XNOR2_X2(A, B, ZN);
input  A, B;
output ZN;
wire  A, B, ZN;
  xnor U$1(ZN, A, B);
endmodule

module XNOR2_X1(A, B, ZN);
input  A, B;
output ZN;
wire  A, B, ZN;
  xnor U$1(ZN, A, B);
endmodule

module TLAT_X1(D, G, OE, Q);
input  D, G, OE;
output Q;
wire  IQ, IQN, D, G, OE, Q;
  _HDLAT_verplex U$1(.Q(IQ), .QN(IQN), .S(1'b0), .R(1'b0), .CK(G), .D(D));
  bufif1 U$2(Q, IQ, OE);
endmodule

module TINV_X1(EN, I, ZN);
input  EN, I;
output ZN;
wire  EN, I, ZN, n$1, n$2;
  bufif1 U$1(ZN, n$1, n$2);
  not U$2(n$1, I);
  not U$3(n$2, EN);
endmodule

module TBUF_X16(A, EN, Z);
input  A, EN;
output Z;
wire  A, EN, Z, n$1;
  bufif1 U$1(Z, A, n$1);
  not U$2(n$1, EN);
endmodule

module TBUF_X8(A, EN, Z);
input  A, EN;
output Z;
wire  A, EN, Z, n$1;
  bufif1 U$1(Z, A, n$1);
  not U$2(n$1, EN);
endmodule

module TBUF_X4(A, EN, Z);
input  A, EN;
output Z;
wire  A, EN, Z, n$1;
  bufif1 U$1(Z, A, n$1);
  not U$2(n$1, EN);
endmodule

module TBUF_X2(A, EN, Z);
input  A, EN;
output Z;
wire  A, EN, Z, n$1;
  bufif1 U$1(Z, A, n$1);
  not U$2(n$1, EN);
endmodule

module TBUF_X1(A, EN, Z);
input  A, EN;
output Z;
wire  A, EN, Z, n$1;
  bufif1 U$1(Z, A, n$1);
  not U$2(n$1, EN);
endmodule

module SDFF_X2(D, SE, SI, CK, Q, QN);
input  D, SE, SI, CK;
output Q, QN;
wire  D, SE, SI, CK, Q, QN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, D, n$4);
  not U$7(n$4, SE);
endmodule

module SDFF_X1(D, SE, SI, CK, Q, QN);
input  D, SE, SI, CK;
output Q, QN;
wire  D, SE, SI, CK, Q, QN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, D, n$4);
  not U$7(n$4, SE);
endmodule

module SDFFS_X2(D, SE, SI, SN, CK, Q, QN);
input  D, SE, SI, SN, CK;
output Q, QN;
wire  D, SE, SI, SN, CK, Q, QN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(n$2));
  not U$4(n$1, SN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, D, n$5);
  not U$8(n$5, SE);
endmodule

module SDFFS_X1(D, SE, SI, SN, CK, Q, QN);
input  D, SE, SI, SN, CK;
output Q, QN;
wire  D, SE, SI, SN, CK, Q, QN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(n$2));
  not U$4(n$1, SN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, D, n$5);
  not U$8(n$5, SE);
endmodule

module SDFFR_X2(D, RN, SE, SI, CK, Q, QN);
input  D, RN, SE, SI, CK;
output Q, QN;
wire  D, RN, SE, SI, CK, Q, QN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(n$2));
  not U$4(n$1, RN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, D, n$5);
  not U$8(n$5, SE);
endmodule

module SDFFR_X1(D, RN, SE, SI, CK, Q, QN);
input  D, RN, SE, SI, CK;
output Q, QN;
wire  D, RN, SE, SI, CK, Q, QN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(n$2));
  not U$4(n$1, RN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, D, n$5);
  not U$8(n$5, SE);
endmodule

module SDFFRS_X2(D, RN, SE, SI, SN, CK, Q, QN);
input  D, RN, SE, SI, SN, CK;
output Q, QN;
wire  D, RN, SE, SI, SN, CK, Q, QN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(n$8), .S(n$1), .R(n$2), .CK(CK), .D(n$3));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  or U$6(n$3, n$4, n$5);
  and U$7(n$4, SE, SI);
  and U$8(n$5, D, n$6);
  not U$9(n$6, SE);
  not U$10(n$7, n$1);
  and U$11(QN, n$7, n$8);
endmodule

module SDFFRS_X1(D, RN, SE, SI, SN, CK, Q, QN);
input  D, RN, SE, SI, SN, CK;
output Q, QN;
wire  D, RN, SE, SI, SN, CK, Q, QN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(n$8), .S(n$1), .R(n$2), .CK(CK), .D(n$3));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  or U$6(n$3, n$4, n$5);
  and U$7(n$4, SE, SI);
  and U$8(n$5, D, n$6);
  not U$9(n$6, SE);
  not U$10(n$7, n$1);
  and U$11(QN, n$7, n$8);
endmodule

module OR4_X4(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  or U$1(ZN, A1, A2, A3, A4);
endmodule

module OR4_X2(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  or U$1(ZN, A1, A2, A3, A4);
endmodule

module OR4_X1(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  or U$1(ZN, A1, A2, A3, A4);
endmodule

module OR3_X4(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  or U$1(ZN, A1, A2, A3);
endmodule

module OR3_X2(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  or U$1(ZN, A1, A2, A3);
endmodule

module OR3_X1(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  or U$1(ZN, A1, A2, A3);
endmodule

module OR2_X4(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  or U$1(ZN, A1, A2);
endmodule

module OR2_X2(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  or U$1(ZN, A1, A2);
endmodule

module OR2_X1(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  or U$1(ZN, A1, A2);
endmodule

module OAI222_X4(A1, A2, B1, B2, C1, C2, ZN);
input  A1, A2, B1, B2, C1, C2;
output ZN;
wire  A1, A2, B1, B2, C1, C2, ZN, n$1, n$2, n$3;
  nand U$1(ZN, n$1, n$2, n$3);
  or U$2(n$1, A1, A2);
  or U$3(n$2, B1, B2);
  or U$4(n$3, C1, C2);
endmodule

module OAI222_X2(A1, A2, B1, B2, C1, C2, ZN);
input  A1, A2, B1, B2, C1, C2;
output ZN;
wire  A1, A2, B1, B2, C1, C2, ZN, n$1, n$2, n$3;
  nand U$1(ZN, n$1, n$2, n$3);
  or U$2(n$1, A1, A2);
  or U$3(n$2, B1, B2);
  or U$4(n$3, C1, C2);
endmodule

module OAI222_X1(A1, A2, B1, B2, C1, C2, ZN);
input  A1, A2, B1, B2, C1, C2;
output ZN;
wire  A1, A2, B1, B2, C1, C2, ZN, n$1, n$2, n$3;
  nand U$1(ZN, n$1, n$2, n$3);
  or U$2(n$1, A1, A2);
  or U$3(n$2, B1, B2);
  or U$4(n$3, C1, C2);
endmodule

module OAI221_X4(A, B1, B2, C1, C2, ZN);
input  A, B1, B2, C1, C2;
output ZN;
wire  A, B1, B2, C1, C2, ZN, n$1, n$2;
  nand U$1(ZN, n$1, A, n$2);
  or U$2(n$1, C1, C2);
  or U$3(n$2, B1, B2);
endmodule

module OAI221_X2(A, B1, B2, C1, C2, ZN);
input  A, B1, B2, C1, C2;
output ZN;
wire  A, B1, B2, C1, C2, ZN, n$1, n$2;
  nand U$1(ZN, n$1, A, n$2);
  or U$2(n$1, C1, C2);
  or U$3(n$2, B1, B2);
endmodule

module OAI221_X1(A, B1, B2, C1, C2, ZN);
input  A, B1, B2, C1, C2;
output ZN;
wire  A, B1, B2, C1, C2, ZN, n$1, n$2;
  nand U$1(ZN, n$1, A, n$2);
  or U$2(n$1, C1, C2);
  or U$3(n$2, B1, B2);
endmodule

module OAI211_X4(A, B, C1, C2, ZN);
input  A, B, C1, C2;
output ZN;
wire  A, B, C1, C2, ZN, n$1;
  nand U$1(ZN, n$1, A, B);
  or U$2(n$1, C1, C2);
endmodule

module OAI211_X2(A, B, C1, C2, ZN);
input  A, B, C1, C2;
output ZN;
wire  A, B, C1, C2, ZN, n$1;
  nand U$1(ZN, n$1, A, B);
  or U$2(n$1, C1, C2);
endmodule

module OAI211_X1(A, B, C1, C2, ZN);
input  A, B, C1, C2;
output ZN;
wire  A, B, C1, C2, ZN, n$1;
  nand U$1(ZN, n$1, A, B);
  or U$2(n$1, C1, C2);
endmodule

module OAI33_X1(A1, A2, A3, B1, B2, B3, ZN);
input  A1, A2, A3, B1, B2, B3;
output ZN;
wire  A1, A2, A3, B1, B2, B3, ZN, n$1, n$2;
  nand U$1(ZN, n$1, n$2);
  or U$2(n$1, A1, A2, A3);
  or U$3(n$2, B1, B2, B3);
endmodule

module OAI22_X4(A1, A2, B1, B2, ZN);
input  A1, A2, B1, B2;
output ZN;
wire  A1, A2, B1, B2, ZN, n$1, n$2;
  nand U$1(ZN, n$1, n$2);
  or U$2(n$1, A1, A2);
  or U$3(n$2, B1, B2);
endmodule

module OAI22_X2(A1, A2, B1, B2, ZN);
input  A1, A2, B1, B2;
output ZN;
wire  A1, A2, B1, B2, ZN, n$1, n$2;
  nand U$1(ZN, n$1, n$2);
  or U$2(n$1, A1, A2);
  or U$3(n$2, B1, B2);
endmodule

module OAI22_X1(A1, A2, B1, B2, ZN);
input  A1, A2, B1, B2;
output ZN;
wire  A1, A2, B1, B2, ZN, n$1, n$2;
  nand U$1(ZN, n$1, n$2);
  or U$2(n$1, A1, A2);
  or U$3(n$2, B1, B2);
endmodule

module OAI21_X4(A, B1, B2, ZN);
input  A, B1, B2;
output ZN;
wire  A, B1, B2, ZN, n$1;
  nand U$1(ZN, A, n$1);
  or U$2(n$1, B1, B2);
endmodule

module OAI21_X2(A, B1, B2, ZN);
input  A, B1, B2;
output ZN;
wire  A, B1, B2, ZN, n$1;
  nand U$1(ZN, A, n$1);
  or U$2(n$1, B1, B2);
endmodule

module OAI21_X1(A, B1, B2, ZN);
input  A, B1, B2;
output ZN;
wire  A, B1, B2, ZN, n$1;
  nand U$1(ZN, A, n$1);
  or U$2(n$1, B1, B2);
endmodule

module NOR4_X4(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  nor U$1(ZN, A1, A2, A3, A4);
endmodule

module NOR4_X2(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  nor U$1(ZN, A1, A2, A3, A4);
endmodule

module NOR4_X1(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  nor U$1(ZN, A1, A2, A3, A4);
endmodule

module NOR3_X4(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  nor U$1(ZN, A1, A2, A3);
endmodule

module NOR3_X2(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  nor U$1(ZN, A1, A2, A3);
endmodule

module NOR3_X1(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  nor U$1(ZN, A1, A2, A3);
endmodule

module NOR2_X4(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  nor U$1(ZN, A1, A2);
endmodule

module NOR2_X2(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  nor U$1(ZN, A1, A2);
endmodule

module NOR2_X1(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  nor U$1(ZN, A1, A2);
endmodule

module NAND4_X4(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  nand U$1(ZN, A1, A2, A3, A4);
endmodule

module NAND4_X2(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  nand U$1(ZN, A1, A2, A3, A4);
endmodule

module NAND4_X1(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  nand U$1(ZN, A1, A2, A3, A4);
endmodule

module NAND3_X4(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  nand U$1(ZN, A1, A2, A3);
endmodule

module NAND3_X2(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  nand U$1(ZN, A1, A2, A3);
endmodule

module NAND3_X1(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  nand U$1(ZN, A1, A2, A3);
endmodule

module NAND2_X4(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  nand U$1(ZN, A1, A2);
endmodule

module NAND2_X2(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  nand U$1(ZN, A1, A2);
endmodule

module NAND2_X1(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  nand U$1(ZN, A1, A2);
endmodule

module MUX2_X2(A, B, S, Z);
input  A, B, S;
output Z;
wire  A, B, S, Z, n$1, n$2, n$3;
  or U$1(Z, n$1, n$2);
  and U$2(n$1, S, B);
  and U$3(n$2, A, n$3);
  not U$4(n$3, S);
endmodule

module MUX2_X1(A, B, S, Z);
input  A, B, S;
output Z;
wire  A, B, S, Z, n$1, n$2, n$3;
  or U$1(Z, n$1, n$2);
  and U$2(n$1, S, B);
  and U$3(n$2, A, n$3);
  not U$4(n$3, S);
endmodule

module LOGIC1_X1(Z);
// dont_use
output Z;
wire  Z;
  (* tie1 *) assign Z = 1'b1;
endmodule

module LOGIC0_X1(Z);
// dont_use
output Z;
wire  Z;
  (* tie0 *) assign Z = 1'b0;
endmodule

module INV_X32(A, ZN);
input  A;
output ZN;
wire  A, ZN;
  not U$1(ZN, A);
endmodule

module INV_X16(A, ZN);
input  A;
output ZN;
wire  A, ZN;
  not U$1(ZN, A);
endmodule

module INV_X8(A, ZN);
input  A;
output ZN;
wire  A, ZN;
  not U$1(ZN, A);
endmodule

module INV_X4(A, ZN);
input  A;
output ZN;
wire  A, ZN;
  not U$1(ZN, A);
endmodule

module INV_X2(A, ZN);
input  A;
output ZN;
wire  A, ZN;
  not U$1(ZN, A);
endmodule

module INV_X1(A, ZN);
input  A;
output ZN;
wire  A, ZN;
  not U$1(ZN, A);
endmodule

module HA_X1(A, B, CO, S);
input  A, B;
output CO, S;
wire  A, B, CO, S;
  and U$1(CO, A, B);
  xor U$2(S, A, B);
endmodule

module FILLCELL_X32;
// dont_use
  // module is bboxed.
endmodule

module FILLCELL_X16;
// dont_use
  // module is bboxed.
endmodule

module FILLCELL_X8;
// dont_use
  // module is bboxed.
endmodule

module FILLCELL_X4;
// dont_use
  // module is bboxed.
endmodule

module FILLCELL_X2;
// dont_use
  // module is bboxed.
endmodule

module FILLCELL_X1;
// dont_use
  // module is bboxed.
endmodule

module FA_X1(A, B, CI, CO, S);
input  A, B, CI;
output CO, S;
wire  A, B, CI, CO, S, n$1, n$2, n$3;
  or U$1(CO, n$1, n$2);
  and U$2(n$1, A, B);
  and U$3(n$2, CI, n$3);
  or U$4(n$3, A, B);
  xor U$5(S, CI, A, B);
endmodule

module DLL_X2(D, GN, Q);
input  D, GN;
output Q;
wire  IQN, D, GN, Q, n$1;
  _HDLAT_verplex U$1(.Q(Q), .QN(IQN), .S(1'b0), .R(1'b0), .CK(n$1), .D(D));
  not U$3(n$1, GN);
endmodule

module DLL_X1(D, GN, Q);
input  D, GN;
output Q;
wire  IQN, D, GN, Q, n$1;
  _HDLAT_verplex U$1(.Q(Q), .QN(IQN), .S(1'b0), .R(1'b0), .CK(n$1), .D(D));
  not U$3(n$1, GN);
endmodule

module DLH_X2(D, G, Q);
input  D, G;
output Q;
wire  IQN, D, G, Q;
  _HDLAT_verplex U$1(.Q(Q), .QN(IQN), .S(1'b0), .R(1'b0), .CK(G), .D(D));
endmodule

module DLH_X1(D, G, Q);
input  D, G;
output Q;
wire  IQN, D, G, Q;
  _HDLAT_verplex U$1(.Q(Q), .QN(IQN), .S(1'b0), .R(1'b0), .CK(G), .D(D));
endmodule

module DFF_X2(D, CK, Q, QN);
input  D, CK;
output Q, QN;
wire  D, CK, Q, QN;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFF_X1(D, CK, Q, QN);
input  D, CK;
output Q, QN;
wire  D, CK, Q, QN;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFS_X2(D, SN, CK, Q, QN);
input  D, SN, CK;
output Q, QN;
wire  D, SN, CK, Q, QN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(D));
  not U$4(n$1, SN);
endmodule

module DFFS_X1(D, SN, CK, Q, QN);
input  D, SN, CK;
output Q, QN;
wire  D, SN, CK, Q, QN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(D));
  not U$4(n$1, SN);
endmodule

module DFFR_X2(D, RN, CK, Q, QN);
input  D, RN, CK;
output Q, QN;
wire  D, RN, CK, Q, QN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(D));
  not U$4(n$1, RN);
endmodule

module DFFR_X1(D, RN, CK, Q, QN);
input  D, RN, CK;
output Q, QN;
wire  D, RN, CK, Q, QN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(D));
  not U$4(n$1, RN);
endmodule

module DFFRS_X2(D, RN, SN, CK, Q, QN);
input  D, RN, SN, CK;
output Q, QN;
wire  D, RN, SN, CK, Q, QN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(n$4), .S(n$1), .R(n$2), .CK(CK), .D(D));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, n$1);
  and U$7(QN, n$3, n$4);
endmodule

module DFFRS_X1(D, RN, SN, CK, Q, QN);
input  D, RN, SN, CK;
output Q, QN;
wire  D, RN, SN, CK, Q, QN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(n$4), .S(n$1), .R(n$2), .CK(CK), .D(D));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, n$1);
  and U$7(QN, n$3, n$4);
endmodule

module CLKGATE_X8(CK, E, GCK);
input  CK, E;
output GCK;
wire  \sttb_$U1/udp1/N$1 , IQ, CK, E, GCK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(IQ), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(GCK, CK, IQ);
endmodule

module CLKGATE_X4(CK, E, GCK);
input  CK, E;
output GCK;
wire  \sttb_$U1/udp1/N$1 , IQ, CK, E, GCK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(IQ), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(GCK, CK, IQ);
endmodule

module CLKGATE_X2(CK, E, GCK);
input  CK, E;
output GCK;
wire  \sttb_$U1/udp1/N$1 , IQ, CK, E, GCK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(IQ), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(GCK, CK, IQ);
endmodule

module CLKGATE_X1(CK, E, GCK);
input  CK, E;
output GCK;
wire  \sttb_$U1/udp1/N$1 , IQ, CK, E, GCK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(IQ), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(GCK, CK, IQ);
endmodule

module CLKGATETST_X8(CK, E, SE, GCK);
input  CK, E, SE;
output GCK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , IQ, CK, E, SE, GCK;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(IQ), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(GCK, IQ, CK);
endmodule

module CLKGATETST_X4(CK, E, SE, GCK);
input  CK, E, SE;
output GCK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , IQ, CK, E, SE, GCK;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(IQ), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(GCK, IQ, CK);
endmodule

module CLKGATETST_X2(CK, E, SE, GCK);
input  CK, E, SE;
output GCK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , IQ, CK, E, SE, GCK;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(IQ), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(GCK, IQ, CK);
endmodule

module CLKGATETST_X1(CK, E, SE, GCK);
input  CK, E, SE;
output GCK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , IQ, CK, E, SE, GCK;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(IQ), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(GCK, IQ, CK);
endmodule

module CLKBUF_X3(A, Z);
input  A;
output Z;
wire  A, Z;
  buf U$1(Z, A);
endmodule

module CLKBUF_X2(A, Z);
input  A;
output Z;
wire  A, Z;
  buf U$1(Z, A);
endmodule

module CLKBUF_X1(A, Z);
input  A;
output Z;
wire  A, Z;
  buf U$1(Z, A);
endmodule

module BUF_X32(A, Z);
input  A;
output Z;
wire  A, Z;
  buf U$1(Z, A);
endmodule

module BUF_X16(A, Z);
input  A;
output Z;
wire  A, Z;
  buf U$1(Z, A);
endmodule

module BUF_X8(A, Z);
input  A;
output Z;
wire  A, Z;
  buf U$1(Z, A);
endmodule

module BUF_X4(A, Z);
input  A;
output Z;
wire  A, Z;
  buf U$1(Z, A);
endmodule

module BUF_X2(A, Z);
input  A;
output Z;
wire  A, Z;
  buf U$1(Z, A);
endmodule

module BUF_X1(A, Z);
input  A;
output Z;
wire  A, Z;
  buf U$1(Z, A);
endmodule

module AOI222_X4(A1, A2, B1, B2, C1, C2, ZN);
input  A1, A2, B1, B2, C1, C2;
output ZN;
wire  A1, A2, B1, B2, C1, C2, ZN, n$1, n$2, n$3;
  nor U$1(ZN, n$1, n$2, n$3);
  and U$2(n$1, A1, A2);
  and U$3(n$2, B1, B2);
  and U$4(n$3, C1, C2);
endmodule

module AOI222_X2(A1, A2, B1, B2, C1, C2, ZN);
input  A1, A2, B1, B2, C1, C2;
output ZN;
wire  A1, A2, B1, B2, C1, C2, ZN, n$1, n$2, n$3;
  nor U$1(ZN, n$1, n$2, n$3);
  and U$2(n$1, A1, A2);
  and U$3(n$2, B1, B2);
  and U$4(n$3, C1, C2);
endmodule

module AOI222_X1(A1, A2, B1, B2, C1, C2, ZN);
input  A1, A2, B1, B2, C1, C2;
output ZN;
wire  A1, A2, B1, B2, C1, C2, ZN, n$1, n$2, n$3;
  nor U$1(ZN, n$1, n$2, n$3);
  and U$2(n$1, A1, A2);
  and U$3(n$2, B1, B2);
  and U$4(n$3, C1, C2);
endmodule

module AOI221_X4(A, B1, B2, C1, C2, ZN);
input  A, B1, B2, C1, C2;
output ZN;
wire  A, B1, B2, C1, C2, ZN, n$1, n$2;
  nor U$1(ZN, n$1, A, n$2);
  and U$2(n$1, C1, C2);
  and U$3(n$2, B1, B2);
endmodule

module AOI221_X2(A, B1, B2, C1, C2, ZN);
input  A, B1, B2, C1, C2;
output ZN;
wire  A, B1, B2, C1, C2, ZN, n$1, n$2;
  nor U$1(ZN, n$1, A, n$2);
  and U$2(n$1, C1, C2);
  and U$3(n$2, B1, B2);
endmodule

module AOI221_X1(A, B1, B2, C1, C2, ZN);
input  A, B1, B2, C1, C2;
output ZN;
wire  A, B1, B2, C1, C2, ZN, n$1, n$2;
  nor U$1(ZN, n$1, A, n$2);
  and U$2(n$1, C1, C2);
  and U$3(n$2, B1, B2);
endmodule

module AOI211_X4(A, B, C1, C2, ZN);
input  A, B, C1, C2;
output ZN;
wire  A, B, C1, C2, ZN, n$1;
  nor U$1(ZN, n$1, B, A);
  and U$2(n$1, C1, C2);
endmodule

module AOI211_X2(A, B, C1, C2, ZN);
input  A, B, C1, C2;
output ZN;
wire  A, B, C1, C2, ZN, n$1;
  nor U$1(ZN, n$1, B, A);
  and U$2(n$1, C1, C2);
endmodule

module AOI211_X1(A, B, C1, C2, ZN);
input  A, B, C1, C2;
output ZN;
wire  A, B, C1, C2, ZN, n$1;
  nor U$1(ZN, n$1, B, A);
  and U$2(n$1, C1, C2);
endmodule

module AOI22_X4(A1, A2, B1, B2, ZN);
input  A1, A2, B1, B2;
output ZN;
wire  A1, A2, B1, B2, ZN, n$1, n$2;
  nor U$1(ZN, n$1, n$2);
  and U$2(n$1, A1, A2);
  and U$3(n$2, B1, B2);
endmodule

module AOI22_X2(A1, A2, B1, B2, ZN);
input  A1, A2, B1, B2;
output ZN;
wire  A1, A2, B1, B2, ZN, n$1, n$2;
  nor U$1(ZN, n$1, n$2);
  and U$2(n$1, A1, A2);
  and U$3(n$2, B1, B2);
endmodule

module AOI22_X1(A1, A2, B1, B2, ZN);
input  A1, A2, B1, B2;
output ZN;
wire  A1, A2, B1, B2, ZN, n$1, n$2;
  nor U$1(ZN, n$1, n$2);
  and U$2(n$1, A1, A2);
  and U$3(n$2, B1, B2);
endmodule

module AOI21_X4(A, B1, B2, ZN);
input  A, B1, B2;
output ZN;
wire  A, B1, B2, ZN, n$1;
  nor U$1(ZN, A, n$1);
  and U$2(n$1, B1, B2);
endmodule

module AOI21_X2(A, B1, B2, ZN);
input  A, B1, B2;
output ZN;
wire  A, B1, B2, ZN, n$1;
  nor U$1(ZN, A, n$1);
  and U$2(n$1, B1, B2);
endmodule

module AOI21_X1(A, B1, B2, ZN);
input  A, B1, B2;
output ZN;
wire  A, B1, B2, ZN, n$1;
  nor U$1(ZN, A, n$1);
  and U$2(n$1, B1, B2);
endmodule

module ANTENNA_X1(A);
// dont_use
input  A;
  // module is bboxed.
endmodule

module AND4_X4(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  and U$1(ZN, A1, A2, A3, A4);
endmodule

module AND4_X2(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  and U$1(ZN, A1, A2, A3, A4);
endmodule

module AND4_X1(A1, A2, A3, A4, ZN);
input  A1, A2, A3, A4;
output ZN;
wire  A1, A2, A3, A4, ZN;
  and U$1(ZN, A1, A2, A3, A4);
endmodule

module AND3_X4(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  and U$1(ZN, A1, A2, A3);
endmodule

module AND3_X2(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  and U$1(ZN, A1, A2, A3);
endmodule

module AND3_X1(A1, A2, A3, ZN);
input  A1, A2, A3;
output ZN;
wire  A1, A2, A3, ZN;
  and U$1(ZN, A1, A2, A3);
endmodule

module AND2_X4(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  and U$1(ZN, A1, A2);
endmodule

module AND2_X2(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  and U$1(ZN, A1, A2);
endmodule

module AND2_X1(A1, A2, ZN);
input  A1, A2;
output ZN;
wire  A1, A2, ZN;
  and U$1(ZN, A1, A2);
endmodule

module _HDFF_verplex(Q, QN, S, R, CK, D);
// verplex DFF
output  Q, QN;
input   S, R, CK, D;
wire   N1;
  DFF_UDP  i0(N1, S, R, CK, D);
  buf  (Q, N1);
  not  (QN, N1);
endmodule

primitive DFF_UDP(Q, S, R, CK, D);
output Q;
input  S, R, CK, D;
reg    Q;
  table
    1  0   ?    ?  :  ?  :  1; // Asserting preset
    *  0   ?    ?  :  1  :  1; // Changing preset
    ?  1   ?    ?  :  ?  :  0; // Asserting reset (dominates preset)
    0  *   ?    ?  :  0  :  0; // Changing reset
    0  ?   (01) 0  :  ?  :  0; // rising clock
    ?  0   (01) 1  :  ?  :  1; // rising clock 
    0  ?   p    0  :  0  :  0; // potential rising clock
    ?  0   p    1  :  1  :  1; // potential rising clock
    0  0   n    ?  :  ?  :  -; // Clock falling register output does not change
    0  0   ?    *  :  ?  :  -; // Changing Data
  endtable
endprimitive

module _HDLAT_verplex(Q, QN, S, R, CK, D);
// verplex DLAT
output  Q, QN;
input   S, R, CK, D;
wire   N1;
  DLAT_UDP i0(N1, S, R, CK, D);
  buf  (Q, N1);
  not  (QN, N1);
endmodule

primitive DLAT_UDP(Q, S, R, CK, D);
output Q;
input  S, R, CK, D;
reg    Q;
  table
    1  0   ?    ?  :  ?  :  1; // Asserting preset
    ?  1   ?    ?  :  ?  :  0; // Asserting reset (dominates preset)
    0  0   1    0  :  ?  :  0; // Data clocked
    0  ?   *    0  :  0  :  0; // Clock transitions
    0  *   0    ?  :  0  :  0; // Changing reset
    0  *   ?    0  :  0  :  0;
    0  0   1    1  :  ?  :  1; // Data clocked
    *  0   0    ?  :  1  :  1; // Changing preset
    *  0   ?    1  :  1  :  1;
    ?  0   *    1  :  1  :  1; // Clock transitions
    0  0   0    ?  :  ?  :  -; // Hold
  endtable
endprimitive

