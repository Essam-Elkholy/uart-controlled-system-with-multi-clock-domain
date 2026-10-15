/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Oct 11 01:56:52 2026
/////////////////////////////////////////////////////////////


module DF_SYNC_WIDTH1_NUM_STAGES2_0 ( CLK, RST, DIN, DOUT );
  input [0:0] DIN;
  output [0:0] DOUT;
  input CLK, RST;
  wire   sync_ff_0__0_;

  DFFRQX2M sync_ff_reg_1__0_ ( .D(sync_ff_0__0_), .CK(CLK), .RN(RST), .Q(
        DOUT[0]) );
  DFFRQX2M sync_ff_reg_0__0_ ( .D(DIN[0]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__0_) );
endmodule


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   n2;

  DF_SYNC_WIDTH1_NUM_STAGES2_0 U_SYNC ( .CLK(CLK), .RST(RST), .DIN(1'b1), 
        .DOUT(n2) );
  BUFX2M U2 ( .A(n2), .Y(SYNC_RST) );
endmodule


module DF_SYNC_WIDTH1_NUM_STAGES2_2 ( CLK, RST, DIN, DOUT );
  input [0:0] DIN;
  output [0:0] DOUT;
  input CLK, RST;
  wire   sync_ff_0__0_;

  DFFRQX2M sync_ff_reg_1__0_ ( .D(sync_ff_0__0_), .CK(CLK), .RN(RST), .Q(
        DOUT[0]) );
  DFFRQX2M sync_ff_reg_0__0_ ( .D(DIN[0]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__0_) );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   n2;

  DF_SYNC_WIDTH1_NUM_STAGES2_2 U_SYNC ( .CLK(CLK), .RST(RST), .DIN(1'b1), 
        .DOUT(n2) );
  BUFX2M U2 ( .A(n2), .Y(SYNC_RST) );
endmodule


module SYS_CTRL_DATA_WIDTH8_ADDR_WIDTH5_ALU_WIDTH16 ( CLK, RST, ALU_OUT, 
        OUT_Valid, ALU_FUN, EN, CLK_EN, RdData, RdData_Valid, Address, WrEn, 
        RdEn, WrData, RX_P_DATA, RX_D_VLD, FIFO_FULL, TX_P_DATA, TX_D_VLD, 
        clk_div_en );
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  input [7:0] RdData;
  output [4:0] Address;
  output [7:0] WrData;
  input [7:0] RX_P_DATA;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, RdData_Valid, RX_D_VLD, FIFO_FULL;
  output EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en;
  wire   N130, n4, n13, n14, n31, n36, n39, n45, n48, n49, n52, n53, n54, n55,
         n56, n57, n59, n61, n62, n63, n64, n65, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n78, n79, n82, n83, n84, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n12, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n32,
         n33, n34, n35, n37, n38, n40, n41, n42, n43, n44, n46, n47, n50, n51,
         n58, n60, n66, n67, n77, n80, n81, n85, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139;
  wire   [3:0] state;
  wire   [4:0] addr_reg;
  wire   [15:0] alu_res;
  wire   [7:0] rd_reg;

  DFFRQX2M alu_res_reg_15_ ( .D(n110), .CK(CLK), .RN(n12), .Q(alu_res[15]) );
  DFFRQX2M alu_res_reg_14_ ( .D(n109), .CK(CLK), .RN(n12), .Q(alu_res[14]) );
  DFFRQX2M alu_res_reg_13_ ( .D(n108), .CK(CLK), .RN(n12), .Q(alu_res[13]) );
  DFFRQX2M alu_res_reg_12_ ( .D(n107), .CK(CLK), .RN(n12), .Q(alu_res[12]) );
  DFFRQX2M alu_res_reg_11_ ( .D(n106), .CK(CLK), .RN(n12), .Q(alu_res[11]) );
  DFFRQX2M alu_res_reg_10_ ( .D(n105), .CK(CLK), .RN(n12), .Q(alu_res[10]) );
  DFFRQX2M alu_res_reg_9_ ( .D(n104), .CK(CLK), .RN(n12), .Q(alu_res[9]) );
  DFFRQX2M alu_res_reg_8_ ( .D(n103), .CK(CLK), .RN(n12), .Q(alu_res[8]) );
  DFFRQX2M alu_res_reg_7_ ( .D(n102), .CK(CLK), .RN(n12), .Q(alu_res[7]) );
  DFFRQX2M alu_res_reg_6_ ( .D(n101), .CK(CLK), .RN(n12), .Q(alu_res[6]) );
  DFFRQX2M alu_res_reg_5_ ( .D(n100), .CK(CLK), .RN(n12), .Q(alu_res[5]) );
  DFFRQX2M alu_res_reg_4_ ( .D(n99), .CK(CLK), .RN(n12), .Q(alu_res[4]) );
  DFFRQX2M alu_res_reg_3_ ( .D(n98), .CK(CLK), .RN(n12), .Q(alu_res[3]) );
  DFFRQX2M alu_res_reg_2_ ( .D(n97), .CK(CLK), .RN(n15), .Q(alu_res[2]) );
  DFFRQX2M alu_res_reg_1_ ( .D(n96), .CK(CLK), .RN(n15), .Q(alu_res[1]) );
  DFFRQX2M alu_res_reg_0_ ( .D(n95), .CK(CLK), .RN(n15), .Q(alu_res[0]) );
  DFFRQX2M rd_reg_reg_7_ ( .D(n94), .CK(CLK), .RN(n15), .Q(rd_reg[7]) );
  DFFRQX2M rd_reg_reg_6_ ( .D(n93), .CK(CLK), .RN(n15), .Q(rd_reg[6]) );
  DFFRQX2M rd_reg_reg_5_ ( .D(n92), .CK(CLK), .RN(n15), .Q(rd_reg[5]) );
  DFFRQX2M rd_reg_reg_4_ ( .D(n91), .CK(CLK), .RN(n15), .Q(rd_reg[4]) );
  DFFRQX2M rd_reg_reg_3_ ( .D(n90), .CK(CLK), .RN(n15), .Q(rd_reg[3]) );
  DFFRQX2M rd_reg_reg_2_ ( .D(n89), .CK(CLK), .RN(n15), .Q(rd_reg[2]) );
  DFFRQX2M rd_reg_reg_1_ ( .D(n88), .CK(CLK), .RN(n15), .Q(rd_reg[1]) );
  DFFRQX2M rd_reg_reg_0_ ( .D(n87), .CK(CLK), .RN(n15), .Q(rd_reg[0]) );
  DFFRQX2M fun_reg_reg_1_ ( .D(n112), .CK(CLK), .RN(n15), .Q(ALU_FUN[1]) );
  DFFRQX2M fun_reg_reg_0_ ( .D(n111), .CK(CLK), .RN(n15), .Q(ALU_FUN[0]) );
  DFFRQX2M fun_reg_reg_2_ ( .D(n113), .CK(CLK), .RN(RST), .Q(ALU_FUN[2]) );
  DFFRQX2M fun_reg_reg_3_ ( .D(n114), .CK(CLK), .RN(RST), .Q(ALU_FUN[3]) );
  DFFRQX2M addr_reg_reg_4_ ( .D(n119), .CK(CLK), .RN(RST), .Q(addr_reg[4]) );
  DFFRQX2M addr_reg_reg_3_ ( .D(n118), .CK(CLK), .RN(RST), .Q(addr_reg[3]) );
  DFFRQX2M addr_reg_reg_2_ ( .D(n117), .CK(CLK), .RN(RST), .Q(addr_reg[2]) );
  DFFRQX2M addr_reg_reg_1_ ( .D(n116), .CK(CLK), .RN(RST), .Q(addr_reg[1]) );
  DFFRQX2M addr_reg_reg_0_ ( .D(n115), .CK(CLK), .RN(RST), .Q(addr_reg[0]) );
  DFFRQX2M state_reg_3_ ( .D(n121), .CK(CLK), .RN(RST), .Q(state[3]) );
  DFFRQX2M state_reg_2_ ( .D(n120), .CK(CLK), .RN(RST), .Q(state[2]) );
  DFFRQX2M state_reg_0_ ( .D(n123), .CK(CLK), .RN(RST), .Q(state[0]) );
  DFFRQX2M state_reg_1_ ( .D(n122), .CK(CLK), .RN(RST), .Q(state[1]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  OAI221X1M U5 ( .A0(n86), .A1(n51), .B0(n29), .B1(n34), .C0(n62), .Y(
        Address[0]) );
  OAI22X1M U6 ( .A0(n27), .A1(n34), .B0(n86), .B1(n47), .Y(Address[2]) );
  NOR3X2M U7 ( .A(n42), .B(state[1]), .C(n35), .Y(EN) );
  INVX2M U8 ( .A(n16), .Y(n15) );
  BUFX2M U9 ( .A(n17), .Y(n16) );
  INVX2M U10 ( .A(n17), .Y(n12) );
  INVX2M U11 ( .A(n53), .Y(n34) );
  INVX2M U12 ( .A(n54), .Y(n32) );
  INVX2M U13 ( .A(RST), .Y(n17) );
  AOI211X2M U14 ( .A0(n41), .A1(n37), .B0(n18), .C0(n43), .Y(n86) );
  OAI22X1M U15 ( .A0(n26), .A1(n34), .B0(n86), .B1(n46), .Y(Address[3]) );
  OAI22X1M U16 ( .A0(n28), .A1(n34), .B0(n86), .B1(n50), .Y(Address[1]) );
  NOR3X2M U17 ( .A(n43), .B(n18), .C(n35), .Y(n53) );
  OAI22X1M U18 ( .A0(n25), .A1(n34), .B0(n86), .B1(n44), .Y(Address[4]) );
  INVX2M U19 ( .A(n45), .Y(n35) );
  AOI32X1M U20 ( .A0(n59), .A1(n25), .A2(n29), .B0(n37), .B1(n68), .Y(n52) );
  NOR3X2M U21 ( .A(n41), .B(n18), .C(n43), .Y(n68) );
  NOR3X2M U22 ( .A(n42), .B(n43), .C(n35), .Y(n54) );
  OAI221X1M U23 ( .A0(n48), .A1(n49), .B0(n24), .B1(n41), .C0(n52), .Y(n120)
         );
  AOI211X2M U24 ( .A0(N130), .A1(n53), .B0(n13), .C0(n54), .Y(n48) );
  INVX2M U25 ( .A(n49), .Y(n24) );
  OAI211X2M U26 ( .A0(n24), .A1(n37), .B0(n71), .C0(n72), .Y(n123) );
  OAI31X1M U27 ( .A0(n76), .A1(n13), .A2(n20), .B0(n24), .Y(n71) );
  AOI31X2M U28 ( .A0(n29), .A1(n25), .A2(n73), .B0(n65), .Y(n72) );
  INVX2M U29 ( .A(n18), .Y(n42) );
  AND3X2M U30 ( .A(n83), .B(n84), .C(n32), .Y(n79) );
  INVX2M U31 ( .A(n82), .Y(n40) );
  AO22X1M U32 ( .A0(n37), .A1(n68), .B0(n18), .B1(n36), .Y(n76) );
  OAI222X1M U33 ( .A0(n139), .A1(n83), .B0(n131), .B1(n32), .C0(n85), .C1(n84), 
        .Y(TX_P_DATA[0]) );
  OAI222X1M U34 ( .A0(n138), .A1(n83), .B0(n130), .B1(n32), .C0(n81), .C1(n84), 
        .Y(TX_P_DATA[1]) );
  OAI222X1M U35 ( .A0(n137), .A1(n83), .B0(n129), .B1(n32), .C0(n80), .C1(n84), 
        .Y(TX_P_DATA[2]) );
  OAI222X1M U36 ( .A0(n136), .A1(n83), .B0(n128), .B1(n32), .C0(n77), .C1(n84), 
        .Y(TX_P_DATA[3]) );
  OAI222X1M U37 ( .A0(n135), .A1(n83), .B0(n127), .B1(n32), .C0(n67), .C1(n84), 
        .Y(TX_P_DATA[4]) );
  OAI222X1M U38 ( .A0(n134), .A1(n83), .B0(n126), .B1(n32), .C0(n66), .C1(n84), 
        .Y(TX_P_DATA[5]) );
  OAI222X1M U39 ( .A0(n133), .A1(n83), .B0(n125), .B1(n32), .C0(n60), .C1(n84), 
        .Y(TX_P_DATA[6]) );
  OAI222X1M U40 ( .A0(n132), .A1(n83), .B0(n124), .B1(n32), .C0(n58), .C1(n84), 
        .Y(TX_P_DATA[7]) );
  NAND3X2M U41 ( .A(n82), .B(n37), .C(n18), .Y(n84) );
  INVX2M U42 ( .A(EN), .Y(n33) );
  OAI22X1M U43 ( .A0(n23), .A1(n44), .B0(n39), .B1(n25), .Y(n119) );
  OAI22X1M U44 ( .A0(n23), .A1(n51), .B0(n29), .B1(n39), .Y(n115) );
  OAI22X1M U45 ( .A0(n23), .A1(n50), .B0(n28), .B1(n39), .Y(n116) );
  OAI22X1M U46 ( .A0(n23), .A1(n47), .B0(n27), .B1(n39), .Y(n117) );
  OAI22X1M U47 ( .A0(n23), .A1(n46), .B0(n26), .B1(n39), .Y(n118) );
  INVX2M U48 ( .A(n39), .Y(n23) );
  BUFX2M U49 ( .A(n14), .Y(n20) );
  BUFX2M U50 ( .A(n14), .Y(n19) );
  NAND2X2M U51 ( .A(n33), .B(n61), .Y(CLK_EN) );
  INVX2M U52 ( .A(state[1]), .Y(n43) );
  INVX2M U53 ( .A(state[0]), .Y(n37) );
  NOR2X2M U54 ( .A(n37), .B(state[2]), .Y(n45) );
  BUFX2M U55 ( .A(state[3]), .Y(n18) );
  INVX2M U56 ( .A(state[2]), .Y(n41) );
  OAI222X1M U57 ( .A0(RdData_Valid), .A1(n38), .B0(RX_D_VLD), .B1(n78), .C0(
        n79), .C1(n30), .Y(n49) );
  INVX2M U58 ( .A(FIFO_FULL), .Y(n30) );
  INVX2M U59 ( .A(n13), .Y(n38) );
  AOI21X2M U60 ( .A0(n40), .A1(n42), .B0(n76), .Y(n78) );
  NOR4BX1M U61 ( .AN(RX_D_VLD), .B(n18), .C(n45), .D(n43), .Y(WrEn) );
  NOR3X2M U62 ( .A(state[1]), .B(state[2]), .C(state[0]), .Y(n36) );
  NOR3X2M U63 ( .A(state[0]), .B(n18), .C(n40), .Y(n13) );
  NOR2X2M U64 ( .A(n41), .B(state[1]), .Y(n82) );
  OAI211X2M U65 ( .A0(n24), .A1(n43), .B0(n52), .C0(n63), .Y(n122) );
  AOI21X2M U66 ( .A0(n24), .A1(n64), .B0(n65), .Y(n63) );
  OAI21X2M U67 ( .A0(state[1]), .A1(n35), .B0(n61), .Y(n64) );
  NOR2X2M U68 ( .A(FIFO_FULL), .B(n79), .Y(TX_D_VLD) );
  AND3X2M U69 ( .A(N130), .B(RX_D_VLD), .C(n53), .Y(RdEn) );
  NAND4BX1M U70 ( .AN(n55), .B(n56), .C(n57), .D(n33), .Y(n121) );
  OAI21X2M U71 ( .A0(n36), .A1(n49), .B0(n18), .Y(n56) );
  AOI31X2M U72 ( .A0(n32), .A1(n61), .A2(n62), .B0(n49), .Y(n55) );
  NAND3X2M U73 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .C(n59), .Y(n57) );
  NAND2X2M U74 ( .A(n68), .B(state[0]), .Y(n62) );
  AND3X2M U75 ( .A(n73), .B(RX_P_DATA[4]), .C(RX_P_DATA[0]), .Y(n65) );
  INVX2M U76 ( .A(RX_P_DATA[0]), .Y(n29) );
  INVX2M U77 ( .A(RX_P_DATA[2]), .Y(n27) );
  INVX2M U78 ( .A(RX_P_DATA[1]), .Y(n28) );
  INVX2M U79 ( .A(RX_P_DATA[4]), .Y(n25) );
  INVX2M U80 ( .A(RX_P_DATA[3]), .Y(n26) );
  AND4X2M U81 ( .A(RX_P_DATA[1]), .B(n36), .C(n74), .D(n75), .Y(n73) );
  NOR3X2M U82 ( .A(RX_P_DATA[2]), .B(n18), .C(RX_P_DATA[6]), .Y(n74) );
  AND4X2M U83 ( .A(RX_P_DATA[3]), .B(n24), .C(RX_P_DATA[7]), .D(RX_P_DATA[5]), 
        .Y(n75) );
  AND4X2M U84 ( .A(RX_P_DATA[2]), .B(n36), .C(n69), .D(n70), .Y(n59) );
  NOR3X2M U85 ( .A(RX_P_DATA[1]), .B(n18), .C(RX_P_DATA[5]), .Y(n69) );
  AND4X2M U86 ( .A(RX_P_DATA[3]), .B(n24), .C(RX_P_DATA[6]), .D(RX_P_DATA[7]), 
        .Y(n70) );
  INVX2M U87 ( .A(addr_reg[3]), .Y(n46) );
  INVX2M U88 ( .A(addr_reg[1]), .Y(n50) );
  INVX2M U89 ( .A(addr_reg[2]), .Y(n47) );
  INVX2M U90 ( .A(addr_reg[4]), .Y(n44) );
  INVX2M U91 ( .A(addr_reg[0]), .Y(n51) );
  NAND3X2M U92 ( .A(n82), .B(n42), .C(state[0]), .Y(n83) );
  NAND4X2M U93 ( .A(n45), .B(RX_D_VLD), .C(n43), .D(n42), .Y(n39) );
  NAND4X2M U94 ( .A(n18), .B(state[1]), .C(n37), .D(n41), .Y(n61) );
  NAND3X2M U95 ( .A(n36), .B(n18), .C(RX_D_VLD), .Y(n31) );
  AND2X2M U96 ( .A(RdData_Valid), .B(n13), .Y(n4) );
  NOR2BX2M U97 ( .AN(OUT_Valid), .B(n61), .Y(n14) );
  OAI2BB2X1M U98 ( .B0(n31), .B1(n29), .A0N(ALU_FUN[0]), .A1N(n31), .Y(n111)
         );
  OAI2BB2X1M U99 ( .B0(n31), .B1(n28), .A0N(ALU_FUN[1]), .A1N(n31), .Y(n112)
         );
  OAI2BB2X1M U100 ( .B0(n31), .B1(n27), .A0N(ALU_FUN[2]), .A1N(n31), .Y(n113)
         );
  OAI2BB2X1M U101 ( .B0(n31), .B1(n26), .A0N(ALU_FUN[3]), .A1N(n31), .Y(n114)
         );
  OAI2BB2X1M U102 ( .B0(n4), .B1(n139), .A0N(RdData[0]), .A1N(n4), .Y(n87) );
  OAI2BB2X1M U103 ( .B0(n4), .B1(n138), .A0N(RdData[1]), .A1N(n4), .Y(n88) );
  OAI2BB2X1M U104 ( .B0(n4), .B1(n137), .A0N(RdData[2]), .A1N(n4), .Y(n89) );
  OAI2BB2X1M U105 ( .B0(n4), .B1(n136), .A0N(RdData[3]), .A1N(n4), .Y(n90) );
  OAI2BB2X1M U106 ( .B0(n4), .B1(n135), .A0N(RdData[4]), .A1N(n4), .Y(n91) );
  OAI2BB2X1M U107 ( .B0(n4), .B1(n134), .A0N(RdData[5]), .A1N(n4), .Y(n92) );
  OAI2BB2X1M U108 ( .B0(n4), .B1(n133), .A0N(RdData[6]), .A1N(n4), .Y(n93) );
  OAI2BB2X1M U109 ( .B0(n4), .B1(n132), .A0N(RdData[7]), .A1N(n4), .Y(n94) );
  OAI2BB2X1M U110 ( .B0(n19), .B1(n131), .A0N(ALU_OUT[0]), .A1N(n20), .Y(n95)
         );
  OAI2BB2X1M U111 ( .B0(n19), .B1(n130), .A0N(ALU_OUT[1]), .A1N(n20), .Y(n96)
         );
  OAI2BB2X1M U112 ( .B0(n19), .B1(n129), .A0N(ALU_OUT[2]), .A1N(n20), .Y(n97)
         );
  OAI2BB2X1M U113 ( .B0(n19), .B1(n128), .A0N(ALU_OUT[3]), .A1N(n20), .Y(n98)
         );
  OAI2BB2X1M U114 ( .B0(n20), .B1(n127), .A0N(ALU_OUT[4]), .A1N(n20), .Y(n99)
         );
  OAI2BB2X1M U115 ( .B0(n20), .B1(n126), .A0N(ALU_OUT[5]), .A1N(n20), .Y(n100)
         );
  OAI2BB2X1M U116 ( .B0(n20), .B1(n125), .A0N(ALU_OUT[6]), .A1N(n20), .Y(n101)
         );
  OAI2BB2X1M U117 ( .B0(n20), .B1(n124), .A0N(ALU_OUT[7]), .A1N(n20), .Y(n102)
         );
  OAI2BB2X1M U118 ( .B0(n19), .B1(n85), .A0N(ALU_OUT[8]), .A1N(n20), .Y(n103)
         );
  OAI2BB2X1M U119 ( .B0(n19), .B1(n81), .A0N(ALU_OUT[9]), .A1N(n20), .Y(n104)
         );
  OAI2BB2X1M U120 ( .B0(n19), .B1(n80), .A0N(ALU_OUT[10]), .A1N(n20), .Y(n105)
         );
  OAI2BB2X1M U121 ( .B0(n19), .B1(n77), .A0N(ALU_OUT[11]), .A1N(n20), .Y(n106)
         );
  OAI2BB2X1M U122 ( .B0(n19), .B1(n67), .A0N(ALU_OUT[12]), .A1N(n20), .Y(n107)
         );
  OAI2BB2X1M U123 ( .B0(n19), .B1(n66), .A0N(ALU_OUT[13]), .A1N(n20), .Y(n108)
         );
  OAI2BB2X1M U124 ( .B0(n19), .B1(n60), .A0N(ALU_OUT[14]), .A1N(n19), .Y(n109)
         );
  OAI2BB2X1M U125 ( .B0(n19), .B1(n58), .A0N(ALU_OUT[15]), .A1N(n20), .Y(n110)
         );
  INVX2M U126 ( .A(alu_res[8]), .Y(n85) );
  INVX2M U127 ( .A(alu_res[9]), .Y(n81) );
  INVX2M U128 ( .A(alu_res[10]), .Y(n80) );
  INVX2M U129 ( .A(alu_res[11]), .Y(n77) );
  INVX2M U130 ( .A(alu_res[12]), .Y(n67) );
  INVX2M U131 ( .A(alu_res[13]), .Y(n66) );
  INVX2M U132 ( .A(alu_res[14]), .Y(n60) );
  INVX2M U133 ( .A(alu_res[15]), .Y(n58) );
  INVX2M U134 ( .A(alu_res[0]), .Y(n131) );
  INVX2M U135 ( .A(alu_res[1]), .Y(n130) );
  INVX2M U136 ( .A(alu_res[2]), .Y(n129) );
  INVX2M U137 ( .A(alu_res[3]), .Y(n128) );
  INVX2M U138 ( .A(alu_res[4]), .Y(n127) );
  INVX2M U139 ( .A(alu_res[5]), .Y(n126) );
  INVX2M U140 ( .A(alu_res[6]), .Y(n125) );
  INVX2M U141 ( .A(alu_res[7]), .Y(n124) );
  INVX2M U142 ( .A(rd_reg[0]), .Y(n139) );
  INVX2M U143 ( .A(rd_reg[1]), .Y(n138) );
  INVX2M U144 ( .A(rd_reg[2]), .Y(n137) );
  INVX2M U145 ( .A(rd_reg[3]), .Y(n136) );
  INVX2M U146 ( .A(rd_reg[4]), .Y(n135) );
  INVX2M U147 ( .A(rd_reg[5]), .Y(n134) );
  INVX2M U148 ( .A(rd_reg[6]), .Y(n133) );
  INVX2M U149 ( .A(rd_reg[7]), .Y(n132) );
  BUFX2M U150 ( .A(RX_P_DATA[7]), .Y(WrData[7]) );
  BUFX2M U151 ( .A(RX_P_DATA[6]), .Y(WrData[6]) );
  BUFX2M U152 ( .A(RX_P_DATA[5]), .Y(WrData[5]) );
  BUFX2M U153 ( .A(RX_P_DATA[4]), .Y(WrData[4]) );
  BUFX2M U154 ( .A(RX_P_DATA[3]), .Y(WrData[3]) );
  BUFX2M U155 ( .A(RX_P_DATA[2]), .Y(WrData[2]) );
  BUFX2M U156 ( .A(RX_P_DATA[1]), .Y(WrData[1]) );
  BUFX2M U157 ( .A(RX_P_DATA[0]), .Y(WrData[0]) );
  AOI21X1M U158 ( .A0(RX_P_DATA[2]), .A1(RX_P_DATA[1]), .B0(RX_P_DATA[3]), .Y(
        n21) );
  NOR2BX1M U159 ( .AN(RX_P_DATA[4]), .B(n21), .Y(n22) );
  NOR4X1M U160 ( .A(RX_P_DATA[7]), .B(RX_P_DATA[6]), .C(RX_P_DATA[5]), .D(n22), 
        .Y(N130) );
endmodule


module REGFILE_STORAGE_WIDTH8_DEPTH22_ADDR_WIDTH5 ( CLK, RST, WRITE_EN, 
        ADDRESS, WRITE_DATA, READ_DATA, REG0, REG1, REG2, REG3 );
  input [4:0] ADDRESS;
  input [7:0] WRITE_DATA;
  output [7:0] READ_DATA;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WRITE_EN;
  wire   Reg_File_8__7_, Reg_File_8__6_, Reg_File_8__5_, Reg_File_8__4_,
         Reg_File_8__3_, Reg_File_8__2_, Reg_File_8__1_, Reg_File_8__0_, N78,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n225, n226, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n284, n285, n286, n287, n288, n289, n290, n291, n292, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n1, n2, n3, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n223, n224, n227,
         n253, n263, n273, n283, n293, n303, n313, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550;

  DFFRQX2M Reg_File_reg_8__7_ ( .D(n438), .CK(CLK), .RN(n174), .Q(
        Reg_File_8__7_) );
  DFFRQX2M Reg_File_reg_8__6_ ( .D(n437), .CK(CLK), .RN(n173), .Q(
        Reg_File_8__6_) );
  DFFRQX2M Reg_File_reg_8__5_ ( .D(n436), .CK(CLK), .RN(n173), .Q(
        Reg_File_8__5_) );
  DFFRQX2M Reg_File_reg_8__4_ ( .D(n435), .CK(CLK), .RN(n174), .Q(
        Reg_File_8__4_) );
  DFFRQX2M Reg_File_reg_8__3_ ( .D(n434), .CK(CLK), .RN(n173), .Q(
        Reg_File_8__3_) );
  DFFRQX2M Reg_File_reg_8__2_ ( .D(n433), .CK(CLK), .RN(n173), .Q(
        Reg_File_8__2_) );
  DFFRQX2M Reg_File_reg_8__1_ ( .D(n432), .CK(CLK), .RN(n173), .Q(
        Reg_File_8__1_) );
  DFFRQX2M Reg_File_reg_8__0_ ( .D(n431), .CK(CLK), .RN(n174), .Q(
        Reg_File_8__0_) );
  DFFSX1M Reg_File_reg_3__5_ ( .D(n476), .CK(CLK), .SN(n173), .Q(REG3[5]), 
        .QN(n14) );
  DFFSX1M Reg_File_reg_2__7_ ( .D(n486), .CK(CLK), .SN(n173), .Q(REG2[7]), 
        .QN(n4) );
  DFFSX1M Reg_File_reg_2__0_ ( .D(n479), .CK(CLK), .SN(n173), .Q(REG2[0]), 
        .QN(n11) );
  DFFRX1M Reg_File_reg_3__7_ ( .D(n478), .CK(CLK), .RN(n167), .Q(REG3[7]), 
        .QN(n12) );
  DFFRX1M Reg_File_reg_3__6_ ( .D(n477), .CK(CLK), .RN(n167), .Q(REG3[6]), 
        .QN(n13) );
  DFFRX1M Reg_File_reg_3__4_ ( .D(n475), .CK(CLK), .RN(n167), .Q(REG3[4]), 
        .QN(n15) );
  DFFRX1M Reg_File_reg_3__3_ ( .D(n474), .CK(CLK), .RN(n167), .Q(REG3[3]), 
        .QN(n16) );
  DFFRX1M Reg_File_reg_3__2_ ( .D(n473), .CK(CLK), .RN(n167), .Q(REG3[2]), 
        .QN(n17) );
  DFFRX1M Reg_File_reg_3__1_ ( .D(n472), .CK(CLK), .RN(n170), .Q(REG3[1]), 
        .QN(n18) );
  DFFRX1M Reg_File_reg_3__0_ ( .D(n471), .CK(CLK), .RN(n169), .Q(REG3[0]), 
        .QN(n19) );
  DFFRX1M Reg_File_reg_4__7_ ( .D(n470), .CK(CLK), .RN(n168), .QN(n20) );
  DFFRX1M Reg_File_reg_4__6_ ( .D(n469), .CK(CLK), .RN(n168), .QN(n21) );
  DFFRX1M Reg_File_reg_4__5_ ( .D(n468), .CK(CLK), .RN(n168), .QN(n22) );
  DFFRX1M Reg_File_reg_4__4_ ( .D(n467), .CK(CLK), .RN(n168), .QN(n23) );
  DFFRX1M Reg_File_reg_4__3_ ( .D(n466), .CK(CLK), .RN(n168), .QN(n24) );
  DFFRX1M Reg_File_reg_4__2_ ( .D(n465), .CK(CLK), .RN(n168), .QN(n25) );
  DFFRX1M Reg_File_reg_4__1_ ( .D(n464), .CK(CLK), .RN(n168), .QN(n26) );
  DFFRX1M Reg_File_reg_4__0_ ( .D(n463), .CK(CLK), .RN(n168), .QN(n27) );
  DFFRX1M Reg_File_reg_2__6_ ( .D(n485), .CK(CLK), .RN(n168), .Q(REG2[6]), 
        .QN(n5) );
  DFFRX1M Reg_File_reg_2__5_ ( .D(n484), .CK(CLK), .RN(n167), .Q(REG2[5]), 
        .QN(n6) );
  DFFRX1M Reg_File_reg_2__4_ ( .D(n483), .CK(CLK), .RN(n167), .Q(REG2[4]), 
        .QN(n7) );
  DFFRX1M Reg_File_reg_2__3_ ( .D(n482), .CK(CLK), .RN(n167), .Q(REG2[3]), 
        .QN(n8) );
  DFFRX1M Reg_File_reg_2__2_ ( .D(n481), .CK(CLK), .RN(n167), .Q(REG2[2]), 
        .QN(n9) );
  DFFRX1M Reg_File_reg_2__1_ ( .D(n480), .CK(CLK), .RN(n167), .Q(REG2[1]), 
        .QN(n10) );
  DFFRX1M Reg_File_reg_5__7_ ( .D(n462), .CK(CLK), .RN(n168), .QN(n28) );
  DFFRX1M Reg_File_reg_5__6_ ( .D(n461), .CK(CLK), .RN(n168), .QN(n29) );
  DFFRX1M Reg_File_reg_5__5_ ( .D(n460), .CK(CLK), .RN(n168), .QN(n30) );
  DFFRX1M Reg_File_reg_5__4_ ( .D(n459), .CK(CLK), .RN(n170), .QN(n31) );
  DFFRX1M Reg_File_reg_5__3_ ( .D(n458), .CK(CLK), .RN(n169), .QN(n32) );
  DFFRX1M Reg_File_reg_5__2_ ( .D(n457), .CK(CLK), .RN(n169), .QN(n33) );
  DFFRX1M Reg_File_reg_5__1_ ( .D(n456), .CK(CLK), .RN(n169), .QN(n34) );
  DFFRX1M Reg_File_reg_5__0_ ( .D(n455), .CK(CLK), .RN(n169), .QN(n35) );
  DFFRX1M Reg_File_reg_6__7_ ( .D(n454), .CK(CLK), .RN(n169), .QN(n36) );
  DFFRX1M Reg_File_reg_6__6_ ( .D(n453), .CK(CLK), .RN(n169), .QN(n37) );
  DFFRX1M Reg_File_reg_6__5_ ( .D(n452), .CK(CLK), .RN(n169), .QN(n38) );
  DFFRX1M Reg_File_reg_6__4_ ( .D(n451), .CK(CLK), .RN(n169), .QN(n39) );
  DFFRX1M Reg_File_reg_6__3_ ( .D(n450), .CK(CLK), .RN(n169), .QN(n40) );
  DFFRX1M Reg_File_reg_6__2_ ( .D(n449), .CK(CLK), .RN(n169), .QN(n41) );
  DFFRX1M Reg_File_reg_6__1_ ( .D(n448), .CK(CLK), .RN(n169), .QN(n42) );
  DFFRX1M Reg_File_reg_6__0_ ( .D(n447), .CK(CLK), .RN(n171), .QN(n43) );
  DFFRX1M Reg_File_reg_14__3_ ( .D(n386), .CK(CLK), .RN(n165), .QN(n96) );
  DFFRX1M Reg_File_reg_14__1_ ( .D(n384), .CK(CLK), .RN(n166), .QN(n98) );
  DFFRX1M Reg_File_reg_17__7_ ( .D(n366), .CK(CLK), .RN(n163), .QN(n116) );
  DFFRX1M Reg_File_reg_17__6_ ( .D(n365), .CK(CLK), .RN(n165), .QN(n117) );
  DFFRX1M Reg_File_reg_17__5_ ( .D(n364), .CK(CLK), .RN(n163), .QN(n118) );
  DFFRX1M Reg_File_reg_17__4_ ( .D(n363), .CK(CLK), .RN(n163), .QN(n119) );
  DFFRX1M Reg_File_reg_17__3_ ( .D(n362), .CK(CLK), .RN(n163), .QN(n120) );
  DFFRX1M Reg_File_reg_17__2_ ( .D(n361), .CK(CLK), .RN(n164), .QN(n121) );
  DFFRX1M Reg_File_reg_17__1_ ( .D(n360), .CK(CLK), .RN(n164), .QN(n122) );
  DFFRX1M Reg_File_reg_20__7_ ( .D(n342), .CK(CLK), .RN(n161), .QN(n140) );
  DFFRX1M Reg_File_reg_20__6_ ( .D(n341), .CK(CLK), .RN(n163), .QN(n141) );
  DFFRX1M Reg_File_reg_20__5_ ( .D(n340), .CK(CLK), .RN(n161), .QN(n142) );
  DFFRX1M Reg_File_reg_20__4_ ( .D(n339), .CK(CLK), .RN(n161), .QN(n143) );
  DFFRX1M Reg_File_reg_20__3_ ( .D(n338), .CK(CLK), .RN(n161), .QN(n144) );
  DFFRX1M Reg_File_reg_20__2_ ( .D(n337), .CK(CLK), .RN(n162), .QN(n145) );
  DFFRX1M Reg_File_reg_20__1_ ( .D(n336), .CK(CLK), .RN(n162), .QN(n146) );
  DFFRX1M Reg_File_reg_20__0_ ( .D(n335), .CK(CLK), .RN(n162), .QN(n147) );
  DFFRX1M Reg_File_reg_7__7_ ( .D(n446), .CK(CLK), .RN(n171), .QN(n44) );
  DFFRX1M Reg_File_reg_7__6_ ( .D(n445), .CK(CLK), .RN(n170), .QN(n45) );
  DFFRX1M Reg_File_reg_7__5_ ( .D(n444), .CK(CLK), .RN(n170), .QN(n46) );
  DFFRX1M Reg_File_reg_7__4_ ( .D(n443), .CK(CLK), .RN(n170), .QN(n47) );
  DFFRX1M Reg_File_reg_7__3_ ( .D(n442), .CK(CLK), .RN(n170), .QN(n48) );
  DFFRX1M Reg_File_reg_7__2_ ( .D(n441), .CK(CLK), .RN(n170), .QN(n49) );
  DFFRX1M Reg_File_reg_7__1_ ( .D(n440), .CK(CLK), .RN(n170), .QN(n50) );
  DFFRX1M Reg_File_reg_7__0_ ( .D(n439), .CK(CLK), .RN(n170), .QN(n51) );
  DFFRX1M Reg_File_reg_15__3_ ( .D(n378), .CK(CLK), .RN(n164), .QN(n104) );
  DFFRX1M Reg_File_reg_15__1_ ( .D(n376), .CK(CLK), .RN(n164), .QN(n106) );
  DFFRX1M Reg_File_reg_18__7_ ( .D(n358), .CK(CLK), .RN(n164), .QN(n124) );
  DFFRX1M Reg_File_reg_18__6_ ( .D(n357), .CK(CLK), .RN(n163), .QN(n125) );
  DFFRX1M Reg_File_reg_18__5_ ( .D(n356), .CK(CLK), .RN(n162), .QN(n126) );
  DFFRX1M Reg_File_reg_18__4_ ( .D(n355), .CK(CLK), .RN(n162), .QN(n127) );
  DFFRX1M Reg_File_reg_18__3_ ( .D(n354), .CK(CLK), .RN(n162), .QN(n128) );
  DFFRX1M Reg_File_reg_18__2_ ( .D(n353), .CK(CLK), .RN(n162), .QN(n129) );
  DFFRX1M Reg_File_reg_18__1_ ( .D(n352), .CK(CLK), .RN(n162), .QN(n130) );
  DFFRX1M Reg_File_reg_21__7_ ( .D(n334), .CK(CLK), .RN(n162), .QN(n148) );
  DFFRX1M Reg_File_reg_21__6_ ( .D(n333), .CK(CLK), .RN(n161), .QN(n149) );
  DFFRX1M Reg_File_reg_21__5_ ( .D(n332), .CK(CLK), .RN(n162), .QN(n150) );
  DFFRX1M Reg_File_reg_21__4_ ( .D(n331), .CK(CLK), .RN(n161), .QN(n151) );
  DFFRX1M Reg_File_reg_21__3_ ( .D(n330), .CK(CLK), .RN(n161), .QN(n152) );
  DFFRX1M Reg_File_reg_21__2_ ( .D(n329), .CK(CLK), .RN(n161), .QN(n153) );
  DFFRX1M Reg_File_reg_21__1_ ( .D(n328), .CK(CLK), .RN(n161), .QN(n154) );
  DFFRX1M Reg_File_reg_21__0_ ( .D(n327), .CK(CLK), .RN(n161), .QN(n155) );
  DFFRX1M Reg_File_reg_13__3_ ( .D(n394), .CK(CLK), .RN(n173), .QN(n88) );
  DFFRX1M Reg_File_reg_13__2_ ( .D(n393), .CK(CLK), .RN(n173), .QN(n89) );
  DFFRX1M Reg_File_reg_13__1_ ( .D(n392), .CK(CLK), .RN(n173), .QN(n90) );
  DFFRX1M Reg_File_reg_16__7_ ( .D(n374), .CK(CLK), .RN(n164), .QN(n108) );
  DFFRX1M Reg_File_reg_16__6_ ( .D(n373), .CK(CLK), .RN(n166), .QN(n109) );
  DFFRX1M Reg_File_reg_16__5_ ( .D(n372), .CK(CLK), .RN(n165), .QN(n110) );
  DFFRX1M Reg_File_reg_16__4_ ( .D(n371), .CK(CLK), .RN(n165), .QN(n111) );
  DFFRX1M Reg_File_reg_16__3_ ( .D(n370), .CK(CLK), .RN(n165), .QN(n112) );
  DFFRX1M Reg_File_reg_16__2_ ( .D(n369), .CK(CLK), .RN(n165), .QN(n113) );
  DFFRX1M Reg_File_reg_16__1_ ( .D(n368), .CK(CLK), .RN(n163), .QN(n114) );
  DFFRX1M Reg_File_reg_16__0_ ( .D(n367), .CK(CLK), .RN(n163), .QN(n115) );
  DFFRX1M Reg_File_reg_19__7_ ( .D(n350), .CK(CLK), .RN(n162), .QN(n132) );
  DFFRX1M Reg_File_reg_19__6_ ( .D(n349), .CK(CLK), .RN(n164), .QN(n133) );
  DFFRX1M Reg_File_reg_19__5_ ( .D(n348), .CK(CLK), .RN(n163), .QN(n134) );
  DFFRX1M Reg_File_reg_19__4_ ( .D(n347), .CK(CLK), .RN(n163), .QN(n135) );
  DFFRX1M Reg_File_reg_19__3_ ( .D(n346), .CK(CLK), .RN(n163), .QN(n136) );
  DFFRX1M Reg_File_reg_19__2_ ( .D(n345), .CK(CLK), .RN(n163), .QN(n137) );
  DFFRX1M Reg_File_reg_19__1_ ( .D(n344), .CK(CLK), .RN(n161), .QN(n138) );
  DFFRX1M Reg_File_reg_19__0_ ( .D(n343), .CK(CLK), .RN(n161), .QN(n139) );
  DFFRX1M Reg_File_reg_10__7_ ( .D(n422), .CK(CLK), .RN(n171), .QN(n60) );
  DFFRX1M Reg_File_reg_10__6_ ( .D(n421), .CK(CLK), .RN(n171), .QN(n61) );
  DFFRX1M Reg_File_reg_10__5_ ( .D(n420), .CK(CLK), .RN(n171), .QN(n62) );
  DFFRX1M Reg_File_reg_10__4_ ( .D(n419), .CK(CLK), .RN(n171), .QN(n63) );
  DFFRX1M Reg_File_reg_10__3_ ( .D(n418), .CK(CLK), .RN(n171), .QN(n64) );
  DFFRX1M Reg_File_reg_10__2_ ( .D(n417), .CK(CLK), .RN(n171), .QN(n65) );
  DFFRX1M Reg_File_reg_10__1_ ( .D(n416), .CK(CLK), .RN(n171), .QN(n66) );
  DFFRX1M Reg_File_reg_10__0_ ( .D(n415), .CK(CLK), .RN(n173), .QN(n67) );
  DFFRX1M Reg_File_reg_12__7_ ( .D(n406), .CK(CLK), .RN(n172), .QN(n76) );
  DFFRX1M Reg_File_reg_12__6_ ( .D(n405), .CK(CLK), .RN(n172), .QN(n77) );
  DFFRX1M Reg_File_reg_12__5_ ( .D(n404), .CK(CLK), .RN(n172), .QN(n78) );
  DFFRX1M Reg_File_reg_12__4_ ( .D(n403), .CK(CLK), .RN(n166), .QN(n79) );
  DFFRX1M Reg_File_reg_12__3_ ( .D(n402), .CK(CLK), .RN(n166), .QN(n80) );
  DFFRX1M Reg_File_reg_12__2_ ( .D(n401), .CK(CLK), .RN(n166), .QN(n81) );
  DFFRX1M Reg_File_reg_12__1_ ( .D(n400), .CK(CLK), .RN(n166), .QN(n82) );
  DFFRX1M Reg_File_reg_12__0_ ( .D(n399), .CK(CLK), .RN(n166), .QN(n83) );
  DFFRX1M Reg_File_reg_9__7_ ( .D(n430), .CK(CLK), .RN(n170), .QN(n52) );
  DFFRX1M Reg_File_reg_9__6_ ( .D(n429), .CK(CLK), .RN(n170), .QN(n53) );
  DFFRX1M Reg_File_reg_9__5_ ( .D(n428), .CK(CLK), .RN(n170), .QN(n54) );
  DFFRX1M Reg_File_reg_9__4_ ( .D(n427), .CK(CLK), .RN(n172), .QN(n55) );
  DFFRX1M Reg_File_reg_9__3_ ( .D(n426), .CK(CLK), .RN(n172), .QN(n56) );
  DFFRX1M Reg_File_reg_9__2_ ( .D(n425), .CK(CLK), .RN(n171), .QN(n57) );
  DFFRX1M Reg_File_reg_9__1_ ( .D(n424), .CK(CLK), .RN(n171), .QN(n58) );
  DFFRX1M Reg_File_reg_9__0_ ( .D(n423), .CK(CLK), .RN(n171), .QN(n59) );
  DFFRX1M Reg_File_reg_11__7_ ( .D(n414), .CK(CLK), .RN(n173), .QN(n68) );
  DFFRX1M Reg_File_reg_11__6_ ( .D(n413), .CK(CLK), .RN(n172), .QN(n69) );
  DFFRX1M Reg_File_reg_11__5_ ( .D(n412), .CK(CLK), .RN(n172), .QN(n70) );
  DFFRX1M Reg_File_reg_11__4_ ( .D(n411), .CK(CLK), .RN(n172), .QN(n71) );
  DFFRX1M Reg_File_reg_11__3_ ( .D(n410), .CK(CLK), .RN(n172), .QN(n72) );
  DFFRX1M Reg_File_reg_11__2_ ( .D(n409), .CK(CLK), .RN(n172), .QN(n73) );
  DFFRX1M Reg_File_reg_11__1_ ( .D(n408), .CK(CLK), .RN(n172), .QN(n74) );
  DFFRX1M Reg_File_reg_11__0_ ( .D(n407), .CK(CLK), .RN(n172), .QN(n75) );
  DFFRX1M Reg_File_reg_14__7_ ( .D(n390), .CK(CLK), .RN(n165), .QN(n92) );
  DFFRX1M Reg_File_reg_14__6_ ( .D(n389), .CK(CLK), .RN(n165), .QN(n93) );
  DFFRX1M Reg_File_reg_14__5_ ( .D(n388), .CK(CLK), .RN(n165), .QN(n94) );
  DFFRX1M Reg_File_reg_14__4_ ( .D(n387), .CK(CLK), .RN(n165), .QN(n95) );
  DFFRX1M Reg_File_reg_14__2_ ( .D(n385), .CK(CLK), .RN(n166), .QN(n97) );
  DFFRX1M Reg_File_reg_14__0_ ( .D(n383), .CK(CLK), .RN(n166), .QN(n99) );
  DFFRX1M Reg_File_reg_17__0_ ( .D(n359), .CK(CLK), .RN(n164), .QN(n123) );
  DFFRX1M Reg_File_reg_15__7_ ( .D(n382), .CK(CLK), .RN(n166), .QN(n100) );
  DFFRX1M Reg_File_reg_15__6_ ( .D(n381), .CK(CLK), .RN(n165), .QN(n101) );
  DFFRX1M Reg_File_reg_15__5_ ( .D(n380), .CK(CLK), .RN(n164), .QN(n102) );
  DFFRX1M Reg_File_reg_15__4_ ( .D(n379), .CK(CLK), .RN(n164), .QN(n103) );
  DFFRX1M Reg_File_reg_15__2_ ( .D(n377), .CK(CLK), .RN(n164), .QN(n105) );
  DFFRX1M Reg_File_reg_15__0_ ( .D(n375), .CK(CLK), .RN(n164), .QN(n107) );
  DFFRX1M Reg_File_reg_18__0_ ( .D(n351), .CK(CLK), .RN(n162), .QN(n131) );
  DFFRX1M Reg_File_reg_13__7_ ( .D(n398), .CK(CLK), .RN(n166), .QN(n84) );
  DFFRX1M Reg_File_reg_13__6_ ( .D(n397), .CK(CLK), .RN(n166), .QN(n85) );
  DFFRX1M Reg_File_reg_13__5_ ( .D(n396), .CK(CLK), .RN(n167), .QN(n86) );
  DFFRX1M Reg_File_reg_13__4_ ( .D(n395), .CK(CLK), .RN(n167), .QN(n87) );
  DFFRX1M Reg_File_reg_13__0_ ( .D(n391), .CK(CLK), .RN(n165), .QN(n91) );
  DFFRQX2M Reg_File_reg_0__0_ ( .D(n495), .CK(CLK), .RN(n174), .Q(REG0[0]) );
  DFFRQX2M Reg_File_reg_0__1_ ( .D(n496), .CK(CLK), .RN(n174), .Q(REG0[1]) );
  DFFRQX2M Reg_File_reg_0__2_ ( .D(n497), .CK(CLK), .RN(n174), .Q(REG0[2]) );
  DFFRQX2M Reg_File_reg_0__3_ ( .D(n498), .CK(CLK), .RN(n174), .Q(REG0[3]) );
  DFFRQX2M Reg_File_reg_0__4_ ( .D(n499), .CK(CLK), .RN(n174), .Q(REG0[4]) );
  DFFRQX2M Reg_File_reg_0__5_ ( .D(n500), .CK(CLK), .RN(n174), .Q(REG0[5]) );
  DFFRQX2M Reg_File_reg_0__7_ ( .D(n502), .CK(CLK), .RN(n174), .Q(REG0[7]) );
  DFFRHQX4M Reg_File_reg_1__2_ ( .D(n489), .CK(CLK), .RN(n174), .Q(REG1[2]) );
  DFFRHQX4M Reg_File_reg_1__3_ ( .D(n490), .CK(CLK), .RN(n174), .Q(REG1[3]) );
  DFFRQX2M Reg_File_reg_0__6_ ( .D(n501), .CK(CLK), .RN(n174), .Q(REG0[6]) );
  DFFRHQX4M Reg_File_reg_1__1_ ( .D(n488), .CK(CLK), .RN(n174), .Q(REG1[1]) );
  DFFRHQX4M Reg_File_reg_1__7_ ( .D(n494), .CK(CLK), .RN(n173), .Q(REG1[7]) );
  DFFRHQX4M Reg_File_reg_1__5_ ( .D(n492), .CK(CLK), .RN(n174), .Q(REG1[5]) );
  DFFRHQX4M Reg_File_reg_1__0_ ( .D(n487), .CK(CLK), .RN(n174), .Q(REG1[0]) );
  DFFRHQX4M Reg_File_reg_1__6_ ( .D(n493), .CK(CLK), .RN(n173), .Q(REG1[6]) );
  DFFRHQX4M Reg_File_reg_1__4_ ( .D(n491), .CK(CLK), .RN(n174), .Q(REG1[4]) );
  INVXLM U3 ( .A(REG1[3]), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n2) );
  NOR3BX2M U5 ( .AN(n200), .B(n182), .C(n545), .Y(n202) );
  INVXLM U6 ( .A(REG1[2]), .Y(n3) );
  INVX2M U7 ( .A(n3), .Y(n156) );
  OAI2B11XLM U8 ( .A1N(n156), .A0(n158), .B0(n294), .C0(n295), .Y(n508) );
  NOR2X2M U9 ( .A(n181), .B(n182), .Y(n213) );
  BUFX2M U10 ( .A(ADDRESS[3]), .Y(n181) );
  OAI2BB2XLM U11 ( .B0(n542), .B1(n225), .A0N(n225), .A1N(REG0[5]), .Y(n500)
         );
  MX2XLM U12 ( .A(REG0[6]), .B(WRITE_DATA[6]), .S0(n503), .Y(n501) );
  BUFX2M U13 ( .A(n175), .Y(n173) );
  BUFX2M U14 ( .A(n179), .Y(n161) );
  BUFX2M U15 ( .A(n179), .Y(n162) );
  BUFX2M U16 ( .A(n178), .Y(n163) );
  BUFX2M U17 ( .A(n178), .Y(n164) );
  BUFX2M U18 ( .A(n178), .Y(n165) );
  BUFX2M U19 ( .A(n177), .Y(n166) );
  BUFX2M U20 ( .A(n175), .Y(n172) );
  BUFX2M U21 ( .A(n176), .Y(n171) );
  BUFX2M U22 ( .A(n176), .Y(n169) );
  BUFX2M U23 ( .A(n176), .Y(n170) );
  BUFX2M U24 ( .A(n177), .Y(n167) );
  BUFX2M U25 ( .A(n177), .Y(n168) );
  BUFX2M U26 ( .A(n175), .Y(n174) );
  INVX2M U27 ( .A(n293), .Y(n533) );
  INVX2M U28 ( .A(n283), .Y(n532) );
  INVX2M U29 ( .A(n273), .Y(n531) );
  INVX2M U30 ( .A(n263), .Y(n530) );
  INVX2M U31 ( .A(n253), .Y(n529) );
  INVX2M U32 ( .A(n227), .Y(n528) );
  INVX2M U33 ( .A(n224), .Y(n527) );
  NAND2X2M U34 ( .A(n203), .B(n545), .Y(n251) );
  NAND2X2M U35 ( .A(n213), .B(n189), .Y(n216) );
  NAND2X2M U36 ( .A(n213), .B(n195), .Y(n222) );
  NAND2X2M U37 ( .A(n213), .B(n191), .Y(n218) );
  INVX2M U38 ( .A(n187), .Y(n539) );
  INVX2M U39 ( .A(n190), .Y(n538) );
  INVX2M U40 ( .A(n192), .Y(n537) );
  INVX2M U41 ( .A(n194), .Y(n536) );
  INVX2M U42 ( .A(n196), .Y(n535) );
  INVX2M U43 ( .A(n198), .Y(n534) );
  NAND2X2M U44 ( .A(n205), .B(n545), .Y(n250) );
  AND2X2M U45 ( .A(n213), .B(n199), .Y(n226) );
  INVX2M U46 ( .A(n225), .Y(n503) );
  BUFX2M U47 ( .A(n160), .Y(n178) );
  BUFX2M U48 ( .A(n159), .Y(n176) );
  BUFX2M U49 ( .A(n159), .Y(n177) );
  BUFX2M U50 ( .A(n159), .Y(n175) );
  BUFX2M U51 ( .A(n160), .Y(n179) );
  BUFX2M U52 ( .A(n211), .Y(n223) );
  NAND2X2M U53 ( .A(n202), .B(n199), .Y(n211) );
  BUFX2M U54 ( .A(n204), .Y(n283) );
  NAND2X2M U55 ( .A(n205), .B(n202), .Y(n204) );
  BUFX2M U56 ( .A(n201), .Y(n293) );
  NAND2X2M U57 ( .A(n202), .B(n203), .Y(n201) );
  BUFX2M U58 ( .A(n206), .Y(n273) );
  NAND2X2M U59 ( .A(n202), .B(n189), .Y(n206) );
  BUFX2M U60 ( .A(n207), .Y(n263) );
  NAND2XLM U61 ( .A(n202), .B(n191), .Y(n207) );
  BUFX2M U62 ( .A(n208), .Y(n253) );
  NAND2XLM U63 ( .A(n202), .B(n193), .Y(n208) );
  BUFX2M U64 ( .A(n209), .Y(n227) );
  NAND2XLM U65 ( .A(n202), .B(n195), .Y(n209) );
  BUFX2M U66 ( .A(n210), .Y(n224) );
  NAND2XLM U67 ( .A(n202), .B(n197), .Y(n210) );
  NOR2BX2M U68 ( .AN(n320), .B(n180), .Y(n189) );
  NOR2BX2M U69 ( .AN(n321), .B(n180), .Y(n191) );
  NAND2X2M U70 ( .A(n181), .B(n191), .Y(n235) );
  NAND2X2M U71 ( .A(n181), .B(n195), .Y(n249) );
  NOR2X2M U72 ( .A(n547), .B(n550), .Y(n320) );
  NAND2X2M U73 ( .A(n181), .B(n189), .Y(n238) );
  AND2X2M U74 ( .A(n180), .B(n321), .Y(n205) );
  AND2X2M U75 ( .A(n180), .B(n320), .Y(n203) );
  AND2X2M U76 ( .A(n325), .B(n550), .Y(n195) );
  NAND2X2M U77 ( .A(n199), .B(n182), .Y(n241) );
  NAND2X2M U78 ( .A(n203), .B(n181), .Y(n237) );
  NAND2X2M U79 ( .A(n205), .B(n181), .Y(n236) );
  AND2X2M U80 ( .A(n326), .B(n550), .Y(n199) );
  INVX2M U81 ( .A(n181), .Y(n545) );
  NAND2X2M U82 ( .A(n188), .B(n189), .Y(n187) );
  NAND2X2M U83 ( .A(n191), .B(n188), .Y(n190) );
  NAND2X2M U84 ( .A(n193), .B(n188), .Y(n192) );
  NAND2X2M U85 ( .A(n195), .B(n188), .Y(n194) );
  NAND2X2M U86 ( .A(n197), .B(n188), .Y(n196) );
  NAND2X2M U87 ( .A(n199), .B(n188), .Y(n198) );
  OR2X2M U88 ( .A(n313), .B(n303), .Y(n225) );
  INVX2M U89 ( .A(n226), .Y(n313) );
  NAND2X2M U90 ( .A(n181), .B(n193), .Y(n234) );
  NAND2X2M U91 ( .A(n181), .B(n197), .Y(n248) );
  NAND2X2M U92 ( .A(n213), .B(n193), .Y(n220) );
  INVX2M U93 ( .A(n212), .Y(n526) );
  INVX2M U94 ( .A(n214), .Y(n525) );
  NAND3X2M U95 ( .A(n182), .B(n550), .C(n180), .Y(n240) );
  NAND2X2M U96 ( .A(n321), .B(n182), .Y(n242) );
  INVX2M U97 ( .A(n186), .Y(n524) );
  INVX2M U98 ( .A(n185), .Y(n523) );
  INVX2M U99 ( .A(n184), .Y(n522) );
  INVX2M U100 ( .A(n183), .Y(n521) );
  NAND2X2M U101 ( .A(n320), .B(n182), .Y(n243) );
  NAND2X2M U102 ( .A(n197), .B(n182), .Y(n239) );
  AND2X2M U103 ( .A(n199), .B(n181), .Y(n245) );
  NOR2X2M U104 ( .A(n158), .B(n303), .Y(n157) );
  NAND2X2M U105 ( .A(n213), .B(n197), .Y(n158) );
  BUFX2M U106 ( .A(RST), .Y(n159) );
  BUFX2M U107 ( .A(RST), .Y(n160) );
  BUFX2M U108 ( .A(ADDRESS[1]), .Y(n180) );
  NOR2X2M U109 ( .A(n547), .B(ADDRESS[0]), .Y(n321) );
  INVX2M U110 ( .A(ADDRESS[0]), .Y(n550) );
  BUFX2M U111 ( .A(ADDRESS[4]), .Y(n182) );
  AND3X2M U112 ( .A(n200), .B(n545), .C(n182), .Y(n188) );
  NAND3X2M U113 ( .A(n203), .B(n200), .C(n213), .Y(n212) );
  NAND3X2M U114 ( .A(n205), .B(n200), .C(n213), .Y(n214) );
  NAND3X2M U115 ( .A(ADDRESS[0]), .B(n182), .C(n180), .Y(n244) );
  AND2X2M U116 ( .A(n326), .B(ADDRESS[0]), .Y(n197) );
  AND2X2M U117 ( .A(n325), .B(ADDRESS[0]), .Y(n193) );
  NOR2BX2M U118 ( .AN(n180), .B(ADDRESS[2]), .Y(n325) );
  NOR2X2M U119 ( .A(n180), .B(ADDRESS[2]), .Y(n326) );
  INVX2M U120 ( .A(ADDRESS[2]), .Y(n547) );
  BUFX2M U121 ( .A(n215), .Y(n186) );
  NOR2BX2M U122 ( .AN(n200), .B(n216), .Y(n215) );
  BUFX2M U123 ( .A(n217), .Y(n185) );
  NOR2BX2M U124 ( .AN(n200), .B(n218), .Y(n217) );
  BUFX2M U125 ( .A(n219), .Y(n184) );
  NOR2BX2M U126 ( .AN(n200), .B(n220), .Y(n219) );
  BUFX2M U127 ( .A(n221), .Y(n183) );
  NOR2BX2M U128 ( .AN(n200), .B(n222), .Y(n221) );
  INVX2M U129 ( .A(n200), .Y(n303) );
  AND2X2M U130 ( .A(WRITE_EN), .B(N78), .Y(n200) );
  INVX2M U131 ( .A(WRITE_DATA[0]), .Y(n549) );
  INVX2M U132 ( .A(WRITE_DATA[1]), .Y(n548) );
  INVX2M U133 ( .A(WRITE_DATA[2]), .Y(n546) );
  INVX2M U134 ( .A(WRITE_DATA[4]), .Y(n543) );
  INVX2M U135 ( .A(WRITE_DATA[3]), .Y(n544) );
  INVX2M U136 ( .A(WRITE_DATA[5]), .Y(n542) );
  INVX2M U137 ( .A(WRITE_DATA[6]), .Y(n541) );
  INVX2M U138 ( .A(WRITE_DATA[7]), .Y(n540) );
  OAI22X1M U139 ( .A0(n549), .A1(n293), .B0(n533), .B1(n107), .Y(n375) );
  OAI22X1M U140 ( .A0(n548), .A1(n293), .B0(n533), .B1(n106), .Y(n376) );
  OAI22X1M U141 ( .A0(n546), .A1(n293), .B0(n533), .B1(n105), .Y(n377) );
  OAI22X1M U142 ( .A0(n544), .A1(n293), .B0(n533), .B1(n104), .Y(n378) );
  OAI22X1M U143 ( .A0(n543), .A1(n293), .B0(n533), .B1(n103), .Y(n379) );
  OAI22X1M U144 ( .A0(n542), .A1(n293), .B0(n533), .B1(n102), .Y(n380) );
  OAI22X1M U145 ( .A0(n541), .A1(n293), .B0(n533), .B1(n101), .Y(n381) );
  OAI22X1M U146 ( .A0(n540), .A1(n293), .B0(n533), .B1(n100), .Y(n382) );
  OAI22X1M U147 ( .A0(n549), .A1(n283), .B0(n532), .B1(n99), .Y(n383) );
  OAI22X1M U148 ( .A0(n548), .A1(n283), .B0(n532), .B1(n98), .Y(n384) );
  OAI22X1M U149 ( .A0(n546), .A1(n283), .B0(n532), .B1(n97), .Y(n385) );
  OAI22X1M U150 ( .A0(n544), .A1(n283), .B0(n532), .B1(n96), .Y(n386) );
  OAI22X1M U151 ( .A0(n543), .A1(n283), .B0(n532), .B1(n95), .Y(n387) );
  OAI22X1M U152 ( .A0(n542), .A1(n283), .B0(n532), .B1(n94), .Y(n388) );
  OAI22X1M U153 ( .A0(n541), .A1(n283), .B0(n532), .B1(n93), .Y(n389) );
  OAI22X1M U154 ( .A0(n540), .A1(n283), .B0(n532), .B1(n92), .Y(n390) );
  OAI22X1M U155 ( .A0(n549), .A1(n273), .B0(n531), .B1(n91), .Y(n391) );
  OAI22X1M U156 ( .A0(n548), .A1(n273), .B0(n531), .B1(n90), .Y(n392) );
  OAI22X1M U157 ( .A0(n546), .A1(n273), .B0(n531), .B1(n89), .Y(n393) );
  OAI22X1M U158 ( .A0(n544), .A1(n273), .B0(n531), .B1(n88), .Y(n394) );
  OAI22X1M U159 ( .A0(n543), .A1(n273), .B0(n531), .B1(n87), .Y(n395) );
  OAI22X1M U160 ( .A0(n542), .A1(n273), .B0(n531), .B1(n86), .Y(n396) );
  OAI22X1M U161 ( .A0(n541), .A1(n273), .B0(n531), .B1(n85), .Y(n397) );
  OAI22X1M U162 ( .A0(n540), .A1(n273), .B0(n531), .B1(n84), .Y(n398) );
  OAI22X1M U163 ( .A0(n549), .A1(n263), .B0(n530), .B1(n83), .Y(n399) );
  OAI22X1M U164 ( .A0(n548), .A1(n263), .B0(n530), .B1(n82), .Y(n400) );
  OAI22X1M U165 ( .A0(n546), .A1(n263), .B0(n530), .B1(n81), .Y(n401) );
  OAI22X1M U166 ( .A0(n544), .A1(n263), .B0(n530), .B1(n80), .Y(n402) );
  OAI22X1M U167 ( .A0(n543), .A1(n263), .B0(n530), .B1(n79), .Y(n403) );
  OAI22X1M U168 ( .A0(n542), .A1(n263), .B0(n530), .B1(n78), .Y(n404) );
  OAI22X1M U169 ( .A0(n541), .A1(n263), .B0(n530), .B1(n77), .Y(n405) );
  OAI22X1M U170 ( .A0(n540), .A1(n263), .B0(n530), .B1(n76), .Y(n406) );
  OAI22X1M U171 ( .A0(n549), .A1(n253), .B0(n529), .B1(n75), .Y(n407) );
  OAI22X1M U172 ( .A0(n548), .A1(n253), .B0(n529), .B1(n74), .Y(n408) );
  OAI22X1M U173 ( .A0(n546), .A1(n253), .B0(n529), .B1(n73), .Y(n409) );
  OAI22X1M U174 ( .A0(n544), .A1(n253), .B0(n529), .B1(n72), .Y(n410) );
  OAI22X1M U175 ( .A0(n543), .A1(n253), .B0(n529), .B1(n71), .Y(n411) );
  OAI22X1M U176 ( .A0(n542), .A1(n253), .B0(n529), .B1(n70), .Y(n412) );
  OAI22X1M U177 ( .A0(n541), .A1(n253), .B0(n529), .B1(n69), .Y(n413) );
  OAI22X1M U178 ( .A0(n540), .A1(n253), .B0(n529), .B1(n68), .Y(n414) );
  OAI22X1M U179 ( .A0(n549), .A1(n227), .B0(n528), .B1(n67), .Y(n415) );
  OAI22X1M U180 ( .A0(n548), .A1(n227), .B0(n528), .B1(n66), .Y(n416) );
  OAI22X1M U181 ( .A0(n546), .A1(n227), .B0(n528), .B1(n65), .Y(n417) );
  OAI22X1M U182 ( .A0(n544), .A1(n227), .B0(n528), .B1(n64), .Y(n418) );
  OAI22X1M U183 ( .A0(n543), .A1(n227), .B0(n528), .B1(n63), .Y(n419) );
  OAI22X1M U184 ( .A0(n542), .A1(n227), .B0(n528), .B1(n62), .Y(n420) );
  OAI22X1M U185 ( .A0(n541), .A1(n227), .B0(n528), .B1(n61), .Y(n421) );
  OAI22X1M U186 ( .A0(n540), .A1(n227), .B0(n528), .B1(n60), .Y(n422) );
  OAI22X1M U187 ( .A0(n549), .A1(n224), .B0(n527), .B1(n59), .Y(n423) );
  OAI22X1M U188 ( .A0(n548), .A1(n224), .B0(n527), .B1(n58), .Y(n424) );
  OAI22X1M U189 ( .A0(n546), .A1(n224), .B0(n527), .B1(n57), .Y(n425) );
  OAI22X1M U190 ( .A0(n544), .A1(n224), .B0(n527), .B1(n56), .Y(n426) );
  OAI22X1M U191 ( .A0(n543), .A1(n224), .B0(n527), .B1(n55), .Y(n427) );
  OAI22X1M U192 ( .A0(n542), .A1(n224), .B0(n527), .B1(n54), .Y(n428) );
  OAI22X1M U193 ( .A0(n541), .A1(n224), .B0(n527), .B1(n53), .Y(n429) );
  OAI22X1M U194 ( .A0(n540), .A1(n224), .B0(n527), .B1(n52), .Y(n430) );
  OAI2BB2X1M U195 ( .B0(n549), .B1(n223), .A0N(n223), .A1N(Reg_File_8__0_), 
        .Y(n431) );
  OAI2BB2X1M U196 ( .B0(n548), .B1(n223), .A0N(n223), .A1N(Reg_File_8__1_), 
        .Y(n432) );
  OAI2BB2X1M U197 ( .B0(n546), .B1(n223), .A0N(n223), .A1N(Reg_File_8__2_), 
        .Y(n433) );
  OAI2BB2X1M U198 ( .B0(n544), .B1(n223), .A0N(n223), .A1N(Reg_File_8__3_), 
        .Y(n434) );
  OAI2BB2X1M U199 ( .B0(n543), .B1(n223), .A0N(n223), .A1N(Reg_File_8__4_), 
        .Y(n435) );
  OAI2BB2X1M U200 ( .B0(n542), .B1(n223), .A0N(n223), .A1N(Reg_File_8__5_), 
        .Y(n436) );
  OAI2BB2X1M U201 ( .B0(n541), .B1(n223), .A0N(n223), .A1N(Reg_File_8__6_), 
        .Y(n437) );
  OAI2BB2X1M U202 ( .B0(n540), .B1(n223), .A0N(n223), .A1N(Reg_File_8__7_), 
        .Y(n438) );
  OAI222X1M U203 ( .A0(n99), .A1(n236), .B0(n107), .B1(n237), .C0(n91), .C1(
        n238), .Y(n318) );
  OAI222X1M U204 ( .A0(n98), .A1(n236), .B0(n106), .B1(n237), .C0(n90), .C1(
        n238), .Y(n308) );
  OAI222X1M U205 ( .A0(n97), .A1(n236), .B0(n105), .B1(n237), .C0(n89), .C1(
        n238), .Y(n298) );
  OAI222X1M U206 ( .A0(n96), .A1(n236), .B0(n104), .B1(n237), .C0(n88), .C1(
        n238), .Y(n288) );
  OAI222X1M U207 ( .A0(n95), .A1(n236), .B0(n103), .B1(n237), .C0(n87), .C1(
        n238), .Y(n278) );
  OAI222X1M U208 ( .A0(n94), .A1(n236), .B0(n102), .B1(n237), .C0(n86), .C1(
        n238), .Y(n268) );
  OAI222X1M U209 ( .A0(n93), .A1(n236), .B0(n101), .B1(n237), .C0(n85), .C1(
        n238), .Y(n258) );
  OAI222X1M U210 ( .A0(n92), .A1(n236), .B0(n100), .B1(n237), .C0(n84), .C1(
        n238), .Y(n232) );
  OA21X2M U211 ( .A0(n515), .A1(n514), .B0(N78), .Y(READ_DATA[5]) );
  AO21XLM U212 ( .A0(REG0[5]), .A1(n226), .B0(n272), .Y(n515) );
  OA21X2M U213 ( .A0(n517), .A1(n516), .B0(N78), .Y(READ_DATA[6]) );
  AO21XLM U214 ( .A0(REG0[6]), .A1(n226), .B0(n262), .Y(n517) );
  OA21X2M U215 ( .A0(n519), .A1(n518), .B0(N78), .Y(READ_DATA[7]) );
  AO21XLM U216 ( .A0(REG0[7]), .A1(n226), .B0(n252), .Y(n519) );
  NOR4X1M U217 ( .A(n306), .B(n307), .C(n308), .D(n309), .Y(n305) );
  OAI222X1M U218 ( .A0(n146), .A1(n242), .B0(n154), .B1(n243), .C0(n138), .C1(
        n244), .Y(n306) );
  OAI22X1M U219 ( .A0(n74), .A1(n234), .B0(n82), .B1(n235), .Y(n309) );
  OAI222X1M U220 ( .A0(n122), .A1(n239), .B0(n130), .B1(n240), .C0(n114), .C1(
        n241), .Y(n307) );
  NOR4X1M U221 ( .A(n286), .B(n287), .C(n288), .D(n289), .Y(n285) );
  OAI222X1M U222 ( .A0(n144), .A1(n242), .B0(n152), .B1(n243), .C0(n136), .C1(
        n244), .Y(n286) );
  OAI22X1M U223 ( .A0(n72), .A1(n234), .B0(n80), .B1(n235), .Y(n289) );
  OAI222X1M U224 ( .A0(n120), .A1(n239), .B0(n128), .B1(n240), .C0(n112), .C1(
        n241), .Y(n287) );
  AOI211X2M U225 ( .A0(n245), .A1(Reg_File_8__0_), .B0(n322), .C0(n323), .Y(
        n314) );
  OAI222X1M U226 ( .A0(n43), .A1(n250), .B0(n51), .B1(n251), .C0(n216), .C1(
        n35), .Y(n322) );
  OAI22X1M U227 ( .A0(n59), .A1(n248), .B0(n67), .B1(n249), .Y(n323) );
  AOI211X2M U228 ( .A0(n245), .A1(Reg_File_8__4_), .B0(n280), .C0(n281), .Y(
        n274) );
  OAI222X1M U229 ( .A0(n39), .A1(n250), .B0(n47), .B1(n251), .C0(n216), .C1(
        n31), .Y(n280) );
  OAI22X1M U230 ( .A0(n55), .A1(n248), .B0(n63), .B1(n249), .Y(n281) );
  AOI211X2M U231 ( .A0(n245), .A1(Reg_File_8__5_), .B0(n270), .C0(n271), .Y(
        n264) );
  OAI222X1M U232 ( .A0(n38), .A1(n250), .B0(n46), .B1(n251), .C0(n216), .C1(
        n30), .Y(n270) );
  OAI22X1M U233 ( .A0(n54), .A1(n248), .B0(n62), .B1(n249), .Y(n271) );
  AOI211X2M U234 ( .A0(n245), .A1(Reg_File_8__6_), .B0(n260), .C0(n261), .Y(
        n254) );
  OAI222X1M U235 ( .A0(n37), .A1(n250), .B0(n45), .B1(n251), .C0(n216), .C1(
        n29), .Y(n260) );
  OAI22X1M U236 ( .A0(n53), .A1(n248), .B0(n61), .B1(n249), .Y(n261) );
  AOI211X2M U237 ( .A0(n245), .A1(Reg_File_8__7_), .B0(n246), .C0(n247), .Y(
        n228) );
  OAI222X1M U238 ( .A0(n36), .A1(n250), .B0(n44), .B1(n251), .C0(n216), .C1(
        n28), .Y(n246) );
  OAI22X1M U239 ( .A0(n52), .A1(n248), .B0(n60), .B1(n249), .Y(n247) );
  NOR4X1M U240 ( .A(n296), .B(n297), .C(n298), .D(n299), .Y(n295) );
  OAI222X1M U241 ( .A0(n145), .A1(n242), .B0(n153), .B1(n243), .C0(n137), .C1(
        n244), .Y(n296) );
  OAI22X1M U242 ( .A0(n73), .A1(n234), .B0(n81), .B1(n235), .Y(n299) );
  OAI222X1M U243 ( .A0(n121), .A1(n239), .B0(n129), .B1(n240), .C0(n113), .C1(
        n241), .Y(n297) );
  NOR4X1M U244 ( .A(n316), .B(n317), .C(n318), .D(n319), .Y(n315) );
  OAI222X1M U245 ( .A0(n147), .A1(n242), .B0(n155), .B1(n243), .C0(n139), .C1(
        n244), .Y(n316) );
  OAI22X1M U246 ( .A0(n75), .A1(n234), .B0(n83), .B1(n235), .Y(n319) );
  OAI222X1M U247 ( .A0(n123), .A1(n239), .B0(n131), .B1(n240), .C0(n115), .C1(
        n241), .Y(n317) );
  NOR4X1M U248 ( .A(n276), .B(n277), .C(n278), .D(n279), .Y(n275) );
  OAI222X1M U249 ( .A0(n143), .A1(n242), .B0(n151), .B1(n243), .C0(n135), .C1(
        n244), .Y(n276) );
  OAI22X1M U250 ( .A0(n71), .A1(n234), .B0(n79), .B1(n235), .Y(n279) );
  OAI222X1M U251 ( .A0(n119), .A1(n239), .B0(n127), .B1(n240), .C0(n111), .C1(
        n241), .Y(n277) );
  NOR4X1M U252 ( .A(n266), .B(n267), .C(n268), .D(n269), .Y(n265) );
  OAI222X1M U253 ( .A0(n142), .A1(n242), .B0(n150), .B1(n243), .C0(n134), .C1(
        n244), .Y(n266) );
  OAI22X1M U254 ( .A0(n70), .A1(n234), .B0(n78), .B1(n235), .Y(n269) );
  OAI222X1M U255 ( .A0(n118), .A1(n239), .B0(n126), .B1(n240), .C0(n110), .C1(
        n241), .Y(n267) );
  NOR4X1M U256 ( .A(n256), .B(n257), .C(n258), .D(n259), .Y(n255) );
  OAI222X1M U257 ( .A0(n141), .A1(n242), .B0(n149), .B1(n243), .C0(n133), .C1(
        n244), .Y(n256) );
  OAI22X1M U258 ( .A0(n69), .A1(n234), .B0(n77), .B1(n235), .Y(n259) );
  OAI222X1M U259 ( .A0(n117), .A1(n239), .B0(n125), .B1(n240), .C0(n109), .C1(
        n241), .Y(n257) );
  NOR4X1M U260 ( .A(n230), .B(n231), .C(n232), .D(n233), .Y(n229) );
  OAI222X1M U261 ( .A0(n140), .A1(n242), .B0(n148), .B1(n243), .C0(n132), .C1(
        n244), .Y(n230) );
  OAI22X1M U262 ( .A0(n68), .A1(n234), .B0(n76), .B1(n235), .Y(n233) );
  OAI222X1M U263 ( .A0(n116), .A1(n239), .B0(n124), .B1(n240), .C0(n108), .C1(
        n241), .Y(n231) );
  OA21X2M U264 ( .A0(n505), .A1(n504), .B0(N78), .Y(READ_DATA[0]) );
  AO21XLM U265 ( .A0(REG0[0]), .A1(n226), .B0(n324), .Y(n505) );
  OA21X2M U266 ( .A0(n507), .A1(n506), .B0(N78), .Y(READ_DATA[1]) );
  AO21XLM U267 ( .A0(REG0[1]), .A1(n226), .B0(n312), .Y(n507) );
  OAI2B11XLM U268 ( .A1N(REG1[1]), .A0(n158), .B0(n304), .C0(n305), .Y(n506)
         );
  OA21X2M U269 ( .A0(n509), .A1(n508), .B0(N78), .Y(READ_DATA[2]) );
  AO21XLM U270 ( .A0(REG0[2]), .A1(n226), .B0(n302), .Y(n509) );
  OA21X2M U271 ( .A0(n511), .A1(n510), .B0(N78), .Y(READ_DATA[3]) );
  AO21XLM U272 ( .A0(REG0[3]), .A1(n226), .B0(n292), .Y(n511) );
  OAI2B11XLM U273 ( .A1N(n2), .A0(n158), .B0(n284), .C0(n285), .Y(n510) );
  OA21X2M U274 ( .A0(n513), .A1(n512), .B0(N78), .Y(READ_DATA[4]) );
  AO21XLM U275 ( .A0(REG0[4]), .A1(n226), .B0(n282), .Y(n513) );
  OAI222X1M U276 ( .A0(n220), .A1(n19), .B0(n218), .B1(n27), .C0(n222), .C1(
        n11), .Y(n324) );
  OAI222X1M U277 ( .A0(n220), .A1(n18), .B0(n218), .B1(n26), .C0(n222), .C1(
        n10), .Y(n312) );
  OAI222X1M U278 ( .A0(n220), .A1(n17), .B0(n218), .B1(n25), .C0(n222), .C1(n9), .Y(n302) );
  OAI222X1M U279 ( .A0(n220), .A1(n16), .B0(n218), .B1(n24), .C0(n222), .C1(n8), .Y(n292) );
  OAI222X1M U280 ( .A0(n220), .A1(n15), .B0(n218), .B1(n23), .C0(n222), .C1(n7), .Y(n282) );
  OAI222X1M U281 ( .A0(n220), .A1(n14), .B0(n218), .B1(n22), .C0(n222), .C1(n6), .Y(n272) );
  OAI222X1M U282 ( .A0(n220), .A1(n13), .B0(n218), .B1(n21), .C0(n222), .C1(n5), .Y(n262) );
  OAI222X1M U283 ( .A0(n220), .A1(n12), .B0(n218), .B1(n20), .C0(n222), .C1(n4), .Y(n252) );
  AOI211X2M U284 ( .A0(n245), .A1(Reg_File_8__1_), .B0(n310), .C0(n311), .Y(
        n304) );
  OAI222X1M U285 ( .A0(n42), .A1(n250), .B0(n50), .B1(n251), .C0(n216), .C1(
        n34), .Y(n310) );
  OAI22X1M U286 ( .A0(n58), .A1(n248), .B0(n66), .B1(n249), .Y(n311) );
  AOI211X2M U287 ( .A0(n245), .A1(Reg_File_8__3_), .B0(n290), .C0(n291), .Y(
        n284) );
  OAI222X1M U288 ( .A0(n40), .A1(n250), .B0(n48), .B1(n251), .C0(n216), .C1(
        n32), .Y(n290) );
  OAI22X1M U289 ( .A0(n56), .A1(n248), .B0(n64), .B1(n249), .Y(n291) );
  AOI211X2M U290 ( .A0(n245), .A1(Reg_File_8__2_), .B0(n300), .C0(n301), .Y(
        n294) );
  OAI222X1M U291 ( .A0(n41), .A1(n250), .B0(n49), .B1(n251), .C0(n216), .C1(
        n33), .Y(n300) );
  OAI22X1M U292 ( .A0(n57), .A1(n248), .B0(n65), .B1(n249), .Y(n301) );
  OAI22X1M U293 ( .A0(n542), .A1(n522), .B0(n184), .B1(n14), .Y(n476) );
  OAI22X1M U294 ( .A0(n549), .A1(n521), .B0(n183), .B1(n11), .Y(n479) );
  OAI22X1M U295 ( .A0(n540), .A1(n521), .B0(n183), .B1(n4), .Y(n486) );
  OAI22X1M U296 ( .A0(n549), .A1(n524), .B0(n186), .B1(n35), .Y(n455) );
  OAI22X1M U297 ( .A0(n548), .A1(n524), .B0(n186), .B1(n34), .Y(n456) );
  OAI22X1M U298 ( .A0(n546), .A1(n524), .B0(n186), .B1(n33), .Y(n457) );
  OAI22X1M U299 ( .A0(n544), .A1(n524), .B0(n186), .B1(n32), .Y(n458) );
  OAI22X1M U300 ( .A0(n543), .A1(n524), .B0(n186), .B1(n31), .Y(n459) );
  OAI22X1M U301 ( .A0(n542), .A1(n524), .B0(n186), .B1(n30), .Y(n460) );
  OAI22X1M U302 ( .A0(n541), .A1(n524), .B0(n186), .B1(n29), .Y(n461) );
  OAI22X1M U303 ( .A0(n540), .A1(n524), .B0(n186), .B1(n28), .Y(n462) );
  OAI22X1M U304 ( .A0(n549), .A1(n523), .B0(n185), .B1(n27), .Y(n463) );
  OAI22X1M U305 ( .A0(n548), .A1(n523), .B0(n185), .B1(n26), .Y(n464) );
  OAI22X1M U306 ( .A0(n546), .A1(n523), .B0(n185), .B1(n25), .Y(n465) );
  OAI22X1M U307 ( .A0(n544), .A1(n523), .B0(n185), .B1(n24), .Y(n466) );
  OAI22X1M U308 ( .A0(n543), .A1(n523), .B0(n185), .B1(n23), .Y(n467) );
  OAI22X1M U309 ( .A0(n542), .A1(n523), .B0(n185), .B1(n22), .Y(n468) );
  OAI22X1M U310 ( .A0(n541), .A1(n523), .B0(n185), .B1(n21), .Y(n469) );
  OAI22X1M U311 ( .A0(n540), .A1(n523), .B0(n185), .B1(n20), .Y(n470) );
  OAI22X1M U312 ( .A0(n549), .A1(n522), .B0(n184), .B1(n19), .Y(n471) );
  OAI22X1M U313 ( .A0(n548), .A1(n522), .B0(n184), .B1(n18), .Y(n472) );
  OAI22X1M U314 ( .A0(n546), .A1(n522), .B0(n184), .B1(n17), .Y(n473) );
  OAI22X1M U315 ( .A0(n544), .A1(n522), .B0(n184), .B1(n16), .Y(n474) );
  OAI22X1M U316 ( .A0(n543), .A1(n522), .B0(n184), .B1(n15), .Y(n475) );
  OAI22X1M U317 ( .A0(n541), .A1(n522), .B0(n184), .B1(n13), .Y(n477) );
  OAI22X1M U318 ( .A0(n540), .A1(n522), .B0(n184), .B1(n12), .Y(n478) );
  OAI22X1M U319 ( .A0(n548), .A1(n521), .B0(n183), .B1(n10), .Y(n480) );
  OAI22X1M U320 ( .A0(n546), .A1(n521), .B0(n183), .B1(n9), .Y(n481) );
  OAI22X1M U321 ( .A0(n544), .A1(n521), .B0(n183), .B1(n8), .Y(n482) );
  OAI22X1M U322 ( .A0(n543), .A1(n521), .B0(n183), .B1(n7), .Y(n483) );
  OAI22X1M U323 ( .A0(n542), .A1(n521), .B0(n183), .B1(n6), .Y(n484) );
  OAI22X1M U324 ( .A0(n541), .A1(n521), .B0(n183), .B1(n5), .Y(n485) );
  OAI22X1M U325 ( .A0(n187), .A1(n549), .B0(n539), .B1(n155), .Y(n327) );
  OAI22X1M U326 ( .A0(n187), .A1(n548), .B0(n539), .B1(n154), .Y(n328) );
  OAI22X1M U327 ( .A0(n187), .A1(n546), .B0(n539), .B1(n153), .Y(n329) );
  OAI22X1M U328 ( .A0(n187), .A1(n544), .B0(n539), .B1(n152), .Y(n330) );
  OAI22X1M U329 ( .A0(n187), .A1(n543), .B0(n539), .B1(n151), .Y(n331) );
  OAI22X1M U330 ( .A0(n187), .A1(n542), .B0(n539), .B1(n150), .Y(n332) );
  OAI22X1M U331 ( .A0(n187), .A1(n541), .B0(n539), .B1(n149), .Y(n333) );
  OAI22X1M U332 ( .A0(n187), .A1(n540), .B0(n539), .B1(n148), .Y(n334) );
  OAI22X1M U333 ( .A0(n549), .A1(n190), .B0(n538), .B1(n147), .Y(n335) );
  OAI22X1M U334 ( .A0(n548), .A1(n190), .B0(n538), .B1(n146), .Y(n336) );
  OAI22X1M U335 ( .A0(n546), .A1(n190), .B0(n538), .B1(n145), .Y(n337) );
  OAI22X1M U336 ( .A0(n544), .A1(n190), .B0(n538), .B1(n144), .Y(n338) );
  OAI22X1M U337 ( .A0(n543), .A1(n190), .B0(n538), .B1(n143), .Y(n339) );
  OAI22X1M U338 ( .A0(n542), .A1(n190), .B0(n538), .B1(n142), .Y(n340) );
  OAI22X1M U339 ( .A0(n541), .A1(n190), .B0(n538), .B1(n141), .Y(n341) );
  OAI22X1M U340 ( .A0(n540), .A1(n190), .B0(n538), .B1(n140), .Y(n342) );
  OAI22X1M U341 ( .A0(n549), .A1(n192), .B0(n537), .B1(n139), .Y(n343) );
  OAI22X1M U342 ( .A0(n548), .A1(n192), .B0(n537), .B1(n138), .Y(n344) );
  OAI22X1M U343 ( .A0(n546), .A1(n192), .B0(n537), .B1(n137), .Y(n345) );
  OAI22X1M U344 ( .A0(n544), .A1(n192), .B0(n537), .B1(n136), .Y(n346) );
  OAI22X1M U345 ( .A0(n543), .A1(n192), .B0(n537), .B1(n135), .Y(n347) );
  OAI22X1M U346 ( .A0(n542), .A1(n192), .B0(n537), .B1(n134), .Y(n348) );
  OAI22X1M U347 ( .A0(n541), .A1(n192), .B0(n537), .B1(n133), .Y(n349) );
  OAI22X1M U348 ( .A0(n540), .A1(n192), .B0(n537), .B1(n132), .Y(n350) );
  OAI22X1M U349 ( .A0(n549), .A1(n194), .B0(n536), .B1(n131), .Y(n351) );
  OAI22X1M U350 ( .A0(n548), .A1(n194), .B0(n536), .B1(n130), .Y(n352) );
  OAI22X1M U351 ( .A0(n546), .A1(n194), .B0(n536), .B1(n129), .Y(n353) );
  OAI22X1M U352 ( .A0(n544), .A1(n194), .B0(n536), .B1(n128), .Y(n354) );
  OAI22X1M U353 ( .A0(n543), .A1(n194), .B0(n536), .B1(n127), .Y(n355) );
  OAI22X1M U354 ( .A0(n542), .A1(n194), .B0(n536), .B1(n126), .Y(n356) );
  OAI22X1M U355 ( .A0(n541), .A1(n194), .B0(n536), .B1(n125), .Y(n357) );
  OAI22X1M U356 ( .A0(n540), .A1(n194), .B0(n536), .B1(n124), .Y(n358) );
  OAI22X1M U357 ( .A0(n549), .A1(n196), .B0(n535), .B1(n123), .Y(n359) );
  OAI22X1M U358 ( .A0(n548), .A1(n196), .B0(n535), .B1(n122), .Y(n360) );
  OAI22X1M U359 ( .A0(n546), .A1(n196), .B0(n535), .B1(n121), .Y(n361) );
  OAI22X1M U360 ( .A0(n544), .A1(n196), .B0(n535), .B1(n120), .Y(n362) );
  OAI22X1M U361 ( .A0(n543), .A1(n196), .B0(n535), .B1(n119), .Y(n363) );
  OAI22X1M U362 ( .A0(n542), .A1(n196), .B0(n535), .B1(n118), .Y(n364) );
  OAI22X1M U363 ( .A0(n541), .A1(n196), .B0(n535), .B1(n117), .Y(n365) );
  OAI22X1M U364 ( .A0(n540), .A1(n196), .B0(n535), .B1(n116), .Y(n366) );
  OAI22X1M U365 ( .A0(n549), .A1(n198), .B0(n534), .B1(n115), .Y(n367) );
  OAI22X1M U366 ( .A0(n548), .A1(n198), .B0(n534), .B1(n114), .Y(n368) );
  OAI22X1M U367 ( .A0(n546), .A1(n198), .B0(n534), .B1(n113), .Y(n369) );
  OAI22X1M U368 ( .A0(n544), .A1(n198), .B0(n534), .B1(n112), .Y(n370) );
  OAI22X1M U369 ( .A0(n543), .A1(n198), .B0(n534), .B1(n111), .Y(n371) );
  OAI22X1M U370 ( .A0(n542), .A1(n198), .B0(n534), .B1(n110), .Y(n372) );
  OAI22X1M U371 ( .A0(n541), .A1(n198), .B0(n534), .B1(n109), .Y(n373) );
  OAI22X1M U372 ( .A0(n540), .A1(n198), .B0(n534), .B1(n108), .Y(n374) );
  OAI22X1M U373 ( .A0(n549), .A1(n212), .B0(n526), .B1(n51), .Y(n439) );
  OAI22X1M U374 ( .A0(n548), .A1(n212), .B0(n526), .B1(n50), .Y(n440) );
  OAI22X1M U375 ( .A0(n546), .A1(n212), .B0(n526), .B1(n49), .Y(n441) );
  OAI22X1M U376 ( .A0(n544), .A1(n212), .B0(n526), .B1(n48), .Y(n442) );
  OAI22X1M U377 ( .A0(n543), .A1(n212), .B0(n526), .B1(n47), .Y(n443) );
  OAI22X1M U378 ( .A0(n542), .A1(n212), .B0(n526), .B1(n46), .Y(n444) );
  OAI22X1M U379 ( .A0(n541), .A1(n212), .B0(n526), .B1(n45), .Y(n445) );
  OAI22X1M U380 ( .A0(n540), .A1(n212), .B0(n526), .B1(n44), .Y(n446) );
  OAI22X1M U381 ( .A0(n549), .A1(n214), .B0(n525), .B1(n43), .Y(n447) );
  OAI22X1M U382 ( .A0(n548), .A1(n214), .B0(n525), .B1(n42), .Y(n448) );
  OAI22X1M U383 ( .A0(n546), .A1(n214), .B0(n525), .B1(n41), .Y(n449) );
  OAI22X1M U384 ( .A0(n544), .A1(n214), .B0(n525), .B1(n40), .Y(n450) );
  OAI22X1M U385 ( .A0(n543), .A1(n214), .B0(n525), .B1(n39), .Y(n451) );
  OAI22X1M U386 ( .A0(n542), .A1(n214), .B0(n525), .B1(n38), .Y(n452) );
  OAI22X1M U387 ( .A0(n541), .A1(n214), .B0(n525), .B1(n37), .Y(n453) );
  OAI22X1M U388 ( .A0(n540), .A1(n214), .B0(n525), .B1(n36), .Y(n454) );
  OAI2BB2X1M U389 ( .B0(n549), .B1(n225), .A0N(n225), .A1N(REG0[0]), .Y(n495)
         );
  OAI2BB2X1M U390 ( .B0(n548), .B1(n225), .A0N(n225), .A1N(REG0[1]), .Y(n496)
         );
  OAI2BB2X1M U391 ( .B0(n546), .B1(n225), .A0N(n225), .A1N(REG0[2]), .Y(n497)
         );
  OAI2BB2X1M U392 ( .B0(n544), .B1(n225), .A0N(n225), .A1N(REG0[3]), .Y(n498)
         );
  OAI2BB2X1M U393 ( .B0(n543), .B1(n225), .A0N(n225), .A1N(REG0[4]), .Y(n499)
         );
  MX2XLM U394 ( .A(REG0[7]), .B(WRITE_DATA[7]), .S0(n503), .Y(n502) );
  MX2XLM U395 ( .A(n2), .B(WRITE_DATA[3]), .S0(n157), .Y(n490) );
  MX2XLM U396 ( .A(REG1[1]), .B(WRITE_DATA[1]), .S0(n157), .Y(n488) );
  MX2XLM U397 ( .A(n156), .B(WRITE_DATA[2]), .S0(n157), .Y(n489) );
  OAI2B11XLM U398 ( .A1N(REG1[6]), .A0(n158), .B0(n254), .C0(n255), .Y(n516)
         );
  MX2XLM U399 ( .A(REG1[4]), .B(WRITE_DATA[4]), .S0(n157), .Y(n491) );
  OAI2B11XLM U400 ( .A1N(REG1[4]), .A0(n158), .B0(n274), .C0(n275), .Y(n512)
         );
  MX2XLM U401 ( .A(REG1[5]), .B(WRITE_DATA[5]), .S0(n157), .Y(n492) );
  OAI2B11XLM U402 ( .A1N(REG1[5]), .A0(n158), .B0(n264), .C0(n265), .Y(n514)
         );
  MX2XLM U403 ( .A(REG1[7]), .B(WRITE_DATA[7]), .S0(n157), .Y(n494) );
  MX2XLM U404 ( .A(REG1[6]), .B(WRITE_DATA[6]), .S0(n157), .Y(n493) );
  MX2XLM U405 ( .A(REG1[0]), .B(WRITE_DATA[0]), .S0(n157), .Y(n487) );
  OAI2B11XLM U406 ( .A1N(REG1[0]), .A0(n158), .B0(n314), .C0(n315), .Y(n504)
         );
  OAI2B11XLM U407 ( .A1N(REG1[7]), .A0(n158), .B0(n228), .C0(n229), .Y(n518)
         );
  AOI21X1M U408 ( .A0(ADDRESS[2]), .A1(n180), .B0(n181), .Y(n520) );
  NAND2BX1M U409 ( .AN(n520), .B(n182), .Y(N78) );
endmodule


module REGFILE_READ_WIDTH8 ( CLK, RST, READ_EN, READ_DATA, RdData, 
        RdData_Valid );
  input [7:0] READ_DATA;
  output [7:0] RdData;
  input CLK, RST, READ_EN;
  output RdData_Valid;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n1;

  DFFRQX2M RdData_reg_7_ ( .D(n9), .CK(CLK), .RN(RST), .Q(RdData[7]) );
  DFFRQX2M RdData_reg_6_ ( .D(n8), .CK(CLK), .RN(RST), .Q(RdData[6]) );
  DFFRQX2M RdData_reg_5_ ( .D(n7), .CK(CLK), .RN(RST), .Q(RdData[5]) );
  DFFRQX2M RdData_reg_4_ ( .D(n6), .CK(CLK), .RN(RST), .Q(RdData[4]) );
  DFFRQX2M RdData_reg_3_ ( .D(n5), .CK(CLK), .RN(RST), .Q(RdData[3]) );
  DFFRQX2M RdData_reg_2_ ( .D(n4), .CK(CLK), .RN(RST), .Q(RdData[2]) );
  DFFRQX2M RdData_reg_1_ ( .D(n3), .CK(CLK), .RN(RST), .Q(RdData[1]) );
  DFFRQX2M RdData_reg_0_ ( .D(n2), .CK(CLK), .RN(RST), .Q(RdData[0]) );
  DFFRQX2M RdData_Valid_reg ( .D(READ_EN), .CK(CLK), .RN(RST), .Q(RdData_Valid) );
  INVX2M U3 ( .A(READ_EN), .Y(n1) );
  AO22X1M U4 ( .A0(RdData[5]), .A1(n1), .B0(READ_DATA[5]), .B1(READ_EN), .Y(n7) );
  AO22X1M U5 ( .A0(RdData[6]), .A1(n1), .B0(READ_DATA[6]), .B1(READ_EN), .Y(n8) );
  AO22X1M U6 ( .A0(RdData[7]), .A1(n1), .B0(READ_DATA[7]), .B1(READ_EN), .Y(n9) );
  AO22X1M U7 ( .A0(RdData[0]), .A1(n1), .B0(READ_EN), .B1(READ_DATA[0]), .Y(n2) );
  AO22X1M U8 ( .A0(RdData[1]), .A1(n1), .B0(READ_DATA[1]), .B1(READ_EN), .Y(n3) );
  AO22X1M U9 ( .A0(RdData[2]), .A1(n1), .B0(READ_DATA[2]), .B1(READ_EN), .Y(n4) );
  AO22X1M U10 ( .A0(RdData[3]), .A1(n1), .B0(READ_DATA[3]), .B1(READ_EN), .Y(
        n5) );
  AO22X1M U11 ( .A0(RdData[4]), .A1(n1), .B0(READ_DATA[4]), .B1(READ_EN), .Y(
        n6) );
endmodule


module RegFile_WIDTH8_ADDR_WIDTH5 ( CLK, RST, WrEn, RdEn, Address, WrData, 
        RdData, RdData_Valid, REG0, REG1, REG2, REG3 );
  input [4:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_Valid;
  wire   write_en, N0, read_en, n1, n2, n3, n4;
  wire   [7:0] read_data;

  REGFILE_STORAGE_WIDTH8_DEPTH22_ADDR_WIDTH5 U_STORAGE ( .CLK(CLK), .RST(n1), 
        .WRITE_EN(write_en), .ADDRESS(Address), .WRITE_DATA(WrData), 
        .READ_DATA(read_data), .REG0(REG0), .REG1(REG1), .REG2(REG2), .REG3(
        REG3) );
  REGFILE_READ_WIDTH8 U_READ ( .CLK(CLK), .RST(n1), .READ_EN(read_en), 
        .READ_DATA(read_data), .RdData(RdData), .RdData_Valid(RdData_Valid) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
  NOR2BX2M U5 ( .AN(WrEn), .B(RdEn), .Y(write_en) );
  AND3X2M U6 ( .A(n4), .B(N0), .C(RdEn), .Y(read_en) );
  INVX2M U7 ( .A(WrEn), .Y(n4) );
  AOI21X1M U8 ( .A0(Address[2]), .A1(Address[1]), .B0(Address[3]), .Y(n3) );
  NAND2BX1M U9 ( .AN(n3), .B(Address[4]), .Y(N0) );
endmodule


module CLK_GATE ( CLK, CLK_EN, GATED_CLK );
  input CLK, CLK_EN;
  output GATED_CLK;


  TLATNCAX12M U_ICG ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module CLK_DIV_HALF_COUNT_0 ( RATIO, DIV_CLK, HALF_COUNT );
  input [7:0] RATIO;
  output [7:0] HALF_COUNT;
  input DIV_CLK;
  wire   N0;
  wire   [6:1] add_6_carry;

  AND2X2M U1 ( .A(RATIO[0]), .B(DIV_CLK), .Y(N0) );
  AND2X1M U2 ( .A(add_6_carry[6]), .B(RATIO[7]), .Y(HALF_COUNT[7]) );
  CLKXOR2X2M U3 ( .A(RATIO[7]), .B(add_6_carry[6]), .Y(HALF_COUNT[6]) );
  AND2X1M U4 ( .A(add_6_carry[5]), .B(RATIO[6]), .Y(add_6_carry[6]) );
  CLKXOR2X2M U5 ( .A(RATIO[6]), .B(add_6_carry[5]), .Y(HALF_COUNT[5]) );
  AND2X1M U6 ( .A(add_6_carry[4]), .B(RATIO[5]), .Y(add_6_carry[5]) );
  CLKXOR2X2M U7 ( .A(RATIO[5]), .B(add_6_carry[4]), .Y(HALF_COUNT[4]) );
  AND2X1M U8 ( .A(add_6_carry[3]), .B(RATIO[4]), .Y(add_6_carry[4]) );
  CLKXOR2X2M U9 ( .A(RATIO[4]), .B(add_6_carry[3]), .Y(HALF_COUNT[3]) );
  AND2X1M U10 ( .A(add_6_carry[2]), .B(RATIO[3]), .Y(add_6_carry[3]) );
  CLKXOR2X2M U11 ( .A(RATIO[3]), .B(add_6_carry[2]), .Y(HALF_COUNT[2]) );
  AND2X1M U12 ( .A(add_6_carry[1]), .B(RATIO[2]), .Y(add_6_carry[2]) );
  CLKXOR2X2M U13 ( .A(RATIO[2]), .B(add_6_carry[1]), .Y(HALF_COUNT[1]) );
  AND2X1M U14 ( .A(RATIO[1]), .B(N0), .Y(add_6_carry[1]) );
  CLKXOR2X2M U15 ( .A(N0), .B(RATIO[1]), .Y(HALF_COUNT[0]) );
endmodule


module CLK_DIV_COUNTER_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_DIV_COUNTER_0 ( CLK, RST, EN, RATIO, HALF_COUNT, DIV_CLK );
  input [7:0] RATIO;
  input [7:0] HALF_COUNT;
  input CLK, RST, EN;
  output DIV_CLK;
  wire   N3, N5, N6, N7, N8, N9, N10, N11, N12, N17, N18, N19, N20, N21, N22,
         N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, n9, n10, n11, n12,
         n13, n1, n2, n3, n4, n5, n6, n7, n8, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;
  wire   [7:0] count;
  wire   [7:0] ratio_reg;

  CLK_DIV_COUNTER_0_DW01_inc_0 add_25 ( .A(count), .SUM({N24, N23, N22, N21, 
        N20, N19, N18, N17}) );
  DFFRQX2M ratio_reg_reg_7_ ( .D(RATIO[7]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[7]) );
  DFFRQX2M ratio_reg_reg_6_ ( .D(RATIO[6]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[6]) );
  DFFRQX2M ratio_reg_reg_5_ ( .D(RATIO[5]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[5]) );
  DFFRQX2M ratio_reg_reg_4_ ( .D(RATIO[4]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[4]) );
  DFFRQX2M ratio_reg_reg_3_ ( .D(RATIO[3]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[3]) );
  DFFRQX2M ratio_reg_reg_2_ ( .D(RATIO[2]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[2]) );
  DFFRQX2M ratio_reg_reg_0_ ( .D(RATIO[0]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[0]) );
  DFFRQX2M ratio_reg_reg_1_ ( .D(RATIO[1]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[1]) );
  DFFRX1M count_reg_7_ ( .D(N32), .CK(CLK), .RN(RST), .Q(count[7]), .QN(n40)
         );
  DFFRX1M count_reg_6_ ( .D(N31), .CK(CLK), .RN(RST), .Q(count[6]), .QN(n39)
         );
  DFFRX1M count_reg_5_ ( .D(N30), .CK(CLK), .RN(RST), .Q(count[5]), .QN(n38)
         );
  DFFRX1M count_reg_4_ ( .D(N29), .CK(CLK), .RN(RST), .Q(count[4]), .QN(n37)
         );
  DFFRX1M count_reg_3_ ( .D(N28), .CK(CLK), .RN(RST), .Q(count[3]), .QN(n36)
         );
  DFFRX1M count_reg_2_ ( .D(N27), .CK(CLK), .RN(RST), .Q(count[2]), .QN(n35)
         );
  DFFRX1M count_reg_1_ ( .D(N26), .CK(CLK), .RN(RST), .Q(count[1]), .QN(n34)
         );
  DFFRX1M count_reg_0_ ( .D(N25), .CK(CLK), .RN(RST), .Q(count[0]) );
  DFFRX1M DIV_CLK_reg ( .D(n13), .CK(CLK), .RN(RST), .Q(DIV_CLK), .QN(n45) );
  OA21X2M U3 ( .A0(N12), .A1(n40), .B0(n33), .Y(n1) );
  INVX2M U4 ( .A(N9), .Y(n43) );
  INVX2M U5 ( .A(N7), .Y(n41) );
  INVX2M U6 ( .A(N8), .Y(n42) );
  NAND2BX2M U7 ( .AN(n9), .B(n1), .Y(n10) );
  OR2X2M U8 ( .A(HALF_COUNT[1]), .B(HALF_COUNT[0]), .Y(n2) );
  NOR2BX2M U9 ( .AN(N18), .B(n10), .Y(N26) );
  NOR2BX2M U10 ( .AN(N19), .B(n10), .Y(N27) );
  NOR2BX2M U11 ( .AN(N20), .B(n10), .Y(N28) );
  NOR2BX2M U12 ( .AN(N21), .B(n10), .Y(N29) );
  NOR2BX2M U13 ( .AN(N22), .B(n10), .Y(N30) );
  NOR2BX2M U14 ( .AN(N23), .B(n10), .Y(N31) );
  INVX2M U15 ( .A(N10), .Y(n44) );
  OAI32X1M U16 ( .A0(n1), .A1(DIV_CLK), .A2(n9), .B0(n10), .B1(n45), .Y(n13)
         );
  NOR2BX2M U17 ( .AN(N24), .B(n10), .Y(N32) );
  NOR2BX2M U18 ( .AN(N17), .B(n10), .Y(N25) );
  INVX2M U19 ( .A(HALF_COUNT[5]), .Y(n8) );
  NAND3BX2M U20 ( .AN(N3), .B(n11), .C(EN), .Y(n9) );
  OR4X1M U21 ( .A(RATIO[3]), .B(RATIO[2]), .C(RATIO[1]), .D(n12), .Y(n11) );
  OR4X1M U22 ( .A(RATIO[5]), .B(RATIO[4]), .C(RATIO[7]), .D(RATIO[6]), .Y(n12)
         );
  CLKINVX1M U23 ( .A(HALF_COUNT[0]), .Y(N5) );
  OAI2BB1X1M U24 ( .A0N(HALF_COUNT[0]), .A1N(HALF_COUNT[1]), .B0(n2), .Y(N6)
         );
  OR2X1M U25 ( .A(n2), .B(HALF_COUNT[2]), .Y(n3) );
  OAI2BB1X1M U26 ( .A0N(n2), .A1N(HALF_COUNT[2]), .B0(n3), .Y(N7) );
  OR2X1M U27 ( .A(n3), .B(HALF_COUNT[3]), .Y(n4) );
  OAI2BB1X1M U28 ( .A0N(n3), .A1N(HALF_COUNT[3]), .B0(n4), .Y(N8) );
  NOR2X1M U29 ( .A(n4), .B(HALF_COUNT[4]), .Y(n5) );
  AO21XLM U30 ( .A0(n4), .A1(HALF_COUNT[4]), .B0(n5), .Y(N9) );
  CLKNAND2X2M U31 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U32 ( .A0(n5), .A1(n8), .B0(n6), .Y(N10) );
  XNOR2X1M U33 ( .A(HALF_COUNT[6]), .B(n6), .Y(N11) );
  NOR2X1M U34 ( .A(HALF_COUNT[6]), .B(n6), .Y(n7) );
  CLKXOR2X2M U35 ( .A(HALF_COUNT[7]), .B(n7), .Y(N12) );
  NOR2BX1M U36 ( .AN(RATIO[0]), .B(ratio_reg[0]), .Y(n14) );
  OAI2B2X1M U37 ( .A1N(ratio_reg[1]), .A0(n14), .B0(RATIO[1]), .B1(n14), .Y(
        n25) );
  NOR2BX1M U38 ( .AN(ratio_reg[0]), .B(RATIO[0]), .Y(n15) );
  OAI2B2X1M U39 ( .A1N(RATIO[1]), .A0(n15), .B0(ratio_reg[1]), .B1(n15), .Y(
        n24) );
  CLKXOR2X2M U40 ( .A(RATIO[2]), .B(ratio_reg[2]), .Y(n17) );
  CLKXOR2X2M U41 ( .A(RATIO[3]), .B(ratio_reg[3]), .Y(n16) );
  NOR2X1M U42 ( .A(n17), .B(n16), .Y(n23) );
  CLKXOR2X2M U43 ( .A(RATIO[4]), .B(ratio_reg[4]), .Y(n21) );
  CLKXOR2X2M U44 ( .A(RATIO[5]), .B(ratio_reg[5]), .Y(n20) );
  CLKXOR2X2M U45 ( .A(RATIO[6]), .B(ratio_reg[6]), .Y(n19) );
  CLKXOR2X2M U46 ( .A(RATIO[7]), .B(ratio_reg[7]), .Y(n18) );
  NOR4X1M U47 ( .A(n21), .B(n20), .C(n19), .D(n18), .Y(n22) );
  NAND4X1M U48 ( .A(n25), .B(n24), .C(n23), .D(n22), .Y(N3) );
  NOR2X1M U49 ( .A(N11), .B(n39), .Y(n32) );
  AOI2BB1X1M U50 ( .A0N(N6), .A1N(n34), .B0(count[0]), .Y(n26) );
  AOI222X1M U51 ( .A0(N7), .A1(n35), .B0(n26), .B1(N5), .C0(N6), .C1(n34), .Y(
        n27) );
  AOI221XLM U52 ( .A0(count[3]), .A1(n42), .B0(count[2]), .B1(n41), .C0(n27), 
        .Y(n28) );
  AOI221XLM U53 ( .A0(N9), .A1(n37), .B0(N8), .B1(n36), .C0(n28), .Y(n29) );
  AOI221XLM U54 ( .A0(count[5]), .A1(n44), .B0(count[4]), .B1(n43), .C0(n29), 
        .Y(n30) );
  AOI221XLM U55 ( .A0(N11), .A1(n39), .B0(N10), .B1(n38), .C0(n30), .Y(n31) );
  OAI2BB2X1M U56 ( .B0(n32), .B1(n31), .A0N(n40), .A1N(N12), .Y(n33) );
endmodule


module CLK_DIV_OUTPUT_MUX_0 ( REF_CLK, DIV_CLK, EN, RATIO, OUT_CLK );
  input [7:0] RATIO;
  input REF_CLK, DIV_CLK, EN;
  output OUT_CLK;
  wire   N0, n1, n2;

  MX2X2M U1 ( .A(DIV_CLK), .B(REF_CLK), .S0(N0), .Y(OUT_CLK) );
  OAI2BB1X2M U2 ( .A0N(n1), .A1N(n2), .B0(EN), .Y(N0) );
  NOR3X2M U3 ( .A(RATIO[1]), .B(RATIO[3]), .C(RATIO[2]), .Y(n1) );
  NOR4X1M U4 ( .A(RATIO[7]), .B(RATIO[6]), .C(RATIO[5]), .D(RATIO[4]), .Y(n2)
         );
endmodule


module CLK_DIV_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   div_clk, n1;
  wire   [7:0] half_count;

  CLK_DIV_HALF_COUNT_0 U_HALF_COUNT ( .RATIO(i_div_ratio), .DIV_CLK(div_clk), 
        .HALF_COUNT(half_count) );
  CLK_DIV_COUNTER_0 U_COUNTER ( .CLK(i_ref_clk), .RST(n1), .EN(i_clk_en), 
        .RATIO(i_div_ratio), .HALF_COUNT(half_count), .DIV_CLK(div_clk) );
  CLK_DIV_OUTPUT_MUX_0 U_OUTPUT ( .REF_CLK(i_ref_clk), .DIV_CLK(div_clk), .EN(
        i_clk_en), .RATIO(i_div_ratio), .OUT_CLK(o_div_clk) );
  BUFX2M U1 ( .A(i_rst_n), .Y(n1) );
endmodule


module CLKDIV_MUX ( Prescale, DIV_RATIO_RX );
  input [5:0] Prescale;
  output [7:0] DIV_RATIO_RX;
  wire   n1, n2, n3;

  INVX2M U3 ( .A(1'b1), .Y(DIV_RATIO_RX[7]) );
  INVX2M U5 ( .A(1'b1), .Y(DIV_RATIO_RX[6]) );
  INVX2M U7 ( .A(1'b1), .Y(DIV_RATIO_RX[5]) );
  INVX2M U9 ( .A(1'b1), .Y(DIV_RATIO_RX[4]) );
  INVX2M U11 ( .A(1'b1), .Y(DIV_RATIO_RX[3]) );
  OAI21X2M U13 ( .A0(n1), .A1(n3), .B0(n2), .Y(DIV_RATIO_RX[0]) );
  AND2X2M U14 ( .A(n1), .B(n2), .Y(DIV_RATIO_RX[2]) );
  AND2X2M U15 ( .A(n2), .B(n3), .Y(DIV_RATIO_RX[1]) );
  NOR3BX2M U16 ( .AN(Prescale[4]), .B(Prescale[3]), .C(Prescale[5]), .Y(n3) );
  NOR3BX2M U17 ( .AN(Prescale[3]), .B(Prescale[4]), .C(Prescale[5]), .Y(n1) );
  NOR3X2M U18 ( .A(Prescale[2]), .B(Prescale[1]), .C(Prescale[0]), .Y(n2) );
endmodule


module CLK_DIV_HALF_COUNT_1 ( RATIO, DIV_CLK, HALF_COUNT );
  input [7:0] RATIO;
  output [7:0] HALF_COUNT;
  input DIV_CLK;
  wire   N0;
  wire   [6:1] add_6_carry;

  AND2X2M U1 ( .A(RATIO[0]), .B(DIV_CLK), .Y(N0) );
  AND2X1M U2 ( .A(add_6_carry[6]), .B(RATIO[7]), .Y(HALF_COUNT[7]) );
  CLKXOR2X2M U3 ( .A(RATIO[7]), .B(add_6_carry[6]), .Y(HALF_COUNT[6]) );
  AND2X1M U4 ( .A(add_6_carry[5]), .B(RATIO[6]), .Y(add_6_carry[6]) );
  CLKXOR2X2M U5 ( .A(RATIO[6]), .B(add_6_carry[5]), .Y(HALF_COUNT[5]) );
  AND2X1M U6 ( .A(add_6_carry[4]), .B(RATIO[5]), .Y(add_6_carry[5]) );
  CLKXOR2X2M U7 ( .A(RATIO[5]), .B(add_6_carry[4]), .Y(HALF_COUNT[4]) );
  AND2X1M U8 ( .A(add_6_carry[3]), .B(RATIO[4]), .Y(add_6_carry[4]) );
  CLKXOR2X2M U9 ( .A(RATIO[4]), .B(add_6_carry[3]), .Y(HALF_COUNT[3]) );
  AND2X1M U10 ( .A(add_6_carry[2]), .B(RATIO[3]), .Y(add_6_carry[3]) );
  CLKXOR2X2M U11 ( .A(RATIO[3]), .B(add_6_carry[2]), .Y(HALF_COUNT[2]) );
  AND2X1M U12 ( .A(add_6_carry[1]), .B(RATIO[2]), .Y(add_6_carry[2]) );
  CLKXOR2X2M U13 ( .A(RATIO[2]), .B(add_6_carry[1]), .Y(HALF_COUNT[1]) );
  AND2X1M U14 ( .A(RATIO[1]), .B(N0), .Y(add_6_carry[1]) );
  CLKXOR2X2M U15 ( .A(N0), .B(RATIO[1]), .Y(HALF_COUNT[0]) );
endmodule


module CLK_DIV_COUNTER_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_DIV_COUNTER_1 ( CLK, RST, EN, RATIO, HALF_COUNT, DIV_CLK );
  input [7:0] RATIO;
  input [7:0] HALF_COUNT;
  input CLK, RST, EN;
  output DIV_CLK;
  wire   N3, N5, N6, N7, N8, N9, N10, N11, N12, N17, N18, N19, N20, N21, N22,
         N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, n1, n2, n3, n4, n5,
         n6, n7, n8, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;
  wire   [7:0] count;
  wire   [7:0] ratio_reg;

  CLK_DIV_COUNTER_1_DW01_inc_0 add_25 ( .A(count), .SUM({N24, N23, N22, N21, 
        N20, N19, N18, N17}) );
  DFFRQX2M ratio_reg_reg_7_ ( .D(RATIO[7]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[7]) );
  DFFRQX2M ratio_reg_reg_6_ ( .D(RATIO[6]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[6]) );
  DFFRQX2M ratio_reg_reg_5_ ( .D(RATIO[5]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[5]) );
  DFFRQX2M ratio_reg_reg_4_ ( .D(RATIO[4]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[4]) );
  DFFRQX2M ratio_reg_reg_3_ ( .D(RATIO[3]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[3]) );
  DFFRQX2M ratio_reg_reg_2_ ( .D(RATIO[2]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[2]) );
  DFFRQX2M ratio_reg_reg_0_ ( .D(RATIO[0]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[0]) );
  DFFRQX2M ratio_reg_reg_1_ ( .D(RATIO[1]), .CK(CLK), .RN(RST), .Q(
        ratio_reg[1]) );
  DFFRQX2M count_reg_7_ ( .D(N32), .CK(CLK), .RN(RST), .Q(count[7]) );
  DFFRQX2M count_reg_6_ ( .D(N31), .CK(CLK), .RN(RST), .Q(count[6]) );
  DFFRQX2M count_reg_5_ ( .D(N30), .CK(CLK), .RN(RST), .Q(count[5]) );
  DFFRQX2M count_reg_0_ ( .D(N25), .CK(CLK), .RN(RST), .Q(count[0]) );
  DFFRQX2M count_reg_1_ ( .D(N26), .CK(CLK), .RN(RST), .Q(count[1]) );
  DFFRQX2M count_reg_3_ ( .D(N28), .CK(CLK), .RN(RST), .Q(count[3]) );
  DFFRQX2M count_reg_4_ ( .D(N29), .CK(CLK), .RN(RST), .Q(count[4]) );
  DFFRQX2M count_reg_2_ ( .D(N27), .CK(CLK), .RN(RST), .Q(count[2]) );
  DFFRQX2M DIV_CLK_reg ( .D(n46), .CK(CLK), .RN(RST), .Q(DIV_CLK) );
  OA21X2M U3 ( .A0(N12), .A1(n40), .B0(n33), .Y(n1) );
  OR2X2M U4 ( .A(HALF_COUNT[1]), .B(HALF_COUNT[0]), .Y(n2) );
  INVX2M U5 ( .A(N9), .Y(n43) );
  INVX2M U6 ( .A(N7), .Y(n41) );
  INVX2M U7 ( .A(N8), .Y(n42) );
  NAND2BX2M U8 ( .AN(n50), .B(n1), .Y(n49) );
  NOR2BX2M U9 ( .AN(N18), .B(n49), .Y(N26) );
  NOR2BX2M U10 ( .AN(N19), .B(n49), .Y(N27) );
  NOR2BX2M U11 ( .AN(N20), .B(n49), .Y(N28) );
  NOR2BX2M U12 ( .AN(N21), .B(n49), .Y(N29) );
  NOR2BX2M U13 ( .AN(N22), .B(n49), .Y(N30) );
  NOR2BX2M U14 ( .AN(N23), .B(n49), .Y(N31) );
  INVX2M U15 ( .A(count[7]), .Y(n40) );
  INVX2M U16 ( .A(count[5]), .Y(n38) );
  INVX2M U17 ( .A(N10), .Y(n44) );
  INVX2M U18 ( .A(count[4]), .Y(n37) );
  INVX2M U19 ( .A(count[3]), .Y(n36) );
  INVX2M U20 ( .A(count[2]), .Y(n35) );
  OAI32X1M U21 ( .A0(n1), .A1(DIV_CLK), .A2(n50), .B0(n49), .B1(n45), .Y(n46)
         );
  INVX2M U22 ( .A(DIV_CLK), .Y(n45) );
  NOR2BX2M U23 ( .AN(N24), .B(n49), .Y(N32) );
  NOR2BX2M U24 ( .AN(N17), .B(n49), .Y(N25) );
  INVX2M U25 ( .A(count[1]), .Y(n34) );
  NAND3BX2M U26 ( .AN(N3), .B(n48), .C(EN), .Y(n50) );
  OR4X1M U27 ( .A(RATIO[3]), .B(RATIO[2]), .C(RATIO[1]), .D(n47), .Y(n48) );
  OR4X1M U28 ( .A(RATIO[5]), .B(RATIO[4]), .C(RATIO[7]), .D(RATIO[6]), .Y(n47)
         );
  INVX2M U29 ( .A(count[6]), .Y(n39) );
  INVX2M U30 ( .A(HALF_COUNT[5]), .Y(n8) );
  CLKINVX1M U31 ( .A(HALF_COUNT[0]), .Y(N5) );
  OAI2BB1X1M U32 ( .A0N(HALF_COUNT[0]), .A1N(HALF_COUNT[1]), .B0(n2), .Y(N6)
         );
  OR2X1M U33 ( .A(n2), .B(HALF_COUNT[2]), .Y(n3) );
  OAI2BB1X1M U34 ( .A0N(n2), .A1N(HALF_COUNT[2]), .B0(n3), .Y(N7) );
  OR2X1M U35 ( .A(n3), .B(HALF_COUNT[3]), .Y(n4) );
  OAI2BB1X1M U36 ( .A0N(n3), .A1N(HALF_COUNT[3]), .B0(n4), .Y(N8) );
  NOR2X1M U37 ( .A(n4), .B(HALF_COUNT[4]), .Y(n5) );
  AO21XLM U38 ( .A0(n4), .A1(HALF_COUNT[4]), .B0(n5), .Y(N9) );
  CLKNAND2X2M U39 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U40 ( .A0(n5), .A1(n8), .B0(n6), .Y(N10) );
  XNOR2X1M U41 ( .A(HALF_COUNT[6]), .B(n6), .Y(N11) );
  NOR2X1M U42 ( .A(HALF_COUNT[6]), .B(n6), .Y(n7) );
  CLKXOR2X2M U43 ( .A(HALF_COUNT[7]), .B(n7), .Y(N12) );
  NOR2BX1M U44 ( .AN(RATIO[0]), .B(ratio_reg[0]), .Y(n14) );
  OAI2B2X1M U45 ( .A1N(ratio_reg[1]), .A0(n14), .B0(RATIO[1]), .B1(n14), .Y(
        n25) );
  NOR2BX1M U46 ( .AN(ratio_reg[0]), .B(RATIO[0]), .Y(n15) );
  OAI2B2X1M U47 ( .A1N(RATIO[1]), .A0(n15), .B0(ratio_reg[1]), .B1(n15), .Y(
        n24) );
  CLKXOR2X2M U48 ( .A(RATIO[2]), .B(ratio_reg[2]), .Y(n17) );
  CLKXOR2X2M U49 ( .A(RATIO[3]), .B(ratio_reg[3]), .Y(n16) );
  NOR2X1M U50 ( .A(n17), .B(n16), .Y(n23) );
  CLKXOR2X2M U51 ( .A(RATIO[4]), .B(ratio_reg[4]), .Y(n21) );
  CLKXOR2X2M U52 ( .A(RATIO[5]), .B(ratio_reg[5]), .Y(n20) );
  CLKXOR2X2M U53 ( .A(RATIO[6]), .B(ratio_reg[6]), .Y(n19) );
  CLKXOR2X2M U54 ( .A(RATIO[7]), .B(ratio_reg[7]), .Y(n18) );
  NOR4X1M U55 ( .A(n21), .B(n20), .C(n19), .D(n18), .Y(n22) );
  NAND4X1M U56 ( .A(n25), .B(n24), .C(n23), .D(n22), .Y(N3) );
  NOR2X1M U57 ( .A(N11), .B(n39), .Y(n32) );
  AOI2BB1X1M U58 ( .A0N(N6), .A1N(n34), .B0(count[0]), .Y(n26) );
  AOI222X1M U59 ( .A0(N7), .A1(n35), .B0(n26), .B1(N5), .C0(N6), .C1(n34), .Y(
        n27) );
  AOI221XLM U60 ( .A0(count[3]), .A1(n42), .B0(count[2]), .B1(n41), .C0(n27), 
        .Y(n28) );
  AOI221XLM U61 ( .A0(N9), .A1(n37), .B0(N8), .B1(n36), .C0(n28), .Y(n29) );
  AOI221XLM U62 ( .A0(count[5]), .A1(n44), .B0(count[4]), .B1(n43), .C0(n29), 
        .Y(n30) );
  AOI221XLM U63 ( .A0(N11), .A1(n39), .B0(N10), .B1(n38), .C0(n30), .Y(n31) );
  OAI2BB2X1M U64 ( .B0(n32), .B1(n31), .A0N(n40), .A1N(N12), .Y(n33) );
endmodule


module CLK_DIV_OUTPUT_MUX_1 ( REF_CLK, DIV_CLK, EN, RATIO, OUT_CLK );
  input [7:0] RATIO;
  input REF_CLK, DIV_CLK, EN;
  output OUT_CLK;
  wire   N0, n3, n4;

  MX2X2M U1 ( .A(DIV_CLK), .B(REF_CLK), .S0(N0), .Y(OUT_CLK) );
  OAI2BB1X2M U2 ( .A0N(n4), .A1N(n3), .B0(EN), .Y(N0) );
  NOR4X1M U3 ( .A(RATIO[7]), .B(RATIO[6]), .C(RATIO[5]), .D(RATIO[4]), .Y(n3)
         );
  NOR3X2M U4 ( .A(RATIO[1]), .B(RATIO[3]), .C(RATIO[2]), .Y(n4) );
endmodule


module CLK_DIV_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   div_clk, n1;
  wire   [7:0] half_count;

  CLK_DIV_HALF_COUNT_1 U_HALF_COUNT ( .RATIO(i_div_ratio), .DIV_CLK(div_clk), 
        .HALF_COUNT(half_count) );
  CLK_DIV_COUNTER_1 U_COUNTER ( .CLK(i_ref_clk), .RST(n1), .EN(i_clk_en), 
        .RATIO(i_div_ratio), .HALF_COUNT(half_count), .DIV_CLK(div_clk) );
  CLK_DIV_OUTPUT_MUX_1 U_OUTPUT ( .REF_CLK(i_ref_clk), .DIV_CLK(div_clk), .EN(
        i_clk_en), .RATIO(i_div_ratio), .OUT_CLK(o_div_clk) );
  BUFX2M U1 ( .A(i_rst_n), .Y(n1) );
endmodule


module TX_DATA_REG ( CLK, RST, ACCEPT, P_DATA, DATA_OUT );
  input [7:0] P_DATA;
  output [7:0] DATA_OUT;
  input CLK, RST, ACCEPT;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n1;

  DFFRQX2M DATA_OUT_reg_7_ ( .D(n9), .CK(CLK), .RN(RST), .Q(DATA_OUT[7]) );
  DFFRQX2M DATA_OUT_reg_6_ ( .D(n8), .CK(CLK), .RN(RST), .Q(DATA_OUT[6]) );
  DFFRQX2M DATA_OUT_reg_5_ ( .D(n7), .CK(CLK), .RN(RST), .Q(DATA_OUT[5]) );
  DFFRQX2M DATA_OUT_reg_4_ ( .D(n6), .CK(CLK), .RN(RST), .Q(DATA_OUT[4]) );
  DFFRQX2M DATA_OUT_reg_3_ ( .D(n5), .CK(CLK), .RN(RST), .Q(DATA_OUT[3]) );
  DFFRQX2M DATA_OUT_reg_2_ ( .D(n4), .CK(CLK), .RN(RST), .Q(DATA_OUT[2]) );
  DFFRQX2M DATA_OUT_reg_1_ ( .D(n3), .CK(CLK), .RN(RST), .Q(DATA_OUT[1]) );
  DFFRQX2M DATA_OUT_reg_0_ ( .D(n2), .CK(CLK), .RN(RST), .Q(DATA_OUT[0]) );
  INVX2M U2 ( .A(ACCEPT), .Y(n1) );
  AO22X1M U3 ( .A0(P_DATA[7]), .A1(ACCEPT), .B0(DATA_OUT[7]), .B1(n1), .Y(n9)
         );
  AO22X1M U4 ( .A0(P_DATA[6]), .A1(ACCEPT), .B0(DATA_OUT[6]), .B1(n1), .Y(n8)
         );
  AO22X1M U5 ( .A0(P_DATA[2]), .A1(ACCEPT), .B0(DATA_OUT[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U6 ( .A0(P_DATA[3]), .A1(ACCEPT), .B0(DATA_OUT[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U7 ( .A0(P_DATA[0]), .A1(ACCEPT), .B0(DATA_OUT[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U8 ( .A0(P_DATA[1]), .A1(ACCEPT), .B0(DATA_OUT[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U9 ( .A0(P_DATA[4]), .A1(ACCEPT), .B0(DATA_OUT[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(P_DATA[5]), .A1(ACCEPT), .B0(DATA_OUT[5]), .B1(n1), .Y(n7)
         );
endmodule


module TX_FSM ( DATA_VALID, PAR_EN, ser_done, CLK, RST, ser_en, mux_sel, Busy
 );
  output [1:0] mux_sel;
  input DATA_VALID, PAR_EN, ser_done, CLK, RST;
  output ser_en, Busy;
  wire   par_en_reg, n2, n3, n6, n7, n9, n10, n11, n1, n4, n5, n8;
  wire   [2:0] next_state;
  wire   [2:0] current_state;

  DFFRQX2M par_en_reg_reg ( .D(n11), .CK(CLK), .RN(RST), .Q(par_en_reg) );
  DFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  INVX2M U3 ( .A(ser_en), .Y(mux_sel[0]) );
  INVX2M U4 ( .A(n3), .Y(mux_sel[1]) );
  AOI21X2M U5 ( .A0(n5), .A1(n2), .B0(n3), .Y(next_state[2]) );
  XNOR2X2M U6 ( .A(current_state[1]), .B(current_state[0]), .Y(n10) );
  NOR2X2M U7 ( .A(n10), .B(current_state[2]), .Y(ser_en) );
  NAND2X2M U8 ( .A(current_state[1]), .B(n8), .Y(n3) );
  INVX2M U9 ( .A(current_state[2]), .Y(n8) );
  OAI211X2M U10 ( .A0(current_state[2]), .A1(n5), .B0(n9), .C0(mux_sel[0]), 
        .Y(Busy) );
  NAND3X2M U11 ( .A(n10), .B(n5), .C(current_state[2]), .Y(n9) );
  OAI31X1M U12 ( .A0(n6), .A1(n3), .A2(n4), .B0(n7), .Y(next_state[0]) );
  NAND2X2M U13 ( .A(ser_done), .B(n5), .Y(n6) );
  NAND4BX1M U14 ( .AN(current_state[1]), .B(DATA_VALID), .C(n5), .D(n8), .Y(n7) );
  INVX2M U15 ( .A(current_state[0]), .Y(n5) );
  AO2B2X2M U16 ( .B0(n7), .B1(par_en_reg), .A0(PAR_EN), .A1N(n7), .Y(n11) );
  OAI33X2M U17 ( .A0(n5), .A1(current_state[2]), .A2(current_state[1]), .B0(n3), .B1(current_state[0]), .B2(n1), .Y(next_state[1]) );
  INVX2M U18 ( .A(n2), .Y(n1) );
  NAND2X2M U19 ( .A(ser_done), .B(n4), .Y(n2) );
  INVX2M U20 ( .A(par_en_reg), .Y(n4) );
endmodule


module TX_SERIALIZER ( P_DATA, ser_en, CLK, RST, ser_data, ser_done );
  input [7:0] P_DATA;
  input ser_en, CLK, RST;
  output ser_data, ser_done;
  wire   N1, N2, N3, ser_data_next, ser_done_next, N9, n3, n4, n5, n7, n8, n9,
         n12, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n1, n2,
         n6, n10, n11, n13, n14, n26, n27, n28, n29, n30, n31, n32;
  wire   [7:0] data_reg;

  DFFRQX2M data_reg_reg_3_ ( .D(n18), .CK(CLK), .RN(RST), .Q(data_reg[3]) );
  DFFRQX2M data_reg_reg_2_ ( .D(n17), .CK(CLK), .RN(RST), .Q(data_reg[2]) );
  DFFRQX2M ser_done_reg ( .D(ser_done_next), .CK(CLK), .RN(RST), .Q(ser_done)
         );
  DFFRQX2M count_reg_2_ ( .D(n23), .CK(CLK), .RN(RST), .Q(N3) );
  DFFRQX2M data_reg_reg_0_ ( .D(n15), .CK(CLK), .RN(RST), .Q(data_reg[0]) );
  DFFRQX2M data_reg_reg_5_ ( .D(n20), .CK(CLK), .RN(RST), .Q(data_reg[5]) );
  DFFRQX2M data_reg_reg_1_ ( .D(n16), .CK(CLK), .RN(RST), .Q(data_reg[1]) );
  DFFRQX2M data_reg_reg_6_ ( .D(n21), .CK(CLK), .RN(RST), .Q(data_reg[6]) );
  DFFRQX2M data_reg_reg_4_ ( .D(n19), .CK(CLK), .RN(RST), .Q(data_reg[4]) );
  DFFRQX2M data_reg_reg_7_ ( .D(n22), .CK(CLK), .RN(RST), .Q(data_reg[7]) );
  DFFRQX2M count_reg_0_ ( .D(n25), .CK(CLK), .RN(RST), .Q(N1) );
  DFFRQX2M count_reg_1_ ( .D(n24), .CK(CLK), .RN(RST), .Q(N2) );
  DFFRQX2M ser_data_reg ( .D(ser_data_next), .CK(CLK), .RN(RST), .Q(ser_data)
         );
  INVX2M U3 ( .A(n7), .Y(n30) );
  INVX2M U4 ( .A(n4), .Y(n29) );
  INVX2M U5 ( .A(ser_done_next), .Y(n28) );
  NAND2X2M U6 ( .A(n8), .B(ser_en), .Y(n7) );
  NOR2X2M U7 ( .A(n32), .B(n8), .Y(n4) );
  NOR2X2M U8 ( .A(n29), .B(n5), .Y(ser_done_next) );
  INVX2M U9 ( .A(ser_en), .Y(n32) );
  INVX2M U10 ( .A(n1), .Y(n27) );
  NOR3X2M U11 ( .A(N2), .B(N3), .C(n1), .Y(n8) );
  OAI2BB2X1M U12 ( .B0(n30), .B1(n31), .A0N(P_DATA[7]), .A1N(n30), .Y(n22) );
  OAI32X1M U13 ( .A0(n29), .A1(N2), .A2(n27), .B0(n12), .B1(n26), .Y(n24) );
  AOI21X2M U14 ( .A0(n4), .A1(n27), .B0(ser_done_next), .Y(n12) );
  OAI21X2M U15 ( .A0(N1), .A1(n32), .B0(n28), .Y(n25) );
  OAI21X2M U16 ( .A0(n28), .A1(n31), .B0(n3), .Y(ser_data_next) );
  AOI32X1M U17 ( .A0(n4), .A1(n5), .A2(N9), .B0(P_DATA[0]), .B1(n30), .Y(n3)
         );
  BUFX2M U18 ( .A(N1), .Y(n1) );
  NOR2X2M U19 ( .A(n9), .B(n29), .Y(n23) );
  AOI21X2M U20 ( .A0(N2), .A1(n1), .B0(N3), .Y(n9) );
  INVX2M U21 ( .A(N2), .Y(n26) );
  AO22X1M U22 ( .A0(n30), .A1(P_DATA[0]), .B0(data_reg[0]), .B1(n7), .Y(n15)
         );
  AO22X1M U23 ( .A0(data_reg[1]), .A1(n7), .B0(P_DATA[1]), .B1(n30), .Y(n16)
         );
  AO22X1M U24 ( .A0(data_reg[2]), .A1(n7), .B0(P_DATA[2]), .B1(n30), .Y(n17)
         );
  AO22X1M U25 ( .A0(data_reg[3]), .A1(n7), .B0(P_DATA[3]), .B1(n30), .Y(n18)
         );
  AO22X1M U26 ( .A0(data_reg[4]), .A1(n7), .B0(P_DATA[4]), .B1(n30), .Y(n19)
         );
  AO22X1M U27 ( .A0(data_reg[5]), .A1(n7), .B0(P_DATA[5]), .B1(n30), .Y(n20)
         );
  AO22X1M U28 ( .A0(data_reg[6]), .A1(n7), .B0(P_DATA[6]), .B1(n30), .Y(n21)
         );
  NAND3X2M U29 ( .A(N2), .B(n1), .C(N3), .Y(n5) );
  INVX2M U30 ( .A(data_reg[7]), .Y(n31) );
  AOI22X1M U31 ( .A0(data_reg[2]), .A1(n27), .B0(data_reg[3]), .B1(n1), .Y(n6)
         );
  AOI22X1M U32 ( .A0(data_reg[0]), .A1(n27), .B0(data_reg[1]), .B1(n1), .Y(n2)
         );
  OA22X1M U33 ( .A0(n26), .A1(n6), .B0(N2), .B1(n2), .Y(n14) );
  AOI22X1M U34 ( .A0(data_reg[6]), .A1(n27), .B0(data_reg[7]), .B1(n1), .Y(n11) );
  AOI22X1M U35 ( .A0(data_reg[4]), .A1(n27), .B0(data_reg[5]), .B1(n1), .Y(n10) );
  OAI22X1M U36 ( .A0(n11), .A1(n26), .B0(N2), .B1(n10), .Y(n13) );
  OAI2BB2X1M U37 ( .B0(n14), .B1(N3), .A0N(N3), .A1N(n13), .Y(N9) );
endmodule


module TX_PARITY_CALC ( P_DATA, DATA_VALID, PAR_TYP, CLK, RST, par_bit );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_TYP, CLK, RST;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n7, n2;

  DFFRQX2M par_bit_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(par_bit) );
  XNOR2X2M U2 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XOR3XLM U3 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n7) );
  INVX2M U6 ( .A(DATA_VALID), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module TX_MUX ( mux_sel, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n2, n3, n1;

  OAI21X4M U3 ( .A0(n2), .A1(n1), .B0(n3), .Y(TX_OUT) );
  NAND3X2M U4 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module UART_TX ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, Busy
 );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST;
  output TX_OUT, Busy;
  wire   accept, ser_done, ser_en, ser_data, par_bit, n1, n2;
  wire   [7:0] data_reg;
  wire   [1:0] mux_sel;

  TX_DATA_REG U_DATA_REG ( .CLK(CLK), .RST(n1), .ACCEPT(accept), .P_DATA(
        P_DATA), .DATA_OUT(data_reg) );
  TX_FSM U_FSM ( .DATA_VALID(accept), .PAR_EN(PAR_EN), .ser_done(ser_done), 
        .CLK(CLK), .RST(n1), .ser_en(ser_en), .mux_sel(mux_sel), .Busy(Busy)
         );
  TX_SERIALIZER U_SERIALIZER ( .P_DATA(data_reg), .ser_en(ser_en), .CLK(CLK), 
        .RST(n1), .ser_data(ser_data), .ser_done(ser_done) );
  TX_PARITY_CALC U_PARITY ( .P_DATA(P_DATA), .DATA_VALID(accept), .PAR_TYP(
        PAR_TYP), .CLK(CLK), .RST(n1), .par_bit(par_bit) );
  TX_MUX U_MUX ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  NOR2BX2M U3 ( .AN(DATA_VALID), .B(Busy), .Y(accept) );
endmodule


module DF_SYNC_1_2_1 ( CLK, RST, DIN, DOUT );
  input [0:0] DIN;
  output [0:0] DOUT;
  input CLK, RST;
  wire   sync_ff_0__0_;

  DFFSQX2M sync_ff_reg_1__0_ ( .D(sync_ff_0__0_), .CK(CLK), .SN(RST), .Q(
        DOUT[0]) );
  DFFSQX2M sync_ff_reg_0__0_ ( .D(DIN[0]), .CK(CLK), .SN(RST), .Q(
        sync_ff_0__0_) );
endmodule


module RX_INPUT_SYNC ( CLK, RST, RX_IN, RX_SYNC );
  input CLK, RST, RX_IN;
  output RX_SYNC;


  DF_SYNC_1_2_1 U_SYNC ( .CLK(CLK), .RST(RST), .DIN(RX_IN), .DOUT(RX_SYNC) );
endmodule


module RX_CONFIG_REG ( CLK, RST, FRAME_START, Prescale, PAR_EN, PAR_TYP, 
        PRESCALE_REG, PAR_EN_REG, PAR_TYP_REG );
  input [5:0] Prescale;
  output [5:0] PRESCALE_REG;
  input CLK, RST, FRAME_START, PAR_EN, PAR_TYP;
  output PAR_EN_REG, PAR_TYP_REG;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n1;

  DFFRQX2M PAR_TYP_REG_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(PAR_TYP_REG) );
  DFFRQX2M PAR_EN_REG_reg ( .D(n3), .CK(CLK), .RN(RST), .Q(PAR_EN_REG) );
  DFFSQX2M PRESCALE_REG_reg_5_ ( .D(n9), .CK(CLK), .SN(RST), .Q(
        PRESCALE_REG[5]) );
  DFFRQX2M PRESCALE_REG_reg_0_ ( .D(n4), .CK(CLK), .RN(RST), .Q(
        PRESCALE_REG[0]) );
  DFFRQX2M PRESCALE_REG_reg_1_ ( .D(n5), .CK(CLK), .RN(RST), .Q(
        PRESCALE_REG[1]) );
  DFFRQX2M PRESCALE_REG_reg_4_ ( .D(n8), .CK(CLK), .RN(RST), .Q(
        PRESCALE_REG[4]) );
  DFFRQX2M PRESCALE_REG_reg_3_ ( .D(n7), .CK(CLK), .RN(RST), .Q(
        PRESCALE_REG[3]) );
  DFFRQX2M PRESCALE_REG_reg_2_ ( .D(n6), .CK(CLK), .RN(RST), .Q(
        PRESCALE_REG[2]) );
  INVX2M U2 ( .A(FRAME_START), .Y(n1) );
  AO22X1M U3 ( .A0(PAR_TYP), .A1(FRAME_START), .B0(PAR_TYP_REG), .B1(n1), .Y(
        n2) );
  AO22X1M U4 ( .A0(PAR_EN), .A1(FRAME_START), .B0(PAR_EN_REG), .B1(n1), .Y(n3)
         );
  AO22X1M U5 ( .A0(Prescale[0]), .A1(FRAME_START), .B0(PRESCALE_REG[0]), .B1(
        n1), .Y(n4) );
  AO22X1M U6 ( .A0(Prescale[1]), .A1(FRAME_START), .B0(PRESCALE_REG[1]), .B1(
        n1), .Y(n5) );
  AO22X1M U7 ( .A0(Prescale[2]), .A1(FRAME_START), .B0(PRESCALE_REG[2]), .B1(
        n1), .Y(n6) );
  AO22X1M U8 ( .A0(Prescale[3]), .A1(FRAME_START), .B0(PRESCALE_REG[3]), .B1(
        n1), .Y(n7) );
  AO22X1M U9 ( .A0(Prescale[4]), .A1(FRAME_START), .B0(PRESCALE_REG[4]), .B1(
        n1), .Y(n8) );
  AO22X1M U10 ( .A0(Prescale[5]), .A1(FRAME_START), .B0(PRESCALE_REG[5]), .B1(
        n1), .Y(n9) );
endmodule


module RX_FSM ( CLK, RST, RX_SYNC, PRESCALE_OK, PAR_EN, SAMPLE_READY, BIT_DONE, 
        START_GLITCH, BIT_COUNT, FRAME_START, COUNT_EN, DATA_STATE, DATA_LOAD, 
        START_CHECK, PARITY_CHECK, STOP_CHECK );
  input [2:0] BIT_COUNT;
  input CLK, RST, RX_SYNC, PRESCALE_OK, PAR_EN, SAMPLE_READY, BIT_DONE,
         START_GLITCH;
  output FRAME_START, COUNT_EN, DATA_STATE, DATA_LOAD, START_CHECK,
         PARITY_CHECK, STOP_CHECK;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n1, n2, n4, n5,
         n6, n7;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  NOR2BX2M U3 ( .AN(next_state[0]), .B(COUNT_EN), .Y(FRAME_START) );
  INVX2M U4 ( .A(BIT_DONE), .Y(n1) );
  NOR2X2M U5 ( .A(n12), .B(n2), .Y(DATA_LOAD) );
  OAI211X2M U6 ( .A0(n10), .A1(n12), .B0(n13), .C0(n14), .Y(next_state[1]) );
  AOI32X1M U7 ( .A0(BIT_DONE), .A1(n15), .A2(n16), .B0(n5), .B1(n1), .Y(n14)
         );
  INVX2M U8 ( .A(n8), .Y(n5) );
  INVX2M U9 ( .A(SAMPLE_READY), .Y(n2) );
  NAND2X2M U10 ( .A(START_GLITCH), .B(SAMPLE_READY), .Y(n15) );
  NOR2BX2M U11 ( .AN(n16), .B(n2), .Y(START_CHECK) );
  NOR3BX2M U12 ( .AN(n11), .B(n2), .C(n6), .Y(STOP_CHECK) );
  NOR2X2M U13 ( .A(n8), .B(n2), .Y(PARITY_CHECK) );
  NAND2X2M U14 ( .A(n11), .B(n6), .Y(COUNT_EN) );
  INVX2M U15 ( .A(n12), .Y(DATA_STATE) );
  OAI211XLM U16 ( .A0(BIT_DONE), .A1(n8), .B0(n13), .C0(n17), .Y(next_state[0]) );
  AOI32X1M U17 ( .A0(n15), .A1(n1), .A2(n16), .B0(n18), .B1(PRESCALE_OK), .Y(
        n17) );
  NOR2X2M U18 ( .A(RX_SYNC), .B(COUNT_EN), .Y(n18) );
  AND4XLM U19 ( .A(BIT_DONE), .B(BIT_COUNT[2]), .C(BIT_COUNT[1]), .D(
        BIT_COUNT[0]), .Y(n10) );
  NAND3X2M U20 ( .A(n10), .B(DATA_STATE), .C(PAR_EN), .Y(n13) );
  OAI21X2M U21 ( .A0(n1), .A1(n8), .B0(n9), .Y(next_state[2]) );
  AOI33X2M U22 ( .A0(DATA_STATE), .A1(n7), .A2(n10), .B0(n11), .B1(n2), .B2(
        current_state[2]), .Y(n9) );
  INVX2M U23 ( .A(PAR_EN), .Y(n7) );
  NOR3X2M U24 ( .A(current_state[1]), .B(current_state[2]), .C(n4), .Y(n16) );
  NAND3X2M U25 ( .A(n4), .B(n6), .C(current_state[1]), .Y(n12) );
  NAND3X2M U26 ( .A(current_state[1]), .B(n6), .C(current_state[0]), .Y(n8) );
  NOR2X2M U27 ( .A(current_state[0]), .B(current_state[1]), .Y(n11) );
  INVX2M U28 ( .A(current_state[2]), .Y(n6) );
  INVX2M U29 ( .A(current_state[0]), .Y(n4) );
endmodule


module RX_EDGE_BIT_COUNTER ( CLK, RST, ENABLE, DATA_STATE, Prescale, 
        EDGE_COUNT, BIT_COUNT, BIT_DONE );
  input [5:0] Prescale;
  output [5:0] EDGE_COUNT;
  output [2:0] BIT_COUNT;
  input CLK, RST, ENABLE, DATA_STATE;
  output BIT_DONE;
  wire   N4, N5, N6, N7, N8, N9, N16, N17, N18, N19, N31, N32, N33, N34, N35,
         N36, n7, n8, n9, n10, n11, n12, n13, n14, n1, n2, n3, n4, n5, n6, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [5:2] add_23_carry;

  DFFRQX2M BIT_COUNT_reg_2_ ( .D(n12), .CK(CLK), .RN(RST), .Q(BIT_COUNT[2]) );
  DFFRQX2M BIT_COUNT_reg_1_ ( .D(n13), .CK(CLK), .RN(RST), .Q(BIT_COUNT[1]) );
  DFFRQX2M BIT_COUNT_reg_0_ ( .D(n14), .CK(CLK), .RN(RST), .Q(BIT_COUNT[0]) );
  DFFRQX2M EDGE_COUNT_reg_5_ ( .D(N36), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[5])
         );
  DFFRQX2M EDGE_COUNT_reg_0_ ( .D(N31), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[0])
         );
  DFFRQX2M EDGE_COUNT_reg_4_ ( .D(N35), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[4])
         );
  DFFRQX2M EDGE_COUNT_reg_3_ ( .D(N34), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[3])
         );
  DFFRQX2M EDGE_COUNT_reg_2_ ( .D(N33), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[2])
         );
  DFFRQX2M EDGE_COUNT_reg_1_ ( .D(N32), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[1])
         );
  INVX2M U3 ( .A(n10), .Y(n24) );
  INVX2M U4 ( .A(ENABLE), .Y(n27) );
  AOI21XLM U5 ( .A0(BIT_DONE), .A1(DATA_STATE), .B0(n27), .Y(n10) );
  NAND2BX1M U6 ( .AN(BIT_DONE), .B(ENABLE), .Y(n11) );
  NOR2BX2M U7 ( .AN(N16), .B(n11), .Y(N32) );
  NOR2BX2M U8 ( .AN(N17), .B(n11), .Y(N33) );
  NOR2BX2M U9 ( .AN(N18), .B(n11), .Y(N34) );
  NOR2BX2M U10 ( .AN(N19), .B(n11), .Y(N35) );
  OR2X2M U11 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  INVX2M U12 ( .A(Prescale[3]), .Y(n6) );
  OAI32X1M U13 ( .A0(n27), .A1(BIT_COUNT[0]), .A2(n10), .B0(n25), .B1(n24), 
        .Y(n14) );
  OAI22X1M U14 ( .A0(n26), .A1(n24), .B0(n9), .B1(n27), .Y(n13) );
  AOI32X1M U15 ( .A0(n24), .A1(n26), .A2(BIT_COUNT[0]), .B0(BIT_COUNT[1]), 
        .B1(n25), .Y(n9) );
  INVX2M U16 ( .A(BIT_COUNT[1]), .Y(n26) );
  NOR2X2M U17 ( .A(n1), .B(n11), .Y(N36) );
  XNOR2X2M U18 ( .A(add_23_carry[5]), .B(EDGE_COUNT[5]), .Y(n1) );
  NOR2X2M U19 ( .A(EDGE_COUNT[0]), .B(n11), .Y(N31) );
  NOR2X2M U20 ( .A(n7), .B(n27), .Y(n12) );
  CLKXOR2X2M U21 ( .A(n8), .B(BIT_COUNT[2]), .Y(n7) );
  NAND4XLM U22 ( .A(DATA_STATE), .B(BIT_DONE), .C(BIT_COUNT[1]), .D(
        BIT_COUNT[0]), .Y(n8) );
  INVX2M U23 ( .A(BIT_COUNT[0]), .Y(n25) );
  ADDHX1M U24 ( .A(EDGE_COUNT[1]), .B(EDGE_COUNT[0]), .CO(add_23_carry[2]), 
        .S(N16) );
  ADDHX1M U25 ( .A(EDGE_COUNT[2]), .B(add_23_carry[2]), .CO(add_23_carry[3]), 
        .S(N17) );
  ADDHX1M U26 ( .A(EDGE_COUNT[3]), .B(add_23_carry[3]), .CO(add_23_carry[4]), 
        .S(N18) );
  ADDHX1M U27 ( .A(EDGE_COUNT[4]), .B(add_23_carry[4]), .CO(add_23_carry[5]), 
        .S(N19) );
  CLKINVX1M U28 ( .A(Prescale[0]), .Y(N4) );
  OAI2BB1X1M U29 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N5) );
  NOR2X1M U30 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  AO21XLM U31 ( .A0(n2), .A1(Prescale[2]), .B0(n3), .Y(N6) );
  CLKNAND2X2M U32 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U33 ( .A0(n3), .A1(n6), .B0(n4), .Y(N7) );
  XNOR2X1M U34 ( .A(Prescale[4]), .B(n4), .Y(N8) );
  NOR2X1M U35 ( .A(Prescale[4]), .B(n4), .Y(n5) );
  CLKXOR2X2M U36 ( .A(Prescale[5]), .B(n5), .Y(N9) );
  NOR2BX1M U37 ( .AN(EDGE_COUNT[0]), .B(N4), .Y(n15) );
  OAI2B2X1M U38 ( .A1N(N5), .A0(n15), .B0(EDGE_COUNT[1]), .B1(n15), .Y(n19) );
  NOR2BX1M U39 ( .AN(N4), .B(EDGE_COUNT[0]), .Y(n16) );
  OAI2B2X1M U40 ( .A1N(EDGE_COUNT[1]), .A0(n16), .B0(N5), .B1(n16), .Y(n18) );
  XNOR2X1M U41 ( .A(N9), .B(EDGE_COUNT[5]), .Y(n17) );
  NAND3X1M U42 ( .A(n19), .B(n18), .C(n17), .Y(n23) );
  CLKXOR2X2M U43 ( .A(N8), .B(EDGE_COUNT[4]), .Y(n22) );
  CLKXOR2X2M U44 ( .A(N6), .B(EDGE_COUNT[2]), .Y(n21) );
  CLKXOR2X2M U45 ( .A(N7), .B(EDGE_COUNT[3]), .Y(n20) );
  NOR4X1M U46 ( .A(n23), .B(n22), .C(n21), .D(n20), .Y(BIT_DONE) );
endmodule


module RX_DATA_SAMPLING ( CLK, RST, ENABLE, RX_SYNC, Prescale, EDGE_COUNT, 
        SAMPLED_BIT, SAMPLE_READY );
  input [5:0] Prescale;
  input [5:0] EDGE_COUNT;
  input CLK, RST, ENABLE, RX_SYNC;
  output SAMPLED_BIT, SAMPLE_READY;
  wire   N2, N3, N4, N5, N6, N7, N12, N13, N14, N15, N19, N20, N21, N22, N23,
         n24, n25, n26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [2:0] samples;
  wire   [4:3] sub_21_carry;
  wire   [4:2] add_10_carry;

  DFFRQX2M samples_reg_2_ ( .D(n26), .CK(CLK), .RN(RST), .Q(samples[2]) );
  DFFRQX2M samples_reg_0_ ( .D(n24), .CK(CLK), .RN(RST), .Q(samples[0]) );
  DFFRQX2M samples_reg_1_ ( .D(n25), .CK(CLK), .RN(RST), .Q(samples[1]) );
  NOR2X2M U3 ( .A(Prescale[5]), .B(sub_21_carry[4]), .Y(n1) );
  ADDHX1M U4 ( .A(Prescale[5]), .B(add_10_carry[4]), .CO(N7), .S(N6) );
  ADDHX1M U5 ( .A(Prescale[2]), .B(Prescale[1]), .CO(add_10_carry[2]), .S(N3)
         );
  ADDHX1M U6 ( .A(Prescale[3]), .B(add_10_carry[2]), .CO(add_10_carry[3]), .S(
        N4) );
  ADDHX1M U7 ( .A(Prescale[4]), .B(add_10_carry[3]), .CO(add_10_carry[4]), .S(
        N5) );
  OR2X2M U8 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n2) );
  INVX2M U9 ( .A(Prescale[2]), .Y(N12) );
  XNOR2X1M U10 ( .A(sub_21_carry[4]), .B(Prescale[5]), .Y(N15) );
  OR2X1M U11 ( .A(Prescale[4]), .B(sub_21_carry[3]), .Y(sub_21_carry[4]) );
  XNOR2X1M U12 ( .A(sub_21_carry[3]), .B(Prescale[4]), .Y(N14) );
  OR2X1M U13 ( .A(Prescale[3]), .B(Prescale[2]), .Y(sub_21_carry[3]) );
  XNOR2X1M U14 ( .A(Prescale[2]), .B(Prescale[3]), .Y(N13) );
  CLKINVX1M U15 ( .A(Prescale[1]), .Y(N2) );
  OAI2BB1X1M U16 ( .A0N(Prescale[1]), .A1N(Prescale[2]), .B0(n2), .Y(N19) );
  OR2X1M U17 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U18 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N20) );
  XNOR2X1M U19 ( .A(Prescale[4]), .B(n3), .Y(N21) );
  NOR3X1M U20 ( .A(Prescale[4]), .B(Prescale[5]), .C(n3), .Y(N23) );
  OAI21X1M U21 ( .A0(Prescale[4]), .A1(n3), .B0(Prescale[5]), .Y(n4) );
  NAND2BX1M U22 ( .AN(N23), .B(n4), .Y(N22) );
  MXI2X1M U23 ( .A(n5), .B(n6), .S0(n7), .Y(n26) );
  NOR4X1M U24 ( .A(n8), .B(n9), .C(EDGE_COUNT[5]), .D(n10), .Y(n7) );
  CLKXOR2X2M U25 ( .A(Prescale[1]), .B(EDGE_COUNT[0]), .Y(n10) );
  CLKXOR2X2M U26 ( .A(Prescale[5]), .B(EDGE_COUNT[4]), .Y(n9) );
  NAND3X1M U27 ( .A(n11), .B(n12), .C(n13), .Y(n8) );
  XNOR2X1M U28 ( .A(EDGE_COUNT[2]), .B(Prescale[3]), .Y(n13) );
  XNOR2X1M U29 ( .A(EDGE_COUNT[3]), .B(Prescale[4]), .Y(n12) );
  XNOR2X1M U30 ( .A(EDGE_COUNT[1]), .B(Prescale[2]), .Y(n11) );
  CLKNAND2X2M U31 ( .A(samples[2]), .B(ENABLE), .Y(n5) );
  MXI2X1M U32 ( .A(n14), .B(n6), .S0(n15), .Y(n25) );
  NOR4X1M U33 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n15) );
  CLKXOR2X2M U34 ( .A(N23), .B(EDGE_COUNT[5]), .Y(n19) );
  CLKXOR2X2M U35 ( .A(N21), .B(EDGE_COUNT[3]), .Y(n18) );
  CLKXOR2X2M U36 ( .A(N20), .B(EDGE_COUNT[2]), .Y(n17) );
  NAND3X1M U37 ( .A(n20), .B(n21), .C(n22), .Y(n16) );
  XNOR2X1M U38 ( .A(EDGE_COUNT[0]), .B(N2), .Y(n22) );
  XNOR2X1M U39 ( .A(EDGE_COUNT[1]), .B(N19), .Y(n21) );
  XNOR2X1M U40 ( .A(EDGE_COUNT[4]), .B(N22), .Y(n20) );
  CLKNAND2X2M U41 ( .A(samples[1]), .B(ENABLE), .Y(n14) );
  MXI2X1M U42 ( .A(n23), .B(n6), .S0(n27), .Y(n24) );
  NOR4X1M U43 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n27) );
  CLKXOR2X2M U44 ( .A(n1), .B(EDGE_COUNT[5]), .Y(n31) );
  CLKXOR2X2M U45 ( .A(N14), .B(EDGE_COUNT[3]), .Y(n30) );
  CLKXOR2X2M U46 ( .A(N13), .B(EDGE_COUNT[2]), .Y(n29) );
  NAND3X1M U47 ( .A(n32), .B(n33), .C(n34), .Y(n28) );
  XNOR2X1M U48 ( .A(EDGE_COUNT[0]), .B(Prescale[1]), .Y(n34) );
  XNOR2X1M U49 ( .A(EDGE_COUNT[1]), .B(N12), .Y(n33) );
  XNOR2X1M U50 ( .A(EDGE_COUNT[4]), .B(N15), .Y(n32) );
  CLKNAND2X2M U51 ( .A(RX_SYNC), .B(ENABLE), .Y(n6) );
  CLKNAND2X2M U52 ( .A(samples[0]), .B(ENABLE), .Y(n23) );
  NOR4X1M U53 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(SAMPLE_READY) );
  CLKXOR2X2M U54 ( .A(N7), .B(EDGE_COUNT[5]), .Y(n38) );
  CLKXOR2X2M U55 ( .A(N5), .B(EDGE_COUNT[3]), .Y(n37) );
  CLKXOR2X2M U56 ( .A(N4), .B(EDGE_COUNT[2]), .Y(n36) );
  NAND3X1M U57 ( .A(n39), .B(n40), .C(n41), .Y(n35) );
  XNOR2X1M U58 ( .A(EDGE_COUNT[0]), .B(N2), .Y(n41) );
  XNOR2X1M U59 ( .A(EDGE_COUNT[1]), .B(N3), .Y(n40) );
  XNOR2X1M U60 ( .A(EDGE_COUNT[4]), .B(N6), .Y(n39) );
  OAI2BB1X1M U61 ( .A0N(samples[1]), .A1N(samples[0]), .B0(n42), .Y(
        SAMPLED_BIT) );
  OAI21X1M U62 ( .A0(samples[0]), .A1(samples[1]), .B0(samples[2]), .Y(n42) );
endmodule


module RX_DESERIALIZER ( CLK, RST, CLEAR, LOAD, SAMPLED_BIT, BIT_COUNT, 
        DATA_OUT );
  input [2:0] BIT_COUNT;
  output [7:0] DATA_OUT;
  input CLK, RST, CLEAR, LOAD, SAMPLED_BIT;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n1, n2;

  DFFRQX2M DATA_OUT_reg_5_ ( .D(n20), .CK(CLK), .RN(RST), .Q(DATA_OUT[5]) );
  DFFRQX2M DATA_OUT_reg_1_ ( .D(n16), .CK(CLK), .RN(RST), .Q(DATA_OUT[1]) );
  DFFRQX2M DATA_OUT_reg_4_ ( .D(n19), .CK(CLK), .RN(RST), .Q(DATA_OUT[4]) );
  DFFRQX2M DATA_OUT_reg_0_ ( .D(n15), .CK(CLK), .RN(RST), .Q(DATA_OUT[0]) );
  DFFRQX2M DATA_OUT_reg_7_ ( .D(n22), .CK(CLK), .RN(RST), .Q(DATA_OUT[7]) );
  DFFRQX2M DATA_OUT_reg_3_ ( .D(n18), .CK(CLK), .RN(RST), .Q(DATA_OUT[3]) );
  DFFRQX2M DATA_OUT_reg_6_ ( .D(n21), .CK(CLK), .RN(RST), .Q(DATA_OUT[6]) );
  DFFRQX2M DATA_OUT_reg_2_ ( .D(n17), .CK(CLK), .RN(RST), .Q(DATA_OUT[2]) );
  NAND2X2M U3 ( .A(SAMPLED_BIT), .B(n9), .Y(n4) );
  NOR2BX2M U4 ( .AN(LOAD), .B(CLEAR), .Y(n9) );
  OAI2BB2X1M U5 ( .B0(n3), .B1(n4), .A0N(DATA_OUT[0]), .A1N(n3), .Y(n15) );
  AOI31X2M U6 ( .A0(n5), .A1(n2), .A2(n1), .B0(CLEAR), .Y(n3) );
  OAI2BB2X1M U7 ( .B0(n6), .B1(n4), .A0N(DATA_OUT[1]), .A1N(n6), .Y(n16) );
  AOI31X2M U8 ( .A0(BIT_COUNT[0]), .A1(n2), .A2(n5), .B0(CLEAR), .Y(n6) );
  OAI2BB2X1M U9 ( .B0(n7), .B1(n4), .A0N(DATA_OUT[2]), .A1N(n7), .Y(n17) );
  AOI31X2M U10 ( .A0(BIT_COUNT[1]), .A1(n1), .A2(n5), .B0(CLEAR), .Y(n7) );
  NOR2BX2M U11 ( .AN(n9), .B(BIT_COUNT[2]), .Y(n5) );
  OAI2BB2X1M U12 ( .B0(n8), .B1(n4), .A0N(DATA_OUT[3]), .A1N(n8), .Y(n18) );
  AOI31X2M U13 ( .A0(BIT_COUNT[1]), .A1(n5), .A2(BIT_COUNT[0]), .B0(CLEAR), 
        .Y(n8) );
  OAI2BB2X1M U14 ( .B0(n10), .B1(n4), .A0N(DATA_OUT[4]), .A1N(n10), .Y(n19) );
  AOI31X2M U15 ( .A0(n11), .A1(n2), .A2(n1), .B0(CLEAR), .Y(n10) );
  OAI2BB2X1M U16 ( .B0(n12), .B1(n4), .A0N(DATA_OUT[5]), .A1N(n12), .Y(n20) );
  AOI31X2M U17 ( .A0(n11), .A1(n2), .A2(BIT_COUNT[0]), .B0(CLEAR), .Y(n12) );
  OAI2BB2X1M U18 ( .B0(n13), .B1(n4), .A0N(DATA_OUT[6]), .A1N(n13), .Y(n21) );
  AOI31X2M U19 ( .A0(n11), .A1(n1), .A2(BIT_COUNT[1]), .B0(CLEAR), .Y(n13) );
  OAI2BB2X1M U20 ( .B0(n14), .B1(n4), .A0N(DATA_OUT[7]), .A1N(n14), .Y(n22) );
  AOI31X2M U21 ( .A0(n11), .A1(BIT_COUNT[0]), .A2(BIT_COUNT[1]), .B0(CLEAR), 
        .Y(n14) );
  AND2X2M U22 ( .A(BIT_COUNT[2]), .B(n9), .Y(n11) );
  INVX2M U23 ( .A(BIT_COUNT[0]), .Y(n1) );
  INVX2M U24 ( .A(BIT_COUNT[1]), .Y(n2) );
endmodule


module RX_START_CHECK ( CHECK_EN, SAMPLED_BIT, START_GLITCH );
  input CHECK_EN, SAMPLED_BIT;
  output START_GLITCH;


  AND2X2M U1 ( .A(SAMPLED_BIT), .B(CHECK_EN), .Y(START_GLITCH) );
endmodule


module RX_PARITY_CHECK ( CLK, RST, CLEAR, CHECK_EN, SAMPLED_BIT, PAR_TYP, 
        P_DATA, PAR_ERR );
  input [7:0] P_DATA;
  input CLK, RST, CLEAR, CHECK_EN, SAMPLED_BIT, PAR_TYP;
  output PAR_ERR;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n1;

  DFFRQX2M PAR_ERR_reg ( .D(n9), .CK(CLK), .RN(RST), .Q(PAR_ERR) );
  NOR2X2M U3 ( .A(CLEAR), .B(n2), .Y(n9) );
  AOI22X1M U4 ( .A0(CHECK_EN), .A1(n3), .B0(PAR_ERR), .B1(n1), .Y(n2) );
  XOR3XLM U5 ( .A(n4), .B(n5), .C(n6), .Y(n3) );
  INVX2M U6 ( .A(CHECK_EN), .Y(n1) );
  CLKXOR2X2M U7 ( .A(SAMPLED_BIT), .B(PAR_TYP), .Y(n4) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n6) );
  XNOR2X2M U9 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  XOR3XLM U10 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n8), .Y(n5) );
  XNOR2X2M U11 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n8) );
endmodule


module RX_STOP_CHECK ( CLK, RST, CLEAR, CHECK_EN, SAMPLED_BIT, STP_ERR );
  input CLK, RST, CLEAR, CHECK_EN, SAMPLED_BIT;
  output STP_ERR;
  wire   n2, n3, n1;

  DFFRQX2M STP_ERR_reg ( .D(n3), .CK(CLK), .RN(RST), .Q(STP_ERR) );
  NOR2X2M U3 ( .A(CLEAR), .B(n2), .Y(n3) );
  AOI2BB2XLM U4 ( .B0(STP_ERR), .B1(n1), .A0N(SAMPLED_BIT), .A1N(n1), .Y(n2)
         );
  INVX2M U5 ( .A(CHECK_EN), .Y(n1) );
endmodule


module RX_OUTPUT_REG ( CLK, RST, STOP_CHECK, PAR_ERR, SAMPLED_BIT, DATA_IN, 
        P_DATA, DATA_VLD );
  input [7:0] DATA_IN;
  output [7:0] P_DATA;
  input CLK, RST, STOP_CHECK, PAR_ERR, SAMPLED_BIT;
  output DATA_VLD;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  DFFRQX2M P_DATA_reg_7_ ( .D(n9), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M P_DATA_reg_6_ ( .D(n8), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M P_DATA_reg_5_ ( .D(n7), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M P_DATA_reg_4_ ( .D(n6), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M P_DATA_reg_3_ ( .D(n5), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M P_DATA_reg_2_ ( .D(n4), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  DFFRQX2M P_DATA_reg_1_ ( .D(n3), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M P_DATA_reg_0_ ( .D(n2), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M DATA_VLD_reg ( .D(n11), .CK(CLK), .RN(RST), .Q(DATA_VLD) );
  INVX2M U3 ( .A(n10), .Y(n11) );
  BUFX2M U4 ( .A(n1), .Y(n10) );
  NAND3BX2M U5 ( .AN(PAR_ERR), .B(SAMPLED_BIT), .C(STOP_CHECK), .Y(n1) );
  AO22X1M U6 ( .A0(DATA_IN[0]), .A1(n11), .B0(P_DATA[0]), .B1(n10), .Y(n2) );
  AO22X1M U7 ( .A0(DATA_IN[1]), .A1(n11), .B0(P_DATA[1]), .B1(n10), .Y(n3) );
  AO22X1M U8 ( .A0(DATA_IN[2]), .A1(n11), .B0(P_DATA[2]), .B1(n10), .Y(n4) );
  AO22X1M U9 ( .A0(DATA_IN[3]), .A1(n11), .B0(P_DATA[3]), .B1(n10), .Y(n5) );
  AO22X1M U10 ( .A0(DATA_IN[4]), .A1(n11), .B0(P_DATA[4]), .B1(n10), .Y(n6) );
  AO22X1M U11 ( .A0(DATA_IN[5]), .A1(n11), .B0(P_DATA[5]), .B1(n10), .Y(n7) );
  AO22X1M U12 ( .A0(DATA_IN[6]), .A1(n11), .B0(P_DATA[6]), .B1(n10), .Y(n8) );
  AO22X1M U13 ( .A0(DATA_IN[7]), .A1(n11), .B0(P_DATA[7]), .B1(n10), .Y(n9) );
endmodule


module UART_RX ( CLK, RST, RX_IN, PAR_EN, PAR_TYP, Prescale, P_DATA, DATA_VLD, 
        PAR_ERR, STP_ERR );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_EN, PAR_TYP;
  output DATA_VLD, PAR_ERR, STP_ERR;
  wire   prescale_ok, rx_sync, frame_start, par_en_reg, par_typ_reg,
         sample_ready, bit_done, start_glitch, count_en, data_state, data_load,
         start_check, parity_check, stop_check, sampled_bit, n2, n3, n1, n4,
         n5;
  wire   [5:0] prescale_reg;
  wire   [2:0] bit_count;
  wire   [5:0] edge_count;
  wire   [7:0] data_reg;

  RX_INPUT_SYNC U_INPUT_SYNC ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .RX_SYNC(
        rx_sync) );
  RX_CONFIG_REG U_CONFIG ( .CLK(CLK), .RST(n1), .FRAME_START(frame_start), 
        .Prescale(Prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), 
        .PRESCALE_REG(prescale_reg), .PAR_EN_REG(par_en_reg), .PAR_TYP_REG(
        par_typ_reg) );
  RX_FSM U_FSM ( .CLK(CLK), .RST(n1), .RX_SYNC(rx_sync), .PRESCALE_OK(
        prescale_ok), .PAR_EN(par_en_reg), .SAMPLE_READY(sample_ready), 
        .BIT_DONE(bit_done), .START_GLITCH(start_glitch), .BIT_COUNT(bit_count), .FRAME_START(frame_start), .COUNT_EN(count_en), .DATA_STATE(data_state), 
        .DATA_LOAD(data_load), .START_CHECK(start_check), .PARITY_CHECK(
        parity_check), .STOP_CHECK(stop_check) );
  RX_EDGE_BIT_COUNTER U_COUNTER ( .CLK(CLK), .RST(n1), .ENABLE(count_en), 
        .DATA_STATE(data_state), .Prescale(prescale_reg), .EDGE_COUNT(
        edge_count), .BIT_COUNT(bit_count), .BIT_DONE(bit_done) );
  RX_DATA_SAMPLING U_SAMPLING ( .CLK(CLK), .RST(n1), .ENABLE(count_en), 
        .RX_SYNC(rx_sync), .Prescale(prescale_reg), .EDGE_COUNT(edge_count), 
        .SAMPLED_BIT(sampled_bit), .SAMPLE_READY(sample_ready) );
  RX_DESERIALIZER U_DESERIALIZER ( .CLK(CLK), .RST(n1), .CLEAR(frame_start), 
        .LOAD(data_load), .SAMPLED_BIT(sampled_bit), .BIT_COUNT(bit_count), 
        .DATA_OUT(data_reg) );
  RX_START_CHECK U_START ( .CHECK_EN(start_check), .SAMPLED_BIT(sampled_bit), 
        .START_GLITCH(start_glitch) );
  RX_PARITY_CHECK U_PARITY ( .CLK(CLK), .RST(n1), .CLEAR(frame_start), 
        .CHECK_EN(parity_check), .SAMPLED_BIT(sampled_bit), .PAR_TYP(
        par_typ_reg), .P_DATA(data_reg), .PAR_ERR(PAR_ERR) );
  RX_STOP_CHECK U_STOP ( .CLK(CLK), .RST(n1), .CLEAR(frame_start), .CHECK_EN(
        stop_check), .SAMPLED_BIT(sampled_bit), .STP_ERR(STP_ERR) );
  RX_OUTPUT_REG U_OUTPUT ( .CLK(CLK), .RST(n1), .STOP_CHECK(stop_check), 
        .PAR_ERR(PAR_ERR), .SAMPLED_BIT(sampled_bit), .DATA_IN(data_reg), 
        .P_DATA(P_DATA), .DATA_VLD(DATA_VLD) );
  INVX4M U1 ( .A(n4), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n4) );
  NOR4BX1M U3 ( .AN(n2), .B(Prescale[2]), .C(Prescale[1]), .D(Prescale[0]), 
        .Y(prescale_ok) );
  OAI32X1M U4 ( .A0(Prescale[3]), .A1(Prescale[4]), .A2(n5), .B0(n3), .B1(
        Prescale[5]), .Y(n2) );
  INVX2M U5 ( .A(Prescale[5]), .Y(n5) );
  XNOR2X2M U6 ( .A(Prescale[4]), .B(Prescale[3]), .Y(n3) );
endmodule


module UART_TOP ( RST, TX_CLK, RX_CLK, PAR_EN, PAR_TYP, Prescale, TX_IN_P, 
        TX_IN_V, RX_IN_S, TX_OUT_S, TX_OUT_V, RX_OUT_P, RX_OUT_V, PAR_ERR, 
        STP_ERR );
  input [5:0] Prescale;
  input [7:0] TX_IN_P;
  output [7:0] RX_OUT_P;
  input RST, TX_CLK, RX_CLK, PAR_EN, PAR_TYP, TX_IN_V, RX_IN_S;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, PAR_ERR, STP_ERR;
  wire   n1, n2;

  UART_TX U_TX ( .P_DATA(TX_IN_P), .DATA_VALID(TX_IN_V), .PAR_EN(PAR_EN), 
        .PAR_TYP(PAR_TYP), .CLK(TX_CLK), .RST(n1), .TX_OUT(TX_OUT_S), .Busy(
        TX_OUT_V) );
  UART_RX U_RX ( .CLK(RX_CLK), .RST(n1), .RX_IN(RX_IN_S), .PAR_EN(PAR_EN), 
        .PAR_TYP(PAR_TYP), .Prescale(Prescale), .P_DATA(RX_OUT_P), .DATA_VLD(
        RX_OUT_V), .PAR_ERR(PAR_ERR), .STP_ERR(STP_ERR) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module DF_SYNC_WIDTH1_NUM_STAGES1 ( CLK, RST, DIN, DOUT );
  input [0:0] DIN;
  output [0:0] DOUT;
  input CLK, RST;


  DFFRQX2M sync_ff_reg_0__0_ ( .D(DIN[0]), .CK(CLK), .RN(RST), .Q(DOUT[0]) );
endmodule


module RISING_EDGE_DETECTOR_0 ( CLK, RST, LEVEL, PULSE );
  input CLK, RST, LEVEL;
  output PULSE;
  wire   level_d;

  DFFRQX2M level_d_reg ( .D(LEVEL), .CK(CLK), .RN(RST), .Q(level_d) );
  NOR2BX2M U3 ( .AN(LEVEL), .B(level_d), .Y(PULSE) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   level_reg;

  DF_SYNC_WIDTH1_NUM_STAGES1 U_LEVEL_REG ( .CLK(CLK), .RST(RST), .DIN(LVL_SIG), 
        .DOUT(level_reg) );
  RISING_EDGE_DETECTOR_0 U_EDGE ( .CLK(CLK), .RST(RST), .LEVEL(level_reg), 
        .PULSE(PULSE_SIG) );
endmodule


module DF_SYNC_WIDTH4_0 ( CLK, RST, DIN, DOUT );
  input [3:0] DIN;
  output [3:0] DOUT;
  input CLK, RST;
  wire   sync_ff_0__3_, sync_ff_0__2_, sync_ff_0__1_, sync_ff_0__0_;

  DFFRQX2M sync_ff_reg_1__2_ ( .D(sync_ff_0__2_), .CK(CLK), .RN(RST), .Q(
        DOUT[2]) );
  DFFRQX2M sync_ff_reg_1__3_ ( .D(sync_ff_0__3_), .CK(CLK), .RN(RST), .Q(
        DOUT[3]) );
  DFFRQX2M sync_ff_reg_1__1_ ( .D(sync_ff_0__1_), .CK(CLK), .RN(RST), .Q(
        DOUT[1]) );
  DFFRQX2M sync_ff_reg_1__0_ ( .D(sync_ff_0__0_), .CK(CLK), .RN(RST), .Q(
        DOUT[0]) );
  DFFRQX2M sync_ff_reg_0__3_ ( .D(DIN[3]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__3_) );
  DFFRQX2M sync_ff_reg_0__2_ ( .D(DIN[2]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__2_) );
  DFFRQX2M sync_ff_reg_0__1_ ( .D(DIN[1]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__1_) );
  DFFRQX2M sync_ff_reg_0__0_ ( .D(DIN[0]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__0_) );
endmodule


module DF_SYNC_WIDTH4_1 ( CLK, RST, DIN, DOUT );
  input [3:0] DIN;
  output [3:0] DOUT;
  input CLK, RST;
  wire   sync_ff_0__3_, sync_ff_0__2_, sync_ff_0__1_, sync_ff_0__0_;

  DFFRQX2M sync_ff_reg_1__3_ ( .D(sync_ff_0__3_), .CK(CLK), .RN(RST), .Q(
        DOUT[3]) );
  DFFRQX2M sync_ff_reg_1__2_ ( .D(sync_ff_0__2_), .CK(CLK), .RN(RST), .Q(
        DOUT[2]) );
  DFFRQX2M sync_ff_reg_1__1_ ( .D(sync_ff_0__1_), .CK(CLK), .RN(RST), .Q(
        DOUT[1]) );
  DFFRQX2M sync_ff_reg_1__0_ ( .D(sync_ff_0__0_), .CK(CLK), .RN(RST), .Q(
        DOUT[0]) );
  DFFRQX2M sync_ff_reg_0__3_ ( .D(DIN[3]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__3_) );
  DFFRQX2M sync_ff_reg_0__2_ ( .D(DIN[2]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__2_) );
  DFFRQX2M sync_ff_reg_0__1_ ( .D(DIN[1]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__1_) );
  DFFRQX2M sync_ff_reg_0__0_ ( .D(DIN[0]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__0_) );
endmodule


module FIFO_WR_ADDR_WIDTH3 ( CLK, RST, INC, SYNC_RPTR, ADDRESS, GRAY_PTR, FULL
 );
  input [3:0] SYNC_RPTR;
  output [2:0] ADDRESS;
  output [3:0] GRAY_PTR;
  input CLK, RST, INC;
  output FULL;
  wire   bin_ptr_3_, full_next, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [3:0] bin_next;
  wire   [2:0] gray_next;

  DFFRQX2M bin_ptr_reg_3_ ( .D(bin_next[3]), .CK(CLK), .RN(RST), .Q(bin_ptr_3_) );
  DFFRQX2M bin_ptr_reg_2_ ( .D(bin_next[2]), .CK(CLK), .RN(RST), .Q(ADDRESS[2]) );
  DFFRQX2M bin_ptr_reg_1_ ( .D(bin_next[1]), .CK(CLK), .RN(RST), .Q(ADDRESS[1]) );
  DFFRQX2M FULL_reg ( .D(full_next), .CK(CLK), .RN(RST), .Q(FULL) );
  DFFRQX2M bin_ptr_reg_0_ ( .D(bin_next[0]), .CK(CLK), .RN(RST), .Q(ADDRESS[0]) );
  DFFRQX2M GRAY_PTR_reg_3_ ( .D(bin_next[3]), .CK(CLK), .RN(RST), .Q(
        GRAY_PTR[3]) );
  DFFRQX2M GRAY_PTR_reg_0_ ( .D(gray_next[0]), .CK(CLK), .RN(RST), .Q(
        GRAY_PTR[0]) );
  DFFRQX2M GRAY_PTR_reg_2_ ( .D(gray_next[2]), .CK(CLK), .RN(RST), .Q(
        GRAY_PTR[2]) );
  DFFRQX2M GRAY_PTR_reg_1_ ( .D(gray_next[1]), .CK(CLK), .RN(RST), .Q(
        GRAY_PTR[1]) );
  CLKXOR2X2M U3 ( .A(bin_next[2]), .B(bin_next[1]), .Y(gray_next[1]) );
  CLKXOR2X2M U4 ( .A(bin_next[1]), .B(bin_next[0]), .Y(gray_next[0]) );
  CLKXOR2X2M U5 ( .A(bin_next[3]), .B(bin_next[2]), .Y(gray_next[2]) );
  XNOR2X2M U6 ( .A(n7), .B(ADDRESS[2]), .Y(bin_next[2]) );
  NAND2X2M U7 ( .A(ADDRESS[1]), .B(n6), .Y(n7) );
  XNOR2X2M U8 ( .A(n5), .B(bin_ptr_3_), .Y(bin_next[3]) );
  NAND3X2M U9 ( .A(ADDRESS[1]), .B(n6), .C(ADDRESS[2]), .Y(n5) );
  NOR4X1M U10 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(full_next) );
  XNOR2X2M U11 ( .A(bin_next[3]), .B(SYNC_RPTR[3]), .Y(n2) );
  XNOR2X2M U12 ( .A(gray_next[2]), .B(SYNC_RPTR[2]), .Y(n1) );
  CLKXOR2X2M U13 ( .A(SYNC_RPTR[0]), .B(gray_next[0]), .Y(n3) );
  NOR2BX2M U14 ( .AN(INC), .B(FULL), .Y(n8) );
  AND2X2M U15 ( .A(ADDRESS[0]), .B(n8), .Y(n6) );
  CLKXOR2X2M U16 ( .A(n6), .B(ADDRESS[1]), .Y(bin_next[1]) );
  CLKXOR2X2M U17 ( .A(SYNC_RPTR[1]), .B(gray_next[1]), .Y(n4) );
  CLKXOR2X2M U18 ( .A(n8), .B(ADDRESS[0]), .Y(bin_next[0]) );
endmodule


module FIFO_RD_ADDR_WIDTH3 ( CLK, RST, INC, SYNC_WPTR, ADDRESS, GRAY_PTR, 
        EMPTY );
  input [3:0] SYNC_WPTR;
  output [2:0] ADDRESS;
  output [3:0] GRAY_PTR;
  input CLK, RST, INC;
  output EMPTY;
  wire   bin_ptr_3_, empty_next, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [3:0] bin_next;
  wire   [2:0] gray_next;

  DFFRQX2M bin_ptr_reg_3_ ( .D(bin_next[3]), .CK(CLK), .RN(RST), .Q(bin_ptr_3_) );
  DFFSQX2M EMPTY_reg ( .D(empty_next), .CK(CLK), .SN(RST), .Q(EMPTY) );
  DFFRQX2M bin_ptr_reg_0_ ( .D(bin_next[0]), .CK(CLK), .RN(RST), .Q(ADDRESS[0]) );
  DFFRQX2M bin_ptr_reg_2_ ( .D(bin_next[2]), .CK(CLK), .RN(RST), .Q(ADDRESS[2]) );
  DFFRQX2M bin_ptr_reg_1_ ( .D(bin_next[1]), .CK(CLK), .RN(RST), .Q(ADDRESS[1]) );
  DFFRQX2M GRAY_PTR_reg_0_ ( .D(gray_next[0]), .CK(CLK), .RN(RST), .Q(
        GRAY_PTR[0]) );
  DFFRQX2M GRAY_PTR_reg_3_ ( .D(bin_next[3]), .CK(CLK), .RN(RST), .Q(
        GRAY_PTR[3]) );
  DFFRQX2M GRAY_PTR_reg_2_ ( .D(gray_next[2]), .CK(CLK), .RN(RST), .Q(
        GRAY_PTR[2]) );
  DFFRQX2M GRAY_PTR_reg_1_ ( .D(gray_next[1]), .CK(CLK), .RN(RST), .Q(
        GRAY_PTR[1]) );
  CLKXOR2X2M U3 ( .A(bin_next[3]), .B(bin_next[2]), .Y(gray_next[2]) );
  CLKXOR2X2M U4 ( .A(bin_next[2]), .B(bin_next[1]), .Y(gray_next[1]) );
  CLKXOR2X2M U5 ( .A(bin_next[1]), .B(bin_next[0]), .Y(gray_next[0]) );
  XNOR2X2M U6 ( .A(n5), .B(bin_ptr_3_), .Y(bin_next[3]) );
  NAND3X2M U7 ( .A(ADDRESS[1]), .B(n6), .C(ADDRESS[2]), .Y(n5) );
  XNOR2X2M U8 ( .A(n7), .B(ADDRESS[2]), .Y(bin_next[2]) );
  NAND2X2M U9 ( .A(ADDRESS[1]), .B(n6), .Y(n7) );
  NOR4X1M U10 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(empty_next) );
  CLKXOR2X2M U11 ( .A(SYNC_WPTR[3]), .B(bin_next[3]), .Y(n2) );
  CLKXOR2X2M U12 ( .A(SYNC_WPTR[2]), .B(gray_next[2]), .Y(n1) );
  CLKXOR2X2M U13 ( .A(SYNC_WPTR[1]), .B(gray_next[1]), .Y(n4) );
  NOR2BX2M U14 ( .AN(INC), .B(EMPTY), .Y(n8) );
  AND2X2M U15 ( .A(ADDRESS[0]), .B(n8), .Y(n6) );
  CLKXOR2X2M U16 ( .A(SYNC_WPTR[0]), .B(gray_next[0]), .Y(n3) );
  CLKXOR2X2M U17 ( .A(n6), .B(ADDRESS[1]), .Y(bin_next[1]) );
  CLKXOR2X2M U18 ( .A(n8), .B(ADDRESS[0]), .Y(bin_next[0]) );
endmodule


module FIFO_MEM_DATA_WIDTH8_ADDR_WIDTH3 ( W_CLK, W_INC, FULL, W_ADDR, R_ADDR, 
        WR_DATA, RD_DATA );
  input [2:0] W_ADDR;
  input [2:0] R_ADDR;
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_INC, FULL;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128;
  wire   [63:0] mem;

  DFFQX2M mem_reg_0__7_ ( .D(n85), .CK(W_CLK), .Q(mem[63]) );
  DFFQX2M mem_reg_0__6_ ( .D(n84), .CK(W_CLK), .Q(mem[62]) );
  DFFQX2M mem_reg_0__5_ ( .D(n83), .CK(W_CLK), .Q(mem[61]) );
  DFFQX2M mem_reg_0__4_ ( .D(n82), .CK(W_CLK), .Q(mem[60]) );
  DFFQX2M mem_reg_0__3_ ( .D(n81), .CK(W_CLK), .Q(mem[59]) );
  DFFQX2M mem_reg_0__2_ ( .D(n80), .CK(W_CLK), .Q(mem[58]) );
  DFFQX2M mem_reg_0__1_ ( .D(n79), .CK(W_CLK), .Q(mem[57]) );
  DFFQX2M mem_reg_0__0_ ( .D(n78), .CK(W_CLK), .Q(mem[56]) );
  DFFQX2M mem_reg_1__7_ ( .D(n77), .CK(W_CLK), .Q(mem[55]) );
  DFFQX2M mem_reg_1__6_ ( .D(n76), .CK(W_CLK), .Q(mem[54]) );
  DFFQX2M mem_reg_1__5_ ( .D(n75), .CK(W_CLK), .Q(mem[53]) );
  DFFQX2M mem_reg_1__4_ ( .D(n74), .CK(W_CLK), .Q(mem[52]) );
  DFFQX2M mem_reg_1__3_ ( .D(n73), .CK(W_CLK), .Q(mem[51]) );
  DFFQX2M mem_reg_1__2_ ( .D(n72), .CK(W_CLK), .Q(mem[50]) );
  DFFQX2M mem_reg_1__1_ ( .D(n71), .CK(W_CLK), .Q(mem[49]) );
  DFFQX2M mem_reg_1__0_ ( .D(n70), .CK(W_CLK), .Q(mem[48]) );
  DFFQX2M mem_reg_4__7_ ( .D(n53), .CK(W_CLK), .Q(mem[31]) );
  DFFQX2M mem_reg_4__6_ ( .D(n52), .CK(W_CLK), .Q(mem[30]) );
  DFFQX2M mem_reg_4__5_ ( .D(n51), .CK(W_CLK), .Q(mem[29]) );
  DFFQX2M mem_reg_4__4_ ( .D(n50), .CK(W_CLK), .Q(mem[28]) );
  DFFQX2M mem_reg_4__3_ ( .D(n49), .CK(W_CLK), .Q(mem[27]) );
  DFFQX2M mem_reg_4__2_ ( .D(n48), .CK(W_CLK), .Q(mem[26]) );
  DFFQX2M mem_reg_4__1_ ( .D(n47), .CK(W_CLK), .Q(mem[25]) );
  DFFQX2M mem_reg_4__0_ ( .D(n46), .CK(W_CLK), .Q(mem[24]) );
  DFFQX2M mem_reg_5__7_ ( .D(n45), .CK(W_CLK), .Q(mem[23]) );
  DFFQX2M mem_reg_5__6_ ( .D(n44), .CK(W_CLK), .Q(mem[22]) );
  DFFQX2M mem_reg_5__5_ ( .D(n43), .CK(W_CLK), .Q(mem[21]) );
  DFFQX2M mem_reg_5__4_ ( .D(n42), .CK(W_CLK), .Q(mem[20]) );
  DFFQX2M mem_reg_5__3_ ( .D(n41), .CK(W_CLK), .Q(mem[19]) );
  DFFQX2M mem_reg_5__2_ ( .D(n40), .CK(W_CLK), .Q(mem[18]) );
  DFFQX2M mem_reg_5__1_ ( .D(n39), .CK(W_CLK), .Q(mem[17]) );
  DFFQX2M mem_reg_5__0_ ( .D(n38), .CK(W_CLK), .Q(mem[16]) );
  DFFQX2M mem_reg_6__7_ ( .D(n37), .CK(W_CLK), .Q(mem[15]) );
  DFFQX2M mem_reg_6__6_ ( .D(n36), .CK(W_CLK), .Q(mem[14]) );
  DFFQX2M mem_reg_6__5_ ( .D(n35), .CK(W_CLK), .Q(mem[13]) );
  DFFQX2M mem_reg_6__4_ ( .D(n34), .CK(W_CLK), .Q(mem[12]) );
  DFFQX2M mem_reg_6__3_ ( .D(n33), .CK(W_CLK), .Q(mem[11]) );
  DFFQX2M mem_reg_6__2_ ( .D(n32), .CK(W_CLK), .Q(mem[10]) );
  DFFQX2M mem_reg_6__1_ ( .D(n31), .CK(W_CLK), .Q(mem[9]) );
  DFFQX2M mem_reg_6__0_ ( .D(n30), .CK(W_CLK), .Q(mem[8]) );
  DFFQX2M mem_reg_7__7_ ( .D(n29), .CK(W_CLK), .Q(mem[7]) );
  DFFQX2M mem_reg_7__6_ ( .D(n28), .CK(W_CLK), .Q(mem[6]) );
  DFFQX2M mem_reg_7__5_ ( .D(n27), .CK(W_CLK), .Q(mem[5]) );
  DFFQX2M mem_reg_7__4_ ( .D(n26), .CK(W_CLK), .Q(mem[4]) );
  DFFQX2M mem_reg_7__3_ ( .D(n25), .CK(W_CLK), .Q(mem[3]) );
  DFFQX2M mem_reg_7__2_ ( .D(n24), .CK(W_CLK), .Q(mem[2]) );
  DFFQX2M mem_reg_7__1_ ( .D(n23), .CK(W_CLK), .Q(mem[1]) );
  DFFQX2M mem_reg_7__0_ ( .D(n22), .CK(W_CLK), .Q(mem[0]) );
  DFFQX2M mem_reg_2__7_ ( .D(n69), .CK(W_CLK), .Q(mem[47]) );
  DFFQX2M mem_reg_2__6_ ( .D(n68), .CK(W_CLK), .Q(mem[46]) );
  DFFQX2M mem_reg_2__5_ ( .D(n67), .CK(W_CLK), .Q(mem[45]) );
  DFFQX2M mem_reg_2__4_ ( .D(n66), .CK(W_CLK), .Q(mem[44]) );
  DFFQX2M mem_reg_2__3_ ( .D(n65), .CK(W_CLK), .Q(mem[43]) );
  DFFQX2M mem_reg_2__2_ ( .D(n64), .CK(W_CLK), .Q(mem[42]) );
  DFFQX2M mem_reg_2__1_ ( .D(n63), .CK(W_CLK), .Q(mem[41]) );
  DFFQX2M mem_reg_2__0_ ( .D(n62), .CK(W_CLK), .Q(mem[40]) );
  DFFQX2M mem_reg_3__7_ ( .D(n61), .CK(W_CLK), .Q(mem[39]) );
  DFFQX2M mem_reg_3__6_ ( .D(n60), .CK(W_CLK), .Q(mem[38]) );
  DFFQX2M mem_reg_3__5_ ( .D(n59), .CK(W_CLK), .Q(mem[37]) );
  DFFQX2M mem_reg_3__4_ ( .D(n58), .CK(W_CLK), .Q(mem[36]) );
  DFFQX2M mem_reg_3__3_ ( .D(n57), .CK(W_CLK), .Q(mem[35]) );
  DFFQX2M mem_reg_3__2_ ( .D(n56), .CK(W_CLK), .Q(mem[34]) );
  DFFQX2M mem_reg_3__1_ ( .D(n55), .CK(W_CLK), .Q(mem[33]) );
  DFFQX2M mem_reg_3__0_ ( .D(n54), .CK(W_CLK), .Q(mem[32]) );
  BUFX2M U2 ( .A(n16), .Y(n117) );
  BUFX2M U3 ( .A(n18), .Y(n116) );
  BUFX2M U4 ( .A(n19), .Y(n115) );
  BUFX2M U5 ( .A(n12), .Y(n118) );
  INVX2M U6 ( .A(WR_DATA[0]), .Y(n121) );
  INVX2M U7 ( .A(WR_DATA[1]), .Y(n122) );
  INVX2M U8 ( .A(WR_DATA[2]), .Y(n123) );
  INVX2M U9 ( .A(WR_DATA[3]), .Y(n124) );
  INVX2M U10 ( .A(WR_DATA[4]), .Y(n125) );
  INVX2M U11 ( .A(WR_DATA[5]), .Y(n126) );
  INVX2M U12 ( .A(WR_DATA[6]), .Y(n127) );
  NAND3X2M U13 ( .A(n119), .B(n120), .C(n13), .Y(n15) );
  NAND3X2M U14 ( .A(n119), .B(n120), .C(n17), .Y(n20) );
  INVX2M U15 ( .A(WR_DATA[7]), .Y(n128) );
  NOR2X2M U16 ( .A(n112), .B(n113), .Y(n108) );
  NAND3X2M U17 ( .A(n13), .B(n120), .C(W_ADDR[0]), .Y(n14) );
  NAND3X2M U18 ( .A(W_ADDR[0]), .B(n13), .C(W_ADDR[1]), .Y(n11) );
  NOR2BX2M U19 ( .AN(n21), .B(W_ADDR[2]), .Y(n17) );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n121), .A0N(mem[0]), .A1N(n11), .Y(n22) );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n122), .A0N(mem[1]), .A1N(n11), .Y(n23) );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n123), .A0N(mem[2]), .A1N(n11), .Y(n24) );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n124), .A0N(mem[3]), .A1N(n11), .Y(n25) );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n125), .A0N(mem[4]), .A1N(n11), .Y(n26) );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n126), .A0N(mem[5]), .A1N(n11), .Y(n27) );
  OAI2BB2X1M U26 ( .B0(n11), .B1(n127), .A0N(mem[6]), .A1N(n11), .Y(n28) );
  OAI2BB2X1M U27 ( .B0(n11), .B1(n128), .A0N(mem[7]), .A1N(n11), .Y(n29) );
  OAI2BB2X1M U28 ( .B0(n121), .B1(n14), .A0N(mem[16]), .A1N(n14), .Y(n38) );
  OAI2BB2X1M U29 ( .B0(n122), .B1(n14), .A0N(mem[17]), .A1N(n14), .Y(n39) );
  OAI2BB2X1M U30 ( .B0(n123), .B1(n14), .A0N(mem[18]), .A1N(n14), .Y(n40) );
  OAI2BB2X1M U31 ( .B0(n124), .B1(n14), .A0N(mem[19]), .A1N(n14), .Y(n41) );
  OAI2BB2X1M U32 ( .B0(n125), .B1(n14), .A0N(mem[20]), .A1N(n14), .Y(n42) );
  OAI2BB2X1M U33 ( .B0(n126), .B1(n14), .A0N(mem[21]), .A1N(n14), .Y(n43) );
  OAI2BB2X1M U34 ( .B0(n127), .B1(n14), .A0N(mem[22]), .A1N(n14), .Y(n44) );
  OAI2BB2X1M U35 ( .B0(n128), .B1(n14), .A0N(mem[23]), .A1N(n14), .Y(n45) );
  OAI2BB2X1M U36 ( .B0(n121), .B1(n20), .A0N(mem[56]), .A1N(n20), .Y(n78) );
  OAI2BB2X1M U37 ( .B0(n122), .B1(n20), .A0N(mem[57]), .A1N(n20), .Y(n79) );
  OAI2BB2X1M U38 ( .B0(n123), .B1(n20), .A0N(mem[58]), .A1N(n20), .Y(n80) );
  OAI2BB2X1M U39 ( .B0(n124), .B1(n20), .A0N(mem[59]), .A1N(n20), .Y(n81) );
  OAI2BB2X1M U40 ( .B0(n125), .B1(n20), .A0N(mem[60]), .A1N(n20), .Y(n82) );
  OAI2BB2X1M U41 ( .B0(n126), .B1(n20), .A0N(mem[61]), .A1N(n20), .Y(n83) );
  OAI2BB2X1M U42 ( .B0(n127), .B1(n20), .A0N(mem[62]), .A1N(n20), .Y(n84) );
  OAI2BB2X1M U43 ( .B0(n128), .B1(n20), .A0N(mem[63]), .A1N(n20), .Y(n85) );
  OAI2BB2X1M U44 ( .B0(n121), .B1(n15), .A0N(mem[24]), .A1N(n15), .Y(n46) );
  OAI2BB2X1M U45 ( .B0(n122), .B1(n15), .A0N(mem[25]), .A1N(n15), .Y(n47) );
  OAI2BB2X1M U46 ( .B0(n123), .B1(n15), .A0N(mem[26]), .A1N(n15), .Y(n48) );
  OAI2BB2X1M U47 ( .B0(n124), .B1(n15), .A0N(mem[27]), .A1N(n15), .Y(n49) );
  OAI2BB2X1M U48 ( .B0(n125), .B1(n15), .A0N(mem[28]), .A1N(n15), .Y(n50) );
  OAI2BB2X1M U49 ( .B0(n126), .B1(n15), .A0N(mem[29]), .A1N(n15), .Y(n51) );
  OAI2BB2X1M U50 ( .B0(n127), .B1(n15), .A0N(mem[30]), .A1N(n15), .Y(n52) );
  OAI2BB2X1M U51 ( .B0(n128), .B1(n15), .A0N(mem[31]), .A1N(n15), .Y(n53) );
  OAI2BB2X1M U52 ( .B0(n121), .B1(n117), .A0N(mem[32]), .A1N(n117), .Y(n54) );
  OAI2BB2X1M U53 ( .B0(n122), .B1(n117), .A0N(mem[33]), .A1N(n117), .Y(n55) );
  OAI2BB2X1M U54 ( .B0(n123), .B1(n117), .A0N(mem[34]), .A1N(n117), .Y(n56) );
  OAI2BB2X1M U55 ( .B0(n124), .B1(n117), .A0N(mem[35]), .A1N(n117), .Y(n57) );
  OAI2BB2X1M U56 ( .B0(n125), .B1(n117), .A0N(mem[36]), .A1N(n117), .Y(n58) );
  OAI2BB2X1M U57 ( .B0(n126), .B1(n117), .A0N(mem[37]), .A1N(n117), .Y(n59) );
  OAI2BB2X1M U58 ( .B0(n127), .B1(n117), .A0N(mem[38]), .A1N(n117), .Y(n60) );
  OAI2BB2X1M U59 ( .B0(n121), .B1(n116), .A0N(mem[40]), .A1N(n116), .Y(n62) );
  OAI2BB2X1M U60 ( .B0(n122), .B1(n116), .A0N(mem[41]), .A1N(n116), .Y(n63) );
  OAI2BB2X1M U61 ( .B0(n123), .B1(n116), .A0N(mem[42]), .A1N(n116), .Y(n64) );
  OAI2BB2X1M U62 ( .B0(n124), .B1(n116), .A0N(mem[43]), .A1N(n116), .Y(n65) );
  OAI2BB2X1M U63 ( .B0(n125), .B1(n116), .A0N(mem[44]), .A1N(n116), .Y(n66) );
  OAI2BB2X1M U64 ( .B0(n126), .B1(n116), .A0N(mem[45]), .A1N(n116), .Y(n67) );
  OAI2BB2X1M U65 ( .B0(n127), .B1(n116), .A0N(mem[46]), .A1N(n116), .Y(n68) );
  OAI2BB2X1M U66 ( .B0(n121), .B1(n115), .A0N(mem[48]), .A1N(n115), .Y(n70) );
  OAI2BB2X1M U67 ( .B0(n122), .B1(n115), .A0N(mem[49]), .A1N(n115), .Y(n71) );
  OAI2BB2X1M U68 ( .B0(n123), .B1(n115), .A0N(mem[50]), .A1N(n115), .Y(n72) );
  OAI2BB2X1M U69 ( .B0(n124), .B1(n115), .A0N(mem[51]), .A1N(n115), .Y(n73) );
  OAI2BB2X1M U70 ( .B0(n125), .B1(n115), .A0N(mem[52]), .A1N(n115), .Y(n74) );
  OAI2BB2X1M U71 ( .B0(n126), .B1(n115), .A0N(mem[53]), .A1N(n115), .Y(n75) );
  OAI2BB2X1M U72 ( .B0(n127), .B1(n115), .A0N(mem[54]), .A1N(n115), .Y(n76) );
  OAI2BB2X1M U73 ( .B0(n118), .B1(n121), .A0N(mem[8]), .A1N(n118), .Y(n30) );
  OAI2BB2X1M U74 ( .B0(n118), .B1(n122), .A0N(mem[9]), .A1N(n118), .Y(n31) );
  OAI2BB2X1M U75 ( .B0(n118), .B1(n123), .A0N(mem[10]), .A1N(n118), .Y(n32) );
  OAI2BB2X1M U76 ( .B0(n118), .B1(n124), .A0N(mem[11]), .A1N(n118), .Y(n33) );
  OAI2BB2X1M U77 ( .B0(n118), .B1(n125), .A0N(mem[12]), .A1N(n118), .Y(n34) );
  OAI2BB2X1M U78 ( .B0(n118), .B1(n126), .A0N(mem[13]), .A1N(n118), .Y(n35) );
  OAI2BB2X1M U79 ( .B0(n118), .B1(n127), .A0N(mem[14]), .A1N(n118), .Y(n36) );
  OAI2BB2X1M U80 ( .B0(n128), .B1(n118), .A0N(mem[15]), .A1N(n118), .Y(n37) );
  OAI2BB2X1M U81 ( .B0(n128), .B1(n117), .A0N(mem[39]), .A1N(n117), .Y(n61) );
  OAI2BB2X1M U82 ( .B0(n128), .B1(n116), .A0N(mem[47]), .A1N(n116), .Y(n69) );
  OAI2BB2X1M U83 ( .B0(n128), .B1(n115), .A0N(mem[55]), .A1N(n115), .Y(n77) );
  NOR2BX2M U84 ( .AN(W_INC), .B(FULL), .Y(n21) );
  AND2X2M U85 ( .A(W_ADDR[2]), .B(n21), .Y(n13) );
  NAND3X2M U86 ( .A(W_ADDR[1]), .B(W_ADDR[0]), .C(n17), .Y(n16) );
  NAND3X2M U87 ( .A(W_ADDR[1]), .B(n119), .C(n17), .Y(n18) );
  NAND3X2M U88 ( .A(W_ADDR[0]), .B(n120), .C(n17), .Y(n19) );
  NAND3X2M U89 ( .A(n13), .B(n119), .C(W_ADDR[1]), .Y(n12) );
  INVX2M U90 ( .A(W_ADDR[1]), .Y(n120) );
  INVX2M U91 ( .A(W_ADDR[0]), .Y(n119) );
  NOR2X2M U92 ( .A(n112), .B(R_ADDR[1]), .Y(n109) );
  NOR2X2M U93 ( .A(n113), .B(R_ADDR[2]), .Y(n106) );
  NOR2X2M U94 ( .A(R_ADDR[1]), .B(R_ADDR[2]), .Y(n105) );
  INVX2M U95 ( .A(R_ADDR[1]), .Y(n113) );
  INVX2M U96 ( .A(R_ADDR[2]), .Y(n112) );
  INVX2M U97 ( .A(R_ADDR[0]), .Y(n114) );
  AO22X1M U98 ( .A0(mem[32]), .A1(n106), .B0(mem[48]), .B1(n105), .Y(n1) );
  AOI221XLM U99 ( .A0(mem[16]), .A1(n109), .B0(mem[0]), .B1(n108), .C0(n1), 
        .Y(n4) );
  AO22X1M U100 ( .A0(mem[40]), .A1(n106), .B0(mem[56]), .B1(n105), .Y(n2) );
  AOI221XLM U101 ( .A0(mem[24]), .A1(n109), .B0(mem[8]), .B1(n108), .C0(n2), 
        .Y(n3) );
  OAI22X1M U102 ( .A0(n114), .A1(n4), .B0(R_ADDR[0]), .B1(n3), .Y(RD_DATA[0])
         );
  AO22X1M U103 ( .A0(mem[33]), .A1(n106), .B0(mem[49]), .B1(n105), .Y(n5) );
  AOI221XLM U104 ( .A0(mem[17]), .A1(n109), .B0(mem[1]), .B1(n108), .C0(n5), 
        .Y(n8) );
  AO22X1M U105 ( .A0(mem[41]), .A1(n106), .B0(mem[57]), .B1(n105), .Y(n6) );
  AOI221XLM U106 ( .A0(mem[25]), .A1(n109), .B0(mem[9]), .B1(n108), .C0(n6), 
        .Y(n7) );
  OAI22X1M U107 ( .A0(n114), .A1(n8), .B0(R_ADDR[0]), .B1(n7), .Y(RD_DATA[1])
         );
  AO22X1M U108 ( .A0(mem[34]), .A1(n106), .B0(mem[50]), .B1(n105), .Y(n9) );
  AOI221XLM U109 ( .A0(mem[18]), .A1(n109), .B0(mem[2]), .B1(n108), .C0(n9), 
        .Y(n87) );
  AO22X1M U110 ( .A0(mem[42]), .A1(n106), .B0(mem[58]), .B1(n105), .Y(n10) );
  AOI221XLM U111 ( .A0(mem[26]), .A1(n109), .B0(mem[10]), .B1(n108), .C0(n10), 
        .Y(n86) );
  OAI22X1M U112 ( .A0(n114), .A1(n87), .B0(R_ADDR[0]), .B1(n86), .Y(RD_DATA[2]) );
  AO22X1M U113 ( .A0(mem[35]), .A1(n106), .B0(mem[51]), .B1(n105), .Y(n88) );
  AOI221XLM U114 ( .A0(mem[19]), .A1(n109), .B0(mem[3]), .B1(n108), .C0(n88), 
        .Y(n91) );
  AO22X1M U115 ( .A0(mem[43]), .A1(n106), .B0(mem[59]), .B1(n105), .Y(n89) );
  AOI221XLM U116 ( .A0(mem[27]), .A1(n109), .B0(mem[11]), .B1(n108), .C0(n89), 
        .Y(n90) );
  OAI22X1M U117 ( .A0(n114), .A1(n91), .B0(R_ADDR[0]), .B1(n90), .Y(RD_DATA[3]) );
  AO22X1M U118 ( .A0(mem[36]), .A1(n106), .B0(mem[52]), .B1(n105), .Y(n92) );
  AOI221XLM U119 ( .A0(mem[20]), .A1(n109), .B0(mem[4]), .B1(n108), .C0(n92), 
        .Y(n95) );
  AO22X1M U120 ( .A0(mem[44]), .A1(n106), .B0(mem[60]), .B1(n105), .Y(n93) );
  AOI221XLM U121 ( .A0(mem[28]), .A1(n109), .B0(mem[12]), .B1(n108), .C0(n93), 
        .Y(n94) );
  OAI22X1M U122 ( .A0(n114), .A1(n95), .B0(R_ADDR[0]), .B1(n94), .Y(RD_DATA[4]) );
  AO22X1M U123 ( .A0(mem[37]), .A1(n106), .B0(mem[53]), .B1(n105), .Y(n96) );
  AOI221XLM U124 ( .A0(mem[21]), .A1(n109), .B0(mem[5]), .B1(n108), .C0(n96), 
        .Y(n99) );
  AO22X1M U125 ( .A0(mem[45]), .A1(n106), .B0(mem[61]), .B1(n105), .Y(n97) );
  AOI221XLM U126 ( .A0(mem[29]), .A1(n109), .B0(mem[13]), .B1(n108), .C0(n97), 
        .Y(n98) );
  OAI22X1M U127 ( .A0(n114), .A1(n99), .B0(R_ADDR[0]), .B1(n98), .Y(RD_DATA[5]) );
  AO22X1M U128 ( .A0(mem[38]), .A1(n106), .B0(mem[54]), .B1(n105), .Y(n100) );
  AOI221XLM U129 ( .A0(mem[22]), .A1(n109), .B0(mem[6]), .B1(n108), .C0(n100), 
        .Y(n103) );
  AO22X1M U130 ( .A0(mem[46]), .A1(n106), .B0(mem[62]), .B1(n105), .Y(n101) );
  AOI221XLM U131 ( .A0(mem[30]), .A1(n109), .B0(mem[14]), .B1(n108), .C0(n101), 
        .Y(n102) );
  OAI22X1M U132 ( .A0(n114), .A1(n103), .B0(R_ADDR[0]), .B1(n102), .Y(
        RD_DATA[6]) );
  AO22X1M U133 ( .A0(mem[39]), .A1(n106), .B0(mem[55]), .B1(n105), .Y(n104) );
  AOI221XLM U134 ( .A0(mem[23]), .A1(n109), .B0(mem[7]), .B1(n108), .C0(n104), 
        .Y(n111) );
  AO22X1M U135 ( .A0(mem[47]), .A1(n106), .B0(mem[63]), .B1(n105), .Y(n107) );
  AOI221XLM U136 ( .A0(mem[31]), .A1(n109), .B0(mem[15]), .B1(n108), .C0(n107), 
        .Y(n110) );
  OAI22X1M U137 ( .A0(n111), .A1(n114), .B0(R_ADDR[0]), .B1(n110), .Y(
        RD_DATA[7]) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, 
        R_INC, WR_DATA, RD_DATA, FULL, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;

  wire   [3:0] rgray;
  wire   [3:0] sync_rptr;
  wire   [3:0] wgray;
  wire   [3:0] sync_wptr;
  wire   [2:0] w_addr;
  wire   [2:0] r_addr;

  DF_SYNC_WIDTH4_0 U_R2W_SYNC ( .CLK(W_CLK), .RST(W_RST), .DIN(rgray), .DOUT(
        sync_rptr) );
  DF_SYNC_WIDTH4_1 U_W2R_SYNC ( .CLK(R_CLK), .RST(R_RST), .DIN(wgray), .DOUT(
        sync_wptr) );
  FIFO_WR_ADDR_WIDTH3 U_WRITE ( .CLK(W_CLK), .RST(W_RST), .INC(W_INC), 
        .SYNC_RPTR(sync_rptr), .ADDRESS(w_addr), .GRAY_PTR(wgray), .FULL(FULL)
         );
  FIFO_RD_ADDR_WIDTH3 U_READ ( .CLK(R_CLK), .RST(R_RST), .INC(R_INC), 
        .SYNC_WPTR(sync_wptr), .ADDRESS(r_addr), .GRAY_PTR(rgray), .EMPTY(
        EMPTY) );
  FIFO_MEM_DATA_WIDTH8_ADDR_WIDTH3 U_MEMORY ( .W_CLK(W_CLK), .W_INC(W_INC), 
        .FULL(FULL), .W_ADDR(w_addr), .R_ADDR(r_addr), .WR_DATA(WR_DATA), 
        .RD_DATA(RD_DATA) );
endmodule


module DF_SYNC_WIDTH1_NUM_STAGES2_1 ( CLK, RST, DIN, DOUT );
  input [0:0] DIN;
  output [0:0] DOUT;
  input CLK, RST;
  wire   sync_ff_0__0_;

  DFFRQX2M sync_ff_reg_1__0_ ( .D(sync_ff_0__0_), .CK(CLK), .RN(RST), .Q(
        DOUT[0]) );
  DFFRQX2M sync_ff_reg_0__0_ ( .D(DIN[0]), .CK(CLK), .RN(RST), .Q(
        sync_ff_0__0_) );
endmodule


module RISING_EDGE_DETECTOR_1 ( CLK, RST, LEVEL, PULSE );
  input CLK, RST, LEVEL;
  output PULSE;
  wire   level_d;

  DFFRQX2M level_d_reg ( .D(LEVEL), .CK(CLK), .RN(RST), .Q(level_d) );
  NOR2BX2M U3 ( .AN(LEVEL), .B(level_d), .Y(PULSE) );
endmodule


module BUS_CAPTURE_BUS_WIDTH8 ( CLK, RST, CAPTURE, DATA_IN, DATA_OUT, VALID );
  input [7:0] DATA_IN;
  output [7:0] DATA_OUT;
  input CLK, RST, CAPTURE;
  output VALID;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n1;

  DFFRQX2M DATA_OUT_reg_7_ ( .D(n9), .CK(CLK), .RN(RST), .Q(DATA_OUT[7]) );
  DFFRQX2M DATA_OUT_reg_6_ ( .D(n8), .CK(CLK), .RN(RST), .Q(DATA_OUT[6]) );
  DFFRQX2M DATA_OUT_reg_5_ ( .D(n7), .CK(CLK), .RN(RST), .Q(DATA_OUT[5]) );
  DFFRQX2M DATA_OUT_reg_3_ ( .D(n5), .CK(CLK), .RN(RST), .Q(DATA_OUT[3]) );
  DFFRQX2M DATA_OUT_reg_0_ ( .D(n2), .CK(CLK), .RN(RST), .Q(DATA_OUT[0]) );
  DFFRQX2M DATA_OUT_reg_4_ ( .D(n6), .CK(CLK), .RN(RST), .Q(DATA_OUT[4]) );
  DFFRQX2M VALID_reg ( .D(CAPTURE), .CK(CLK), .RN(RST), .Q(VALID) );
  DFFRQX2M DATA_OUT_reg_1_ ( .D(n3), .CK(CLK), .RN(RST), .Q(DATA_OUT[1]) );
  DFFRQX2M DATA_OUT_reg_2_ ( .D(n4), .CK(CLK), .RN(RST), .Q(DATA_OUT[2]) );
  INVX2M U3 ( .A(CAPTURE), .Y(n1) );
  AO22X1M U4 ( .A0(DATA_IN[0]), .A1(CAPTURE), .B0(DATA_OUT[0]), .B1(n1), .Y(n2) );
  AO22X1M U5 ( .A0(DATA_IN[1]), .A1(CAPTURE), .B0(DATA_OUT[1]), .B1(n1), .Y(n3) );
  AO22X1M U6 ( .A0(DATA_IN[2]), .A1(CAPTURE), .B0(DATA_OUT[2]), .B1(n1), .Y(n4) );
  AO22X1M U7 ( .A0(DATA_IN[3]), .A1(CAPTURE), .B0(DATA_OUT[3]), .B1(n1), .Y(n5) );
  AO22X1M U8 ( .A0(DATA_IN[4]), .A1(CAPTURE), .B0(DATA_OUT[4]), .B1(n1), .Y(n6) );
  AO22X1M U9 ( .A0(DATA_IN[5]), .A1(CAPTURE), .B0(DATA_OUT[5]), .B1(n1), .Y(n7) );
  AO22X1M U10 ( .A0(DATA_IN[6]), .A1(CAPTURE), .B0(DATA_OUT[6]), .B1(n1), .Y(
        n8) );
  AO22X1M U11 ( .A0(DATA_IN[7]), .A1(CAPTURE), .B0(DATA_OUT[7]), .B1(n1), .Y(
        n9) );
endmodule


module DATA_SYNC_BUS_WIDTH8 ( dest_clk, dest_rst, unsync_bus, bus_enable, 
        sync_bus, enable_pulse_d );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input dest_clk, dest_rst, bus_enable;
  output enable_pulse_d;
  wire   enable_sync, capture_pulse;

  DF_SYNC_WIDTH1_NUM_STAGES2_1 U_ENABLE_SYNC ( .CLK(dest_clk), .RST(dest_rst), 
        .DIN(bus_enable), .DOUT(enable_sync) );
  RISING_EDGE_DETECTOR_1 U_EDGE ( .CLK(dest_clk), .RST(dest_rst), .LEVEL(
        enable_sync), .PULSE(capture_pulse) );
  BUS_CAPTURE_BUS_WIDTH8 U_CAPTURE ( .CLK(dest_clk), .RST(dest_rst), .CAPTURE(
        capture_pulse), .DATA_IN(unsync_bus), .DATA_OUT(sync_bus), .VALID(
        enable_pulse_d) );
endmodule


module SYS_TOP_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [15:0] A;
  input [15:0] B;
  output [31:0] PRODUCT;
  input TC;
  wire   ab_7__7_, ab_7__6_, ab_7__5_, ab_7__4_, ab_7__3_, ab_7__2_, ab_7__1_,
         ab_7__0_, ab_6__7_, ab_6__6_, ab_6__5_, ab_6__4_, ab_6__3_, ab_6__2_,
         ab_6__1_, ab_6__0_, ab_5__7_, ab_5__6_, ab_5__5_, ab_5__4_, ab_5__3_,
         ab_5__2_, ab_5__1_, ab_5__0_, ab_4__7_, ab_4__6_, ab_4__5_, ab_4__4_,
         ab_4__3_, ab_4__2_, ab_4__1_, ab_4__0_, ab_3__7_, ab_3__6_, ab_3__5_,
         ab_3__4_, ab_3__3_, ab_3__2_, ab_3__1_, ab_3__0_, ab_2__7_, ab_2__6_,
         ab_2__5_, ab_2__4_, ab_2__3_, ab_2__2_, ab_2__1_, ab_2__0_, ab_1__7_,
         ab_1__6_, ab_1__5_, ab_1__4_, ab_1__3_, ab_1__2_, ab_1__1_, ab_1__0_,
         ab_0__7_, ab_0__6_, ab_0__5_, ab_0__4_, ab_0__3_, ab_0__2_, ab_0__1_,
         CARRYB_7__6_, CARRYB_7__5_, CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_,
         CARRYB_7__1_, CARRYB_7__0_, CARRYB_6__6_, CARRYB_6__5_, CARRYB_6__4_,
         CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_, CARRYB_6__0_, CARRYB_5__6_,
         CARRYB_5__5_, CARRYB_5__4_, CARRYB_5__3_, CARRYB_5__2_, CARRYB_5__1_,
         CARRYB_5__0_, CARRYB_4__6_, CARRYB_4__5_, CARRYB_4__4_, CARRYB_4__3_,
         CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_, CARRYB_3__6_, CARRYB_3__5_,
         CARRYB_3__4_, CARRYB_3__3_, CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_,
         CARRYB_2__6_, CARRYB_2__5_, CARRYB_2__4_, CARRYB_2__3_, CARRYB_2__2_,
         CARRYB_2__1_, CARRYB_2__0_, SUMB_14__1_, SUMB_13__2_, SUMB_13__1_,
         SUMB_12__2_, SUMB_12__1_, SUMB_11__4_, SUMB_11__3_, SUMB_11__2_,
         SUMB_11__1_, SUMB_10__5_, SUMB_10__4_, SUMB_10__3_, SUMB_10__2_,
         SUMB_10__1_, SUMB_9__5_, SUMB_9__4_, SUMB_9__3_, SUMB_9__2_,
         SUMB_9__1_, SUMB_8__6_, SUMB_8__5_, SUMB_8__4_, SUMB_8__3_,
         SUMB_8__2_, SUMB_8__1_, SUMB_7__6_, SUMB_7__5_, SUMB_7__4_,
         SUMB_7__3_, SUMB_7__2_, SUMB_7__1_, SUMB_6__6_, SUMB_6__5_,
         SUMB_6__4_, SUMB_6__3_, SUMB_6__2_, SUMB_6__1_, SUMB_5__6_,
         SUMB_5__5_, SUMB_5__4_, SUMB_5__3_, SUMB_5__2_, SUMB_5__1_,
         SUMB_4__6_, SUMB_4__5_, SUMB_4__4_, SUMB_4__3_, SUMB_4__2_,
         SUMB_4__1_, SUMB_3__6_, SUMB_3__5_, SUMB_3__4_, SUMB_3__3_,
         SUMB_3__2_, SUMB_3__1_, SUMB_2__6_, SUMB_2__5_, SUMB_2__4_,
         SUMB_2__3_, SUMB_2__2_, SUMB_2__1_, SUMB_1__6_, SUMB_1__5_,
         SUMB_1__4_, SUMB_1__3_, SUMB_1__2_, SUMB_1__1_, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64;

  ADDFX2M S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(PRODUCT[6]) );
  ADDFX2M S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(PRODUCT[5]) );
  ADDFX2M S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(PRODUCT[4]) );
  ADDFX2M S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(PRODUCT[3]) );
  ADDFX2M S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  ADDFX2M S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  ADDFX2M S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  ADDFX2M S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  ADDFX2M S1_2_0 ( .A(ab_2__0_), .B(n8), .CI(SUMB_1__1_), .CO(CARRYB_2__0_), 
        .S(PRODUCT[2]) );
  ADDFX2M S2_2_1 ( .A(ab_2__1_), .B(n7), .CI(SUMB_1__2_), .CO(CARRYB_2__1_), 
        .S(SUMB_2__1_) );
  ADDFX2M S2_2_2 ( .A(ab_2__2_), .B(n6), .CI(SUMB_1__3_), .CO(CARRYB_2__2_), 
        .S(SUMB_2__2_) );
  ADDFX2M S2_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  ADDFX2M S2_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  ADDFX2M S2_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  ADDFX2M S2_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  ADDFX2M S2_2_6 ( .A(ab_2__6_), .B(n3), .CI(ab_1__7_), .CO(CARRYB_2__6_), .S(
        SUMB_2__6_) );
  ADDFX2M S1_7_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(PRODUCT[7]) );
  ADDFX2M S2_7_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  ADDFX2M S2_7_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(
        CARRYB_7__6_), .S(SUMB_7__6_) );
  ADDFX2M S2_2_4 ( .A(ab_2__4_), .B(n9), .CI(SUMB_1__5_), .CO(CARRYB_2__4_), 
        .S(SUMB_2__4_) );
  ADDFX2M S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  ADDFX2M S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  ADDFX2M S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  ADDFX2M S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  ADDFX2M S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  ADDFX2M S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  ADDFX2M S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  ADDFX2M S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  ADDFX2M S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  ADDFX2M S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  ADDFX2M S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  ADDFX2M S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  ADDFX2M S2_2_3 ( .A(ab_2__3_), .B(n5), .CI(SUMB_1__4_), .CO(CARRYB_2__3_), 
        .S(SUMB_2__3_) );
  ADDFX2M S2_7_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  ADDFX2M S2_7_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  ADDFX2M S2_7_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  ADDFX2M S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  ADDFX2M S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  ADDFX2M S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  ADDFX2M S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  ADDFX2M S2_7_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  ADDFX2M S2_2_5 ( .A(ab_2__5_), .B(n4), .CI(SUMB_1__6_), .CO(CARRYB_2__5_), 
        .S(SUMB_2__5_) );
  AND2X2M U2 ( .A(ab_0__7_), .B(ab_1__6_), .Y(n3) );
  AND2X2M U3 ( .A(ab_0__6_), .B(ab_1__5_), .Y(n4) );
  AND2X2M U4 ( .A(ab_0__4_), .B(ab_1__3_), .Y(n5) );
  AND2X2M U5 ( .A(ab_0__3_), .B(ab_1__2_), .Y(n6) );
  AND2X2M U6 ( .A(ab_0__2_), .B(ab_1__1_), .Y(n7) );
  AND2X2M U7 ( .A(ab_0__1_), .B(ab_1__0_), .Y(n8) );
  AND2X2M U8 ( .A(ab_0__5_), .B(ab_1__4_), .Y(n9) );
  AND2X2M U9 ( .A(SUMB_13__1_), .B(n11), .Y(n10) );
  CLKXOR2X2M U10 ( .A(n12), .B(SUMB_12__2_), .Y(SUMB_13__1_) );
  NAND2X2M U11 ( .A(SUMB_12__2_), .B(n12), .Y(n46) );
  AND2X2M U12 ( .A(SUMB_12__1_), .B(n13), .Y(n11) );
  CLKXOR2X2M U13 ( .A(n16), .B(SUMB_11__3_), .Y(SUMB_12__2_) );
  CLKXOR2X2M U14 ( .A(n15), .B(SUMB_11__2_), .Y(SUMB_12__1_) );
  AND2X2M U15 ( .A(SUMB_11__2_), .B(n15), .Y(n12) );
  AND2X2M U16 ( .A(SUMB_11__1_), .B(n17), .Y(n13) );
  AND2X2M U17 ( .A(SUMB_11__3_), .B(n16), .Y(n14) );
  CLKXOR2X2M U18 ( .A(n19), .B(SUMB_10__4_), .Y(SUMB_11__3_) );
  XNOR2X2M U19 ( .A(n46), .B(SUMB_13__2_), .Y(SUMB_14__1_) );
  XNOR2X2M U20 ( .A(n14), .B(n22), .Y(SUMB_13__2_) );
  CLKXOR2X2M U21 ( .A(n20), .B(SUMB_10__3_), .Y(SUMB_11__2_) );
  CLKXOR2X2M U22 ( .A(n18), .B(SUMB_10__2_), .Y(SUMB_11__1_) );
  AND2X2M U23 ( .A(SUMB_10__2_), .B(n18), .Y(n15) );
  AND2X2M U24 ( .A(SUMB_10__3_), .B(n20), .Y(n16) );
  AND2X2M U25 ( .A(SUMB_10__1_), .B(n21), .Y(n17) );
  NAND2X2M U26 ( .A(SUMB_10__4_), .B(n19), .Y(n45) );
  CLKXOR2X2M U27 ( .A(n23), .B(SUMB_9__3_), .Y(SUMB_10__2_) );
  CLKXOR2X2M U28 ( .A(n25), .B(SUMB_9__4_), .Y(SUMB_10__3_) );
  CLKXOR2X2M U29 ( .A(n24), .B(SUMB_9__2_), .Y(SUMB_10__1_) );
  AND2X2M U30 ( .A(SUMB_9__2_), .B(n24), .Y(n18) );
  AND2X2M U31 ( .A(SUMB_9__4_), .B(n25), .Y(n19) );
  AND2X2M U32 ( .A(SUMB_9__3_), .B(n23), .Y(n20) );
  AND2X2M U33 ( .A(SUMB_9__1_), .B(n26), .Y(n21) );
  CLKXOR2X2M U34 ( .A(n28), .B(SUMB_9__5_), .Y(SUMB_10__4_) );
  NAND2X2M U35 ( .A(SUMB_9__5_), .B(n28), .Y(n43) );
  CLKXOR2X2M U36 ( .A(n45), .B(SUMB_11__4_), .Y(n22) );
  CLKXOR2X2M U37 ( .A(n29), .B(SUMB_8__4_), .Y(SUMB_9__3_) );
  CLKXOR2X2M U38 ( .A(n30), .B(SUMB_8__3_), .Y(SUMB_9__2_) );
  CLKXOR2X2M U39 ( .A(n31), .B(SUMB_8__5_), .Y(SUMB_9__4_) );
  CLKXOR2X2M U40 ( .A(n32), .B(SUMB_8__2_), .Y(SUMB_9__1_) );
  INVX2M U41 ( .A(ab_0__5_), .Y(n39) );
  AND2X2M U42 ( .A(SUMB_8__3_), .B(n30), .Y(n23) );
  AND2X2M U43 ( .A(SUMB_8__2_), .B(n32), .Y(n24) );
  AND2X2M U44 ( .A(SUMB_8__4_), .B(n29), .Y(n25) );
  AND2X2M U45 ( .A(SUMB_8__1_), .B(n34), .Y(n26) );
  XNOR2X2M U46 ( .A(n26), .B(n42), .Y(PRODUCT[10]) );
  INVX2M U47 ( .A(SUMB_9__1_), .Y(n42) );
  XNOR2X2M U48 ( .A(n11), .B(n47), .Y(PRODUCT[14]) );
  INVX2M U49 ( .A(SUMB_13__1_), .Y(n47) );
  CLKXOR2X2M U50 ( .A(n33), .B(SUMB_8__6_), .Y(SUMB_9__5_) );
  XNOR2X2M U51 ( .A(n43), .B(SUMB_10__5_), .Y(SUMB_11__4_) );
  XNOR2X2M U52 ( .A(n27), .B(n48), .Y(SUMB_10__5_) );
  INVX2M U53 ( .A(ab_0__6_), .Y(n40) );
  AND2X2M U54 ( .A(SUMB_8__6_), .B(n33), .Y(n27) );
  CLKXOR2X2M U55 ( .A(n17), .B(SUMB_11__1_), .Y(PRODUCT[12]) );
  AND2X2M U56 ( .A(SUMB_8__5_), .B(n31), .Y(n28) );
  CLKXOR2X2M U57 ( .A(n13), .B(SUMB_12__1_), .Y(PRODUCT[13]) );
  XNOR2X2M U58 ( .A(n21), .B(n44), .Y(PRODUCT[11]) );
  INVX2M U59 ( .A(SUMB_10__1_), .Y(n44) );
  CLKXOR2X2M U60 ( .A(n34), .B(SUMB_8__1_), .Y(PRODUCT[9]) );
  CLKXOR2X2M U61 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(SUMB_8__4_) );
  CLKXOR2X2M U62 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(SUMB_8__3_) );
  CLKXOR2X2M U63 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(SUMB_8__2_) );
  CLKXOR2X2M U64 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(SUMB_8__1_) );
  INVX2M U65 ( .A(B[5]), .Y(n59) );
  XNOR2X2M U66 ( .A(ab_1__6_), .B(n41), .Y(SUMB_1__6_) );
  AND2X2M U67 ( .A(SUMB_7__4_), .B(CARRYB_7__3_), .Y(n29) );
  AND2X2M U68 ( .A(SUMB_7__3_), .B(CARRYB_7__2_), .Y(n30) );
  AND2X2M U69 ( .A(SUMB_7__5_), .B(CARRYB_7__4_), .Y(n31) );
  CLKXOR2X2M U70 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(SUMB_8__6_) );
  CLKXOR2X2M U71 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(SUMB_8__5_) );
  CLKXOR2X2M U72 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(PRODUCT[8]) );
  INVX2M U73 ( .A(ab_0__4_), .Y(n38) );
  INVX2M U74 ( .A(ab_0__7_), .Y(n41) );
  INVX2M U75 ( .A(ab_0__2_), .Y(n36) );
  INVX2M U76 ( .A(ab_0__3_), .Y(n37) );
  AND2X2M U77 ( .A(SUMB_7__2_), .B(CARRYB_7__1_), .Y(n32) );
  AND2X2M U78 ( .A(SUMB_7__6_), .B(CARRYB_7__5_), .Y(n33) );
  AND2X2M U79 ( .A(SUMB_7__1_), .B(CARRYB_7__0_), .Y(n34) );
  NAND2X2M U80 ( .A(ab_7__7_), .B(CARRYB_7__6_), .Y(n48) );
  INVX2M U81 ( .A(ab_0__1_), .Y(n35) );
  XNOR2X2M U82 ( .A(ab_1__0_), .B(n35), .Y(PRODUCT[1]) );
  XNOR2X2M U83 ( .A(ab_1__4_), .B(n39), .Y(SUMB_1__4_) );
  XNOR2X2M U84 ( .A(ab_1__5_), .B(n40), .Y(SUMB_1__5_) );
  CLKXOR2X2M U85 ( .A(n10), .B(SUMB_14__1_), .Y(PRODUCT[15]) );
  XNOR2X2M U86 ( .A(ab_1__3_), .B(n38), .Y(SUMB_1__3_) );
  XNOR2X2M U87 ( .A(ab_1__2_), .B(n37), .Y(SUMB_1__2_) );
  XNOR2X2M U88 ( .A(ab_1__1_), .B(n36), .Y(SUMB_1__1_) );
  INVX2M U89 ( .A(A[2]), .Y(n54) );
  INVX2M U90 ( .A(A[0]), .Y(n56) );
  INVX2M U91 ( .A(A[6]), .Y(n50) );
  INVX2M U92 ( .A(A[5]), .Y(n51) );
  INVX2M U93 ( .A(A[3]), .Y(n53) );
  INVX2M U94 ( .A(A[4]), .Y(n52) );
  INVX2M U95 ( .A(A[7]), .Y(n49) );
  INVXLM U96 ( .A(B[3]), .Y(n61) );
  INVX2M U97 ( .A(A[1]), .Y(n55) );
  INVXLM U98 ( .A(B[1]), .Y(n63) );
  INVXLM U99 ( .A(B[2]), .Y(n62) );
  INVXLM U100 ( .A(B[4]), .Y(n60) );
  INVXLM U101 ( .A(B[7]), .Y(n57) );
  INVXLM U102 ( .A(B[6]), .Y(n58) );
  INVXLM U103 ( .A(B[0]), .Y(n64) );
  NOR2X1M U104 ( .A(n49), .B(n57), .Y(ab_7__7_) );
  NOR2X1M U105 ( .A(n49), .B(n58), .Y(ab_7__6_) );
  NOR2X1M U106 ( .A(n49), .B(n59), .Y(ab_7__5_) );
  NOR2X1M U107 ( .A(n49), .B(n60), .Y(ab_7__4_) );
  NOR2X1M U108 ( .A(n49), .B(n61), .Y(ab_7__3_) );
  NOR2X1M U109 ( .A(n49), .B(n62), .Y(ab_7__2_) );
  NOR2X1M U110 ( .A(n49), .B(n63), .Y(ab_7__1_) );
  NOR2X1M U111 ( .A(n49), .B(n64), .Y(ab_7__0_) );
  NOR2X1M U112 ( .A(n57), .B(n50), .Y(ab_6__7_) );
  NOR2X1M U113 ( .A(n58), .B(n50), .Y(ab_6__6_) );
  NOR2X1M U114 ( .A(n59), .B(n50), .Y(ab_6__5_) );
  NOR2X1M U115 ( .A(n60), .B(n50), .Y(ab_6__4_) );
  NOR2X1M U116 ( .A(n61), .B(n50), .Y(ab_6__3_) );
  NOR2X1M U117 ( .A(n62), .B(n50), .Y(ab_6__2_) );
  NOR2X1M U118 ( .A(n63), .B(n50), .Y(ab_6__1_) );
  NOR2X1M U119 ( .A(n64), .B(n50), .Y(ab_6__0_) );
  NOR2X1M U120 ( .A(n57), .B(n51), .Y(ab_5__7_) );
  NOR2X1M U121 ( .A(n58), .B(n51), .Y(ab_5__6_) );
  NOR2X1M U122 ( .A(n59), .B(n51), .Y(ab_5__5_) );
  NOR2X1M U123 ( .A(n60), .B(n51), .Y(ab_5__4_) );
  NOR2X1M U124 ( .A(n61), .B(n51), .Y(ab_5__3_) );
  NOR2X1M U125 ( .A(n62), .B(n51), .Y(ab_5__2_) );
  NOR2X1M U126 ( .A(n63), .B(n51), .Y(ab_5__1_) );
  NOR2X1M U127 ( .A(n64), .B(n51), .Y(ab_5__0_) );
  NOR2X1M U128 ( .A(n57), .B(n52), .Y(ab_4__7_) );
  NOR2X1M U129 ( .A(n58), .B(n52), .Y(ab_4__6_) );
  NOR2X1M U130 ( .A(n59), .B(n52), .Y(ab_4__5_) );
  NOR2X1M U131 ( .A(n60), .B(n52), .Y(ab_4__4_) );
  NOR2X1M U132 ( .A(n61), .B(n52), .Y(ab_4__3_) );
  NOR2X1M U133 ( .A(n62), .B(n52), .Y(ab_4__2_) );
  NOR2X1M U134 ( .A(n63), .B(n52), .Y(ab_4__1_) );
  NOR2X1M U135 ( .A(n64), .B(n52), .Y(ab_4__0_) );
  NOR2X1M U136 ( .A(n57), .B(n53), .Y(ab_3__7_) );
  NOR2X1M U137 ( .A(n58), .B(n53), .Y(ab_3__6_) );
  NOR2X1M U138 ( .A(n59), .B(n53), .Y(ab_3__5_) );
  NOR2X1M U139 ( .A(n60), .B(n53), .Y(ab_3__4_) );
  NOR2X1M U140 ( .A(n61), .B(n53), .Y(ab_3__3_) );
  NOR2X1M U141 ( .A(n62), .B(n53), .Y(ab_3__2_) );
  NOR2X1M U142 ( .A(n63), .B(n53), .Y(ab_3__1_) );
  NOR2X1M U143 ( .A(n64), .B(n53), .Y(ab_3__0_) );
  NOR2X1M U144 ( .A(n57), .B(n54), .Y(ab_2__7_) );
  NOR2X1M U145 ( .A(n58), .B(n54), .Y(ab_2__6_) );
  NOR2X1M U146 ( .A(n59), .B(n54), .Y(ab_2__5_) );
  NOR2X1M U147 ( .A(n60), .B(n54), .Y(ab_2__4_) );
  NOR2X1M U148 ( .A(n61), .B(n54), .Y(ab_2__3_) );
  NOR2X1M U149 ( .A(n62), .B(n54), .Y(ab_2__2_) );
  NOR2X1M U150 ( .A(n63), .B(n54), .Y(ab_2__1_) );
  NOR2X1M U151 ( .A(n64), .B(n54), .Y(ab_2__0_) );
  NOR2X1M U152 ( .A(n57), .B(n55), .Y(ab_1__7_) );
  NOR2X1M U153 ( .A(n58), .B(n55), .Y(ab_1__6_) );
  NOR2X1M U154 ( .A(n59), .B(n55), .Y(ab_1__5_) );
  NOR2X1M U155 ( .A(n60), .B(n55), .Y(ab_1__4_) );
  NOR2X1M U156 ( .A(n61), .B(n55), .Y(ab_1__3_) );
  NOR2X1M U157 ( .A(n62), .B(n55), .Y(ab_1__2_) );
  NOR2X1M U158 ( .A(n63), .B(n55), .Y(ab_1__1_) );
  NOR2X1M U159 ( .A(n64), .B(n55), .Y(ab_1__0_) );
  NOR2X1M U160 ( .A(n57), .B(n56), .Y(ab_0__7_) );
  NOR2X1M U161 ( .A(n58), .B(n56), .Y(ab_0__6_) );
  NOR2X1M U162 ( .A(n59), .B(n56), .Y(ab_0__5_) );
  NOR2X1M U163 ( .A(n60), .B(n56), .Y(ab_0__4_) );
  NOR2X1M U164 ( .A(n61), .B(n56), .Y(ab_0__3_) );
  NOR2X1M U165 ( .A(n62), .B(n56), .Y(ab_0__2_) );
  NOR2X1M U166 ( .A(n63), .B(n56), .Y(ab_0__1_) );
  NOR2X1M U167 ( .A(n64), .B(n56), .Y(PRODUCT[0]) );
endmodule


module SYS_TOP_DW_div_uns_1 ( a, b, quotient, remainder, divide_by_0 );
  input [15:0] a;
  input [15:0] b;
  output [15:0] quotient;
  output [15:0] remainder;
  output divide_by_0;
  wire   n640, n641, n642, n643, u_div_SumTmp_1__0_, u_div_SumTmp_1__5_,
         u_div_SumTmp_1__6_, u_div_SumTmp_2__0_, u_div_SumTmp_2__1_,
         u_div_SumTmp_2__2_, u_div_SumTmp_2__3_, u_div_SumTmp_2__4_,
         u_div_SumTmp_2__5_, u_div_SumTmp_2__6_, u_div_SumTmp_2__7_,
         u_div_SumTmp_2__8_, u_div_SumTmp_2__11_, u_div_SumTmp_3__0_,
         u_div_SumTmp_3__1_, u_div_SumTmp_3__2_, u_div_SumTmp_3__3_,
         u_div_SumTmp_3__4_, u_div_SumTmp_3__5_, u_div_SumTmp_3__6_,
         u_div_SumTmp_3__7_, u_div_SumTmp_3__9_, u_div_SumTmp_3__10_,
         u_div_SumTmp_4__2_, u_div_SumTmp_4__5_, u_div_SumTmp_4__6_,
         u_div_SumTmp_4__8_, u_div_SumTmp_4__9_, u_div_SumTmp_5__0_,
         u_div_SumTmp_5__2_, u_div_SumTmp_5__5_, u_div_SumTmp_5__6_,
         u_div_SumTmp_5__7_, u_div_SumTmp_5__8_, u_div_SumTmp_5__9_,
         u_div_SumTmp_5__10_, u_div_SumTmp_6__0_, u_div_SumTmp_6__3_,
         u_div_SumTmp_6__4_, u_div_SumTmp_6__5_, u_div_SumTmp_6__6_,
         u_div_SumTmp_6__7_, u_div_SumTmp_6__8_, u_div_SumTmp_6__9_,
         u_div_SumTmp_7__2_, u_div_SumTmp_7__3_, u_div_SumTmp_7__4_,
         u_div_SumTmp_7__5_, u_div_SumTmp_7__6_, u_div_SumTmp_7__7_,
         u_div_SumTmp_8__0_, u_div_SumTmp_8__2_, u_div_SumTmp_8__3_,
         u_div_SumTmp_8__4_, u_div_SumTmp_8__5_, u_div_SumTmp_8__6_,
         u_div_SumTmp_8__7_, u_div_SumTmp_9__0_, u_div_SumTmp_9__2_,
         u_div_SumTmp_9__3_, u_div_SumTmp_9__4_, u_div_SumTmp_9__5_,
         u_div_SumTmp_9__6_, u_div_SumTmp_10__0_, u_div_SumTmp_10__2_,
         u_div_SumTmp_10__3_, u_div_SumTmp_10__4_, u_div_SumTmp_10__5_,
         u_div_SumTmp_11__0_, u_div_SumTmp_11__2_, u_div_SumTmp_11__3_,
         u_div_SumTmp_11__4_, u_div_SumTmp_12__0_, u_div_SumTmp_12__2_,
         u_div_SumTmp_12__3_, u_div_SumTmp_13__2_, u_div_CryTmp_0__1_,
         u_div_CryTmp_0__2_, u_div_CryTmp_0__3_, u_div_CryTmp_0__7_,
         u_div_CryTmp_0__8_, u_div_CryTmp_0__10_, u_div_CryTmp_0__14_,
         u_div_CryTmp_1__1_, u_div_CryTmp_1__2_, u_div_CryTmp_1__3_,
         u_div_CryTmp_1__4_, u_div_CryTmp_1__5_, u_div_CryTmp_1__6_,
         u_div_CryTmp_1__7_, u_div_CryTmp_1__8_, u_div_CryTmp_1__9_,
         u_div_CryTmp_1__10_, u_div_CryTmp_1__12_, u_div_CryTmp_1__13_,
         u_div_CryTmp_1__14_, u_div_CryTmp_2__1_, u_div_CryTmp_2__2_,
         u_div_CryTmp_2__3_, u_div_CryTmp_2__4_, u_div_CryTmp_2__5_,
         u_div_CryTmp_2__6_, u_div_CryTmp_2__7_, u_div_CryTmp_2__8_,
         u_div_CryTmp_2__9_, u_div_CryTmp_2__10_, u_div_CryTmp_2__11_,
         u_div_CryTmp_3__1_, u_div_CryTmp_3__3_, u_div_CryTmp_3__4_,
         u_div_CryTmp_3__5_, u_div_CryTmp_3__7_, u_div_CryTmp_3__9_,
         u_div_CryTmp_3__11_, u_div_CryTmp_3__12_, u_div_CryTmp_3__13_,
         u_div_CryTmp_4__2_, u_div_CryTmp_4__9_, u_div_CryTmp_4__10_,
         u_div_CryTmp_5__1_, u_div_CryTmp_5__2_, u_div_CryTmp_5__3_,
         u_div_CryTmp_5__6_, u_div_CryTmp_5__7_, u_div_CryTmp_5__8_,
         u_div_CryTmp_6__1_, u_div_CryTmp_6__2_, u_div_CryTmp_6__3_,
         u_div_CryTmp_6__4_, u_div_CryTmp_6__5_, u_div_CryTmp_6__6_,
         u_div_CryTmp_6__7_, u_div_CryTmp_6__8_, u_div_CryTmp_6__10_,
         u_div_CryTmp_7__2_, u_div_CryTmp_7__3_, u_div_CryTmp_7__4_,
         u_div_CryTmp_7__5_, u_div_CryTmp_7__6_, u_div_CryTmp_7__7_,
         u_div_CryTmp_8__2_, u_div_CryTmp_8__3_, u_div_CryTmp_8__4_,
         u_div_CryTmp_8__5_, u_div_CryTmp_8__6_, u_div_CryTmp_8__7_,
         u_div_CryTmp_8__8_, u_div_CryTmp_9__1_, u_div_CryTmp_9__2_,
         u_div_CryTmp_9__3_, u_div_CryTmp_9__4_, u_div_CryTmp_9__5_,
         u_div_CryTmp_9__6_, u_div_CryTmp_9__7_, u_div_CryTmp_10__1_,
         u_div_CryTmp_10__2_, u_div_CryTmp_10__3_, u_div_CryTmp_10__4_,
         u_div_CryTmp_10__5_, u_div_CryTmp_10__6_, u_div_CryTmp_11__1_,
         u_div_CryTmp_11__2_, u_div_CryTmp_11__3_, u_div_CryTmp_11__4_,
         u_div_CryTmp_11__5_, u_div_CryTmp_12__1_, u_div_CryTmp_12__2_,
         u_div_CryTmp_12__3_, u_div_CryTmp_12__4_, u_div_CryTmp_13__2_,
         u_div_CryTmp_13__3_, u_div_CryTmp_14__2_, u_div_PartRem_1__1_,
         u_div_PartRem_1__2_, u_div_PartRem_1__3_, u_div_PartRem_1__7_,
         u_div_PartRem_1__8_, u_div_PartRem_1__9_, u_div_PartRem_1__10_,
         u_div_PartRem_1__13_, u_div_PartRem_1__14_, u_div_PartRem_1__15_,
         u_div_PartRem_2__2_, u_div_PartRem_2__4_, u_div_PartRem_2__5_,
         u_div_PartRem_2__6_, u_div_PartRem_2__7_, u_div_PartRem_2__8_,
         u_div_PartRem_2__9_, u_div_PartRem_2__10_, u_div_PartRem_2__11_,
         u_div_PartRem_2__12_, u_div_PartRem_2__13_, u_div_PartRem_2__14_,
         u_div_PartRem_3__11_, u_div_PartRem_4__9_, u_div_PartRem_4__10_,
         u_div_PartRem_5__9_, u_div_PartRem_5__10_, u_div_PartRem_6__9_,
         u_div_PartRem_6__10_, u_div_PartRem_7__9_, u_div_PartRem_8__1_,
         u_div_PartRem_13__3_, u_div_PartRem_14__1_, net10520, net10511,
         net10502, net10492, net10488, net10487, net10447, net10439, net10427,
         net10391, net10386, net10377, net10374, net10373, net11754, net11753,
         net11752, net11773, n_cell_13486_net12833, n_cell_13506_net12889,
         net14795, net14806, net14807, net14819, net14827, net14836, net14835,
         net14932, net14933, net14940, net14943, net14944, net14977, net15010,
         net15009, net15103, net15233, net15232, net15222, net15221, net15316,
         net15366, net15415, net15426, net15485, net15464, net15511, net15570,
         net15583, net15582, net15589, net15588, net15621, net15620, net15619,
         net15618, net15617, net15606, net15605, net15678, net15735, net15741,
         net15771, net15769, net15768, net15850, net15912, net15910, net15909,
         net16037, net16035, net16034, net16073, net16198, net16196, net16258,
         net16391, net16405, net16404, net16543, net16710, net16727, net16747,
         net16746, net16814, net16845, net16872, net16883, net16886, net16900,
         net16921, net16924, net16940, net16942, net16950, net16989, net17007,
         net17860, net17855, net17807, net17782, net17776, net17760, net17936,
         u_div_SumTmp_4__7_, net17933, net15409, u_div_SumTmp_14__0_,
         u_div_SumTmp_13__0_, u_div_CryTmp_14__1_, u_div_CryTmp_13__1_,
         net19444, net19413, net19412, net19408, net19401, net19396, net19393,
         net19390, net19384, net19373, net19353, net19573, net19586,
         u_div_SumTmp_3__8_, u_div_SumTmp_2__9_, u_div_PartRem_3__9_, net17879,
         net17863, net17777, net16896, net10370, u_div_SumTmp_4__0_,
         u_div_CryTmp_4__1_, u_div_CryTmp_4__12_, u_div_CryTmp_4__11_,
         u_div_SumTmp_7__8_, u_div_SumTmp_7__0_, u_div_CryTmp_7__9_,
         u_div_CryTmp_7__1_, u_div_CryTmp_15__1_, net14796, net20546, net20551,
         net20564, net20656, net20929, net20912, net20899, net20890, net20881,
         net20842, net20840, n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n325, n326, n327, n328, n329, n330, n331, n332, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634;
  wire   [5:1] u_div_BInv;

  ADDFHX4M u_div_u_fa_PartRem_0_7_5 ( .A(n583), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_7__5_), .CO(u_div_CryTmp_7__6_), .S(u_div_SumTmp_7__5_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_11_4 ( .A(net15415), .B(n581), .CI(
        u_div_CryTmp_11__4_), .CO(u_div_CryTmp_11__5_), .S(u_div_SumTmp_11__4_) );
  ADDFHX4M u_div_u_fa_PartRem_0_12_3 ( .A(u_div_BInv[3]), .B(
        u_div_PartRem_13__3_), .CI(u_div_CryTmp_12__3_), .CO(
        u_div_CryTmp_12__4_), .S(u_div_SumTmp_12__3_) );
  ADDFHX4M u_div_u_fa_PartRem_0_1_6 ( .A(u_div_PartRem_2__6_), .B(net20912), 
        .CI(u_div_CryTmp_1__6_), .CO(u_div_CryTmp_1__7_), .S(
        u_div_SumTmp_1__6_) );
  ADDFHX4M u_div_u_fa_PartRem_0_9_5 ( .A(n593), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_9__5_), .CO(u_div_CryTmp_9__6_), .S(u_div_SumTmp_9__5_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_2_4 ( .A(n590), .B(net15415), .CI(
        u_div_CryTmp_2__4_), .CO(u_div_CryTmp_2__5_), .S(u_div_SumTmp_2__4_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_8_4 ( .A(n586), .B(net15415), .CI(
        u_div_CryTmp_8__4_), .CO(u_div_CryTmp_8__5_), .S(u_div_SumTmp_8__4_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_6_4 ( .A(n587), .B(net15415), .CI(
        u_div_CryTmp_6__4_), .CO(u_div_CryTmp_6__5_), .S(u_div_SumTmp_6__4_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_6_5 ( .A(n588), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_6__5_), .CO(u_div_CryTmp_6__6_), .S(u_div_SumTmp_6__5_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_6_6 ( .A(n562), .B(net20912), .CI(
        u_div_CryTmp_6__6_), .CO(u_div_CryTmp_6__7_), .S(u_div_SumTmp_6__6_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_8_5 ( .A(n585), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_8__5_), .CO(u_div_CryTmp_8__6_), .S(u_div_SumTmp_8__5_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_8_3 ( .A(u_div_BInv[3]), .B(n574), .CI(
        u_div_CryTmp_8__3_), .CO(u_div_CryTmp_8__4_), .S(u_div_SumTmp_8__3_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_9_4 ( .A(n121), .B(net15415), .CI(
        u_div_CryTmp_9__4_), .CO(u_div_CryTmp_9__5_), .S(u_div_SumTmp_9__4_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_1_5 ( .A(u_div_PartRem_2__5_), .B(
        u_div_BInv[5]), .CI(u_div_CryTmp_1__5_), .CO(u_div_CryTmp_1__6_), .S(
        u_div_SumTmp_1__5_) );
  ADDFX2M u_div_u_fa_PartRem_0_9_0 ( .A(1'b0), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_9__1_), .S(u_div_SumTmp_9__0_) );
  ADDFX2M u_div_u_fa_PartRem_0_10_0 ( .A(1'b0), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_10__1_), .S(u_div_SumTmp_10__0_) );
  ADDFX2M u_div_u_fa_PartRem_0_11_0 ( .A(1'b0), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_11__1_), .S(u_div_SumTmp_11__0_) );
  ADDFX2M u_div_u_fa_PartRem_0_12_0 ( .A(1'b0), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_12__1_), .S(u_div_SumTmp_12__0_) );
  ADDFHX4M u_div_u_fa_PartRem_0_13_0 ( .A(1'b0), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_13__1_), .S(u_div_SumTmp_13__0_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_0 ( .A(a[0]), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_0__1_) );
  ADDFX2M u_div_u_fa_PartRem_0_6_0 ( .A(a[6]), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_6__1_), .S(u_div_SumTmp_6__0_) );
  ADDFX2M u_div_u_fa_PartRem_0_5_0 ( .A(a[5]), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_5__1_), .S(u_div_SumTmp_5__0_) );
  ADDFX2M u_div_u_fa_PartRem_0_3_0 ( .A(a[3]), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_3__1_), .S(u_div_SumTmp_3__0_) );
  ADDFX2M u_div_u_fa_PartRem_0_2_0 ( .A(a[2]), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_2__1_), .S(u_div_SumTmp_2__0_) );
  ADDFX2M u_div_u_fa_PartRem_0_1_0 ( .A(a[1]), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_1__1_), .S(u_div_SumTmp_1__0_) );
  ADDFX2M u_div_u_fa_PartRem_0_4_0 ( .A(a[4]), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_4__1_), .S(u_div_SumTmp_4__0_) );
  ADDFX2M u_div_u_fa_PartRem_0_7_0 ( .A(a[7]), .B(u_div_CryTmp_14__1_), .CI(
        1'b1), .CO(u_div_CryTmp_7__1_), .S(u_div_SumTmp_7__0_) );
  CLKINVX16M U1 ( .A(u_div_CryTmp_14__1_), .Y(u_div_SumTmp_14__0_) );
  NAND2X3M U2 ( .A(u_div_CryTmp_6__2_), .B(n12), .Y(n463) );
  NAND2X3M U3 ( .A(u_div_PartRem_8__1_), .B(u_div_CryTmp_7__1_), .Y(net15769)
         );
  NAND2X6M U4 ( .A(u_div_PartRem_1__1_), .B(u_div_CryTmp_0__1_), .Y(n87) );
  NAND2X6M U5 ( .A(n120), .B(u_div_BInv[3]), .Y(net19444) );
  NOR2X2M U6 ( .A(n609), .B(b[7]), .Y(n1) );
  NAND2X4M U7 ( .A(u_div_PartRem_1__1_), .B(n124), .Y(n88) );
  INVX4M U8 ( .A(u_div_CryTmp_0__3_), .Y(n118) );
  NAND2X2M U9 ( .A(u_div_CryTmp_0__3_), .B(n286), .Y(net19408) );
  CLKMX2X6M U10 ( .A(n48), .B(u_div_SumTmp_12__2_), .S0(quotient[12]), .Y(n568) );
  NAND2X1M U11 ( .A(u_div_CryTmp_6__7_), .B(n561), .Y(n405) );
  NOR2X8M U12 ( .A(n609), .B(b[7]), .Y(net11773) );
  MXI2X4M U13 ( .A(n395), .B(n348), .S0(n640), .Y(n347) );
  CLKINVX4M U14 ( .A(u_div_CryTmp_8__8_), .Y(net10502) );
  XNOR3X2M U15 ( .A(u_div_CryTmp_12__1_), .B(n124), .C(n357), .Y(n344) );
  BUFX5M U16 ( .A(u_div_BInv[1]), .Y(n124) );
  INVXLM U17 ( .A(n602), .Y(n2) );
  INVXLM U18 ( .A(u_div_CryTmp_2__7_), .Y(n3) );
  INVX2M U19 ( .A(n3), .Y(n4) );
  INVXLM U20 ( .A(n617), .Y(n5) );
  INVX2M U21 ( .A(n5), .Y(n6) );
  XNOR2X2M U22 ( .A(n185), .B(n204), .Y(n7) );
  XNOR2XLM U23 ( .A(n185), .B(n204), .Y(n184) );
  CLKINVX8M U24 ( .A(u_div_CryTmp_1__12_), .Y(n8) );
  INVXLM U25 ( .A(u_div_CryTmp_1__12_), .Y(n363) );
  INVX2M U26 ( .A(n394), .Y(n9) );
  CLKAND2X6M U27 ( .A(u_div_CryTmp_12__4_), .B(n422), .Y(n601) );
  BUFX2M U28 ( .A(n567), .Y(quotient[11]) );
  OR2X2M U29 ( .A(u_div_CryTmp_1__12_), .B(n524), .Y(n330) );
  NAND2X6M U30 ( .A(n8), .B(n525), .Y(n364) );
  INVX3M U31 ( .A(net10370), .Y(n267) );
  MXI2XLM U32 ( .A(n590), .B(u_div_SumTmp_2__4_), .S0(net16391), .Y(n615) );
  NOR2X3M U33 ( .A(u_div_BInv[3]), .B(n220), .Y(n225) );
  NAND2X4M U34 ( .A(n342), .B(n28), .Y(n518) );
  INVX2M U35 ( .A(n395), .Y(n11) );
  CLKINVX2M U36 ( .A(n277), .Y(quotient[1]) );
  CLKINVX1M U37 ( .A(n277), .Y(n288) );
  CLKMX2X2M U38 ( .A(n615), .B(n620), .S0(net15850), .Y(n143) );
  OAI2BB1XLM U39 ( .A0N(b[3]), .A1N(net19384), .B0(net15850), .Y(net19390) );
  INVX4M U40 ( .A(net15850), .Y(n277) );
  MXI2X4M U41 ( .A(n13), .B(n73), .S0(net19586), .Y(n12) );
  XNOR2X2M U42 ( .A(net15768), .B(net16900), .Y(n13) );
  INVX10M U43 ( .A(net19586), .Y(n643) );
  INVX6M U44 ( .A(n629), .Y(u_div_PartRem_13__3_) );
  XOR2X3M U45 ( .A(n123), .B(u_div_CryTmp_14__1_), .Y(net15909) );
  AND2X4M U46 ( .A(u_div_CryTmp_14__2_), .B(net15588), .Y(quotient[14]) );
  AND2X4M U47 ( .A(net15588), .B(u_div_SumTmp_14__0_), .Y(n145) );
  CLKAND2X4M U48 ( .A(n379), .B(net10492), .Y(net15588) );
  NOR2BX4M U49 ( .AN(net10511), .B(n630), .Y(n550) );
  INVXLM U50 ( .A(n498), .Y(n14) );
  INVX2M U51 ( .A(n14), .Y(n15) );
  NAND2X4M U52 ( .A(n195), .B(n116), .Y(n16) );
  NAND2X4M U53 ( .A(n195), .B(n116), .Y(n190) );
  INVX8M U54 ( .A(net20656), .Y(net20840) );
  INVX3M U55 ( .A(net19412), .Y(net19413) );
  INVX2M U56 ( .A(n247), .Y(net15741) );
  INVX6M U57 ( .A(n290), .Y(u_div_PartRem_14__1_) );
  NOR2X2M U58 ( .A(u_div_CryTmp_0__14_), .B(u_div_PartRem_1__14_), .Y(n551) );
  XOR3XLM U59 ( .A(n4), .B(n559), .C(net10386), .Y(u_div_SumTmp_2__7_) );
  NAND2X3M U60 ( .A(u_div_CryTmp_2__7_), .B(n559), .Y(n17) );
  NAND2X4M U61 ( .A(u_div_CryTmp_2__7_), .B(net10386), .Y(n18) );
  NAND2X2M U62 ( .A(n559), .B(net10386), .Y(n19) );
  NAND3X4M U63 ( .A(n19), .B(n18), .C(n17), .Y(u_div_CryTmp_2__8_) );
  MX2X2M U64 ( .A(net14932), .B(u_div_SumTmp_3__6_), .S0(n317), .Y(n559) );
  INVX4M U65 ( .A(u_div_CryTmp_2__8_), .Y(n605) );
  NAND2X4M U66 ( .A(u_div_CryTmp_0__2_), .B(u_div_PartRem_1__2_), .Y(n20) );
  NAND2X4M U67 ( .A(u_div_CryTmp_0__2_), .B(n28), .Y(n21) );
  NAND2X1M U68 ( .A(u_div_PartRem_1__2_), .B(n28), .Y(n22) );
  NAND3X4M U69 ( .A(n22), .B(n21), .C(n20), .Y(u_div_CryTmp_0__3_) );
  MXI2X2M U70 ( .A(net16727), .B(n163), .S0(n330), .Y(u_div_PartRem_1__2_) );
  NAND2X2M U71 ( .A(net15909), .B(n326), .Y(n25) );
  NAND2X4M U72 ( .A(n23), .B(n24), .Y(n26) );
  NAND2X4M U73 ( .A(n25), .B(n26), .Y(n146) );
  INVX2M U74 ( .A(net15909), .Y(n23) );
  INVX2M U75 ( .A(n326), .Y(n24) );
  AND2X2M U76 ( .A(n321), .B(net16942), .Y(n326) );
  INVXLM U77 ( .A(u_div_CryTmp_5__8_), .Y(n247) );
  NAND2X8M U78 ( .A(n265), .B(n264), .Y(u_div_CryTmp_4__12_) );
  NAND2X2M U79 ( .A(u_div_SumTmp_9__2_), .B(quotient[9]), .Y(n84) );
  INVX2M U80 ( .A(quotient[9]), .Y(n82) );
  CLKNAND2X4M U81 ( .A(n600), .B(u_div_CryTmp_14__1_), .Y(n448) );
  CLKNAND2X4M U82 ( .A(n600), .B(n123), .Y(n447) );
  NAND3X3M U83 ( .A(n237), .B(n235), .C(n236), .Y(n234) );
  INVX4M U84 ( .A(n633), .Y(n641) );
  INVX4M U85 ( .A(n617), .Y(n103) );
  NAND2X4M U86 ( .A(u_div_PartRem_14__1_), .B(u_div_CryTmp_13__1_), .Y(n40) );
  DLY1X1M U87 ( .A(n643), .Y(quotient[7]) );
  INVX8M U88 ( .A(net16896), .Y(net17777) );
  NAND3X3M U89 ( .A(n483), .B(n482), .C(n484), .Y(u_div_CryTmp_1__5_) );
  NAND2X3M U90 ( .A(u_div_CryTmp_3__3_), .B(n571), .Y(n360) );
  CLKNAND2X8M U91 ( .A(n254), .B(u_div_CryTmp_6__1_), .Y(net15606) );
  NAND2X6M U92 ( .A(n156), .B(n252), .Y(u_div_CryTmp_7__9_) );
  NAND2X2M U93 ( .A(net15589), .B(u_div_BInv[3]), .Y(net10488) );
  CLKNAND2X2M U94 ( .A(n568), .B(u_div_BInv[3]), .Y(n427) );
  INVX3M U95 ( .A(b[3]), .Y(u_div_BInv[3]) );
  NAND3X4M U96 ( .A(n476), .B(n475), .C(n477), .Y(u_div_CryTmp_13__3_) );
  NOR2X4M U97 ( .A(b[3]), .B(b[2]), .Y(net15426) );
  MXI2X3M U98 ( .A(net16924), .B(u_div_SumTmp_2__2_), .S0(net16391), .Y(
        net10370) );
  BUFX6M U99 ( .A(net17879), .Y(net16391) );
  NAND2X6M U100 ( .A(n261), .B(u_div_CryTmp_3__1_), .Y(net15233) );
  MX2XLM U101 ( .A(n616), .B(n133), .S0(net15850), .Y(n139) );
  INVX6M U102 ( .A(net20929), .Y(quotient[5]) );
  CLKINVX8M U103 ( .A(net20656), .Y(net20929) );
  NAND2X4M U104 ( .A(n103), .B(n28), .Y(n456) );
  NAND2BX1M U105 ( .AN(b[4]), .B(n1), .Y(net10520) );
  INVXLM U106 ( .A(n293), .Y(n47) );
  NAND2BX8M U107 ( .AN(n243), .B(net14932), .Y(net15221) );
  MXI2XLM U108 ( .A(n591), .B(u_div_SumTmp_2__3_), .S0(net16391), .Y(n616) );
  CLKNAND2X4M U109 ( .A(u_div_CryTmp_11__3_), .B(n568), .Y(n425) );
  CLKMX2X6M U110 ( .A(net14827), .B(u_div_SumTmp_4__2_), .S0(n251), .Y(n571)
         );
  BUFX5M U111 ( .A(u_div_CryTmp_4__12_), .Y(n251) );
  NAND2BX4M U112 ( .AN(b[2]), .B(net14827), .Y(n236) );
  CLKMX2X4M U113 ( .A(n588), .B(u_div_SumTmp_6__5_), .S0(quotient[6]), .Y(n563) );
  CLKMX2X4M U114 ( .A(n569), .B(u_div_SumTmp_6__3_), .S0(quotient[6]), .Y(
        net14806) );
  INVX3M U115 ( .A(n617), .Y(u_div_PartRem_2__2_) );
  NAND2X3M U116 ( .A(u_div_CryTmp_9__2_), .B(n28), .Y(n445) );
  MX2X1M U117 ( .A(n570), .B(u_div_SumTmp_10__3_), .S0(quotient[10]), .Y(n592)
         );
  MX2XLM U118 ( .A(n140), .B(u_div_SumTmp_10__5_), .S0(quotient[10]), .Y(n564)
         );
  MX2X1M U119 ( .A(n582), .B(u_div_SumTmp_10__4_), .S0(quotient[10]), .Y(n593)
         );
  MX2X3M U120 ( .A(n53), .B(u_div_SumTmp_10__2_), .S0(quotient[10]), .Y(n576)
         );
  INVX6M U121 ( .A(n634), .Y(quotient[10]) );
  CLKNAND2X2M U122 ( .A(u_div_CryTmp_7__3_), .B(n566), .Y(n397) );
  CLKNAND2X4M U123 ( .A(u_div_CryTmp_8__2_), .B(n28), .Y(n453) );
  CLKINVX2M U124 ( .A(net10488), .Y(net10487) );
  NAND2X2M U125 ( .A(u_div_CryTmp_10__2_), .B(n28), .Y(n543) );
  NAND2X3M U126 ( .A(u_div_CryTmp_5__2_), .B(net14835), .Y(n368) );
  NAND2X2M U127 ( .A(n216), .B(n28), .Y(n549) );
  AND2X8M U128 ( .A(u_div_CryTmp_12__4_), .B(net15589), .Y(quotient[12]) );
  NAND2X3M U129 ( .A(u_div_CryTmp_2__2_), .B(n28), .Y(n495) );
  CLKNAND2X4M U130 ( .A(u_div_CryTmp_2__2_), .B(net16924), .Y(n494) );
  NAND2X3M U131 ( .A(n216), .B(n573), .Y(n548) );
  MXI2X6M U132 ( .A(n126), .B(n131), .S0(n251), .Y(n573) );
  NAND3X4M U133 ( .A(n446), .B(n444), .C(n445), .Y(u_div_CryTmp_9__3_) );
  NAND2X2M U134 ( .A(u_div_CryTmp_9__2_), .B(n347), .Y(n444) );
  NAND2X6M U135 ( .A(n83), .B(n84), .Y(n574) );
  NAND3X4M U136 ( .A(net15583), .B(n473), .C(net15582), .Y(u_div_CryTmp_12__3_) );
  NAND3X4M U137 ( .A(n469), .B(n470), .C(n471), .Y(u_div_CryTmp_12__2_) );
  NAND2X2M U138 ( .A(u_div_CryTmp_12__2_), .B(n293), .Y(net15583) );
  CLKNAND2X4M U139 ( .A(u_div_CryTmp_8__2_), .B(n222), .Y(n452) );
  INVX3M U140 ( .A(b[4]), .Y(net20899) );
  CLKNAND2X4M U141 ( .A(u_div_CryTmp_11__3_), .B(u_div_BInv[3]), .Y(n426) );
  OR2X12M U142 ( .A(b[6]), .B(b[5]), .Y(n609) );
  NAND2X4M U143 ( .A(u_div_CryTmp_10__3_), .B(u_div_BInv[3]), .Y(n429) );
  XOR2XLM U144 ( .A(u_div_BInv[3]), .B(n571), .Y(n359) );
  NAND2X1M U145 ( .A(n571), .B(u_div_BInv[3]), .Y(n362) );
  XNOR2XLM U146 ( .A(n202), .B(u_div_BInv[3]), .Y(net16405) );
  CLKNAND2X4M U147 ( .A(u_div_CryTmp_7__3_), .B(u_div_BInv[3]), .Y(n398) );
  NAND2X2M U148 ( .A(n566), .B(u_div_BInv[3]), .Y(n399) );
  CLKNAND2X4M U149 ( .A(u_div_CryTmp_9__3_), .B(u_div_BInv[3]), .Y(n521) );
  NAND2X1M U150 ( .A(n576), .B(u_div_BInv[3]), .Y(n522) );
  CLKNAND2X2M U151 ( .A(n570), .B(u_div_BInv[3]), .Y(n430) );
  CLKNAND2X2M U152 ( .A(u_div_CryTmp_14__1_), .B(n124), .Y(net15912) );
  NAND2XLM U153 ( .A(n124), .B(u_div_CryTmp_12__1_), .Y(n471) );
  BUFX2M U154 ( .A(u_div_BInv[2]), .Y(n27) );
  BUFX6M U155 ( .A(u_div_BInv[2]), .Y(n28) );
  INVXLM U156 ( .A(b[2]), .Y(u_div_BInv[2]) );
  INVX6M U157 ( .A(b[0]), .Y(u_div_CryTmp_15__1_) );
  CLKNAND2X4M U158 ( .A(u_div_PartRem_8__1_), .B(n124), .Y(n431) );
  CLKNAND2X4M U159 ( .A(n254), .B(n124), .Y(net15605) );
  CLKNAND2X4M U160 ( .A(n293), .B(n28), .Y(net15582) );
  INVXLM U161 ( .A(n371), .Y(n52) );
  CLKNAND2X2M U162 ( .A(n12), .B(n28), .Y(n462) );
  NAND3X3M U163 ( .A(net15769), .B(n431), .C(net15771), .Y(u_div_CryTmp_7__2_)
         );
  NAND2BX4M U164 ( .AN(net15678), .B(net11773), .Y(n630) );
  NAND3X4M U165 ( .A(n453), .B(n452), .C(n451), .Y(u_div_CryTmp_8__3_) );
  AND3XLM U166 ( .A(net15617), .B(n49), .C(net15619), .Y(net16989) );
  OR2X2M U167 ( .A(net20912), .B(net14943), .Y(n117) );
  CLKMX2X4M U168 ( .A(net14807), .B(u_div_SumTmp_5__5_), .S0(quotient[5]), .Y(
        net14943) );
  NAND2X4M U169 ( .A(n16), .B(n102), .Y(net15618) );
  NAND3X3M U170 ( .A(n405), .B(n406), .C(n407), .Y(u_div_CryTmp_6__8_) );
  NAND2X3M U171 ( .A(u_div_CryTmp_6__7_), .B(net10386), .Y(n406) );
  NAND2BX1M U172 ( .AN(b[3]), .B(n184), .Y(n192) );
  NAND2X2M U173 ( .A(n342), .B(u_div_CryTmp_11__2_), .Y(n516) );
  AND2X2M U174 ( .A(net16258), .B(u_div_CryTmp_12__1_), .Y(n331) );
  XOR2XLM U175 ( .A(n367), .B(net14835), .Y(u_div_SumTmp_5__2_) );
  MXI2X2M U176 ( .A(net19413), .B(net19390), .S0(n59), .Y(n269) );
  MXI2X4M U177 ( .A(n128), .B(n577), .S0(n274), .Y(net14827) );
  MXI2X1M U178 ( .A(net14836), .B(n155), .S0(u_div_CryTmp_6__10_), .Y(net14835) );
  NOR2X6M U179 ( .A(u_div_CryTmp_2__9_), .B(n160), .Y(n298) );
  NAND3X3M U180 ( .A(n370), .B(n368), .C(n369), .Y(u_div_CryTmp_5__3_) );
  NAND2X2M U181 ( .A(u_div_CryTmp_5__2_), .B(n28), .Y(n370) );
  NAND3X4M U182 ( .A(n401), .B(n402), .C(n403), .Y(u_div_CryTmp_5__2_) );
  MXI2X4M U183 ( .A(n366), .B(u_div_SumTmp_13__2_), .S0(quotient[13]), .Y(n629) );
  AOI2B1X4M U184 ( .A1N(n178), .A0(n205), .B0(n179), .Y(n182) );
  NOR2BX4M U185 ( .AN(u_div_CryTmp_15__1_), .B(b[1]), .Y(net10511) );
  MXI2X6M U186 ( .A(net16747), .B(net16746), .S0(n298), .Y(net17855) );
  MXI2X6M U187 ( .A(n621), .B(n622), .S0(n364), .Y(u_div_PartRem_1__1_) );
  NAND3X4M U188 ( .A(n495), .B(n493), .C(n494), .Y(u_div_CryTmp_2__3_) );
  NAND2X3M U189 ( .A(u_div_CryTmp_12__2_), .B(n28), .Y(n473) );
  CLKNAND2X4M U190 ( .A(n222), .B(n28), .Y(n451) );
  NAND3X4M U191 ( .A(net15605), .B(net15606), .C(n461), .Y(u_div_CryTmp_6__2_)
         );
  CLKMX2X8M U192 ( .A(n44), .B(u_div_SumTmp_11__2_), .S0(n567), .Y(n570) );
  MX2XLM U193 ( .A(n581), .B(u_div_SumTmp_11__4_), .S0(quotient[11]), .Y(n140)
         );
  NAND2X4M U194 ( .A(n261), .B(n124), .Y(net15232) );
  NAND2X3M U195 ( .A(n190), .B(n104), .Y(net15617) );
  NAND2X3M U196 ( .A(u_div_CryTmp_2__5_), .B(n589), .Y(n112) );
  NAND3X4M U197 ( .A(net15910), .B(net15912), .C(n408), .Y(u_div_CryTmp_14__2_) );
  CLKNAND2X4M U198 ( .A(u_div_CryTmp_6__3_), .B(u_div_BInv[3]), .Y(n391) );
  NAND2X4M U199 ( .A(u_div_PartRem_14__1_), .B(n124), .Y(n474) );
  OR2X4M U200 ( .A(n182), .B(n67), .Y(n458) );
  NAND2X2M U201 ( .A(n371), .B(u_div_CryTmp_10__2_), .Y(n542) );
  NAND3X4M U202 ( .A(n474), .B(n40), .C(net15570), .Y(u_div_CryTmp_13__2_) );
  NAND2X4M U203 ( .A(n118), .B(n119), .Y(n120) );
  MXI2X6M U204 ( .A(n294), .B(n132), .S0(quotient[13]), .Y(n293) );
  CLKINVX8M U205 ( .A(n291), .Y(quotient[13]) );
  NAND3X4M U206 ( .A(n520), .B(n521), .C(n522), .Y(u_div_CryTmp_9__4_) );
  NAND2X3M U207 ( .A(net11752), .B(u_div_CryTmp_4__1_), .Y(net16035) );
  NAND2X4M U208 ( .A(u_div_CryTmp_2__5_), .B(u_div_BInv[5]), .Y(n113) );
  MXI2X6M U209 ( .A(n387), .B(n223), .S0(n641), .Y(n222) );
  NAND3X4M U210 ( .A(n512), .B(n513), .C(n514), .Y(u_div_CryTmp_2__4_) );
  INVX4M U211 ( .A(net10391), .Y(u_div_PartRem_8__1_) );
  MXI2X6M U212 ( .A(n343), .B(n344), .S0(quotient[12]), .Y(n342) );
  CLKNAND2X4M U213 ( .A(u_div_CryTmp_1__4_), .B(net15415), .Y(n483) );
  MXI2X6M U214 ( .A(net11753), .B(net11754), .S0(n423), .Y(net11752) );
  NAND2X6M U215 ( .A(net16543), .B(net15735), .Y(n423) );
  NOR2BX2M U216 ( .AN(net10511), .B(n630), .Y(n321) );
  INVX4M U217 ( .A(b[1]), .Y(u_div_BInv[1]) );
  OAI211X4M U218 ( .A0(n198), .A1(n270), .B0(net19444), .C0(net19408), .Y(
        net19401) );
  NAND2XLM U219 ( .A(u_div_CryTmp_0__1_), .B(n124), .Y(n89) );
  INVXLM U220 ( .A(n124), .Y(net17782) );
  XOR2XLM U221 ( .A(n124), .B(u_div_CryTmp_4__1_), .Y(net16034) );
  XOR2XLM U222 ( .A(n124), .B(u_div_CryTmp_5__1_), .Y(n400) );
  XOR2XLM U223 ( .A(n124), .B(u_div_CryTmp_11__1_), .Y(n409) );
  NAND2XLM U224 ( .A(u_div_CryTmp_11__1_), .B(n124), .Y(n412) );
  AND2X4M U225 ( .A(u_div_CryTmp_10__6_), .B(n166), .Y(n134) );
  MX2X2M U226 ( .A(n35), .B(u_div_SumTmp_8__2_), .S0(quotient[8]), .Y(n566) );
  XNOR2X2M U227 ( .A(n233), .B(n248), .Y(n232) );
  NAND2X6M U228 ( .A(n602), .B(n380), .Y(u_div_CryTmp_6__10_) );
  INVX2M U229 ( .A(n227), .Y(n241) );
  CLKAND2X2M U230 ( .A(net15415), .B(net14806), .Y(n199) );
  XNOR2X2M U231 ( .A(n174), .B(n189), .Y(u_div_SumTmp_4__6_) );
  XNOR2X2M U232 ( .A(net20912), .B(n177), .Y(n189) );
  NOR2XLM U233 ( .A(n175), .B(n176), .Y(n174) );
  NAND2BX4M U234 ( .AN(net20840), .B(n193), .Y(n188) );
  NAND2X2M U235 ( .A(n198), .B(n151), .Y(n239) );
  NAND2X4M U236 ( .A(u_div_CryTmp_14__2_), .B(n145), .Y(n290) );
  INVX2M U237 ( .A(n283), .Y(net15589) );
  CLKINVX2M U238 ( .A(u_div_SumTmp_3__1_), .Y(n329) );
  NAND2X2M U239 ( .A(n575), .B(n28), .Y(n509) );
  NAND2X2M U240 ( .A(u_div_CryTmp_7__2_), .B(n575), .Y(n507) );
  NAND2X2M U241 ( .A(u_div_CryTmp_7__2_), .B(n28), .Y(n508) );
  NAND2BX4M U242 ( .AN(n277), .B(n285), .Y(net19412) );
  OR2X2M U243 ( .A(n7), .B(u_div_BInv[3]), .Y(n201) );
  INVX2M U244 ( .A(n54), .Y(n55) );
  NAND2X2M U245 ( .A(n347), .B(n28), .Y(n446) );
  CLKINVX2M U246 ( .A(n241), .Y(n33) );
  XNOR2XLM U247 ( .A(n227), .B(u_div_BInv[5]), .Y(net15464) );
  XNOR2X1M U248 ( .A(n170), .B(n186), .Y(u_div_SumTmp_5__5_) );
  NAND2X2M U249 ( .A(net10373), .B(net10374), .Y(n138) );
  OR2X2M U250 ( .A(n162), .B(u_div_PartRem_2__8_), .Y(n332) );
  INVX2M U251 ( .A(n148), .Y(u_div_PartRem_2__11_) );
  NAND2BX2M U252 ( .AN(u_div_BInv[5]), .B(n187), .Y(n194) );
  INVX2M U253 ( .A(net20546), .Y(u_div_BInv[5]) );
  XNOR2XLM U254 ( .A(n314), .B(n312), .Y(n305) );
  NAND2BX2M U255 ( .AN(u_div_PartRem_1__9_), .B(n529), .Y(u_div_CryTmp_0__10_)
         );
  NOR2X2M U256 ( .A(u_div_CryTmp_0__8_), .B(u_div_PartRem_1__8_), .Y(n529) );
  XNOR2X4M U257 ( .A(n315), .B(net16921), .Y(n306) );
  NAND2XLM U258 ( .A(n313), .B(quotient[3]), .Y(n315) );
  INVXLM U259 ( .A(n305), .Y(n304) );
  INVX2M U260 ( .A(a[4]), .Y(n262) );
  INVX2M U261 ( .A(u_div_SumTmp_4__0_), .Y(n263) );
  NAND3X4M U262 ( .A(net15232), .B(net15233), .C(n545), .Y(n216) );
  INVX2M U263 ( .A(a[3]), .Y(n502) );
  INVX2M U264 ( .A(u_div_SumTmp_3__0_), .Y(n503) );
  NAND2X2M U265 ( .A(n123), .B(u_div_CryTmp_3__1_), .Y(n545) );
  NAND2X2M U266 ( .A(u_div_SumTmp_9__0_), .B(net10386), .Y(n224) );
  XNOR2X2M U267 ( .A(n123), .B(u_div_CryTmp_1__1_), .Y(n310) );
  NAND2X4M U268 ( .A(net11752), .B(n123), .Y(n393) );
  INVX2M U269 ( .A(n203), .Y(n204) );
  NAND2X4M U270 ( .A(n134), .B(u_div_CryTmp_9__1_), .Y(n354) );
  MX2X2M U271 ( .A(n573), .B(u_div_SumTmp_3__2_), .S0(net16845), .Y(n591) );
  OR2X2M U272 ( .A(n147), .B(n68), .Y(n67) );
  MX2X2M U273 ( .A(n576), .B(u_div_SumTmp_9__3_), .S0(quotient[9]), .Y(n586)
         );
  INVX2M U274 ( .A(n268), .Y(n270) );
  NAND2BX2M U275 ( .AN(net19353), .B(n269), .Y(n268) );
  INVX2M U276 ( .A(n284), .Y(n280) );
  NAND2BX2M U277 ( .AN(net15415), .B(n270), .Y(net19393) );
  NAND2X2M U278 ( .A(n143), .B(net20551), .Y(n284) );
  NOR2X2M U279 ( .A(n139), .B(net20546), .Y(n282) );
  MX2X2M U280 ( .A(n136), .B(u_div_SumTmp_3__4_), .S0(net16845), .Y(n589) );
  INVX2M U281 ( .A(n196), .Y(n176) );
  AND2X2M U282 ( .A(n101), .B(n117), .Y(n125) );
  NAND2X2M U283 ( .A(n279), .B(net19393), .Y(n278) );
  NOR2X2M U284 ( .A(n139), .B(n280), .Y(n279) );
  NAND2X2M U285 ( .A(net19393), .B(n281), .Y(net19396) );
  NOR2X2M U286 ( .A(net20546), .B(n280), .Y(n281) );
  INVX2M U287 ( .A(n378), .Y(n335) );
  NOR2BX2M U288 ( .AN(net10447), .B(u_div_PartRem_3__11_), .Y(n307) );
  NOR2X2M U289 ( .A(u_div_PartRem_4__9_), .B(u_div_PartRem_4__10_), .Y(n129)
         );
  INVX2M U290 ( .A(n613), .Y(u_div_PartRem_2__7_) );
  INVX2M U291 ( .A(n316), .Y(n317) );
  OR2X2M U292 ( .A(n595), .B(u_div_PartRem_6__9_), .Y(n439) );
  BUFX2M U293 ( .A(n81), .Y(n357) );
  NAND2X4M U294 ( .A(n601), .B(u_div_CryTmp_11__1_), .Y(n410) );
  NOR2X2M U295 ( .A(n332), .B(u_div_PartRem_2__11_), .Y(n328) );
  NAND3X2M U296 ( .A(n374), .B(n373), .C(n375), .Y(u_div_CryTmp_0__8_) );
  AND2X2M U297 ( .A(n623), .B(n437), .Y(net15735) );
  INVX2M U298 ( .A(n439), .Y(n437) );
  NAND3X4M U299 ( .A(n109), .B(n108), .C(n110), .Y(u_div_CryTmp_10__6_) );
  NAND2X2M U300 ( .A(u_div_CryTmp_10__5_), .B(u_div_BInv[5]), .Y(n109) );
  NAND2X2M U301 ( .A(u_div_CryTmp_10__5_), .B(n140), .Y(n108) );
  INVX2M U302 ( .A(net20899), .Y(n198) );
  XNOR2X2M U303 ( .A(n308), .B(n304), .Y(net10374) );
  INVX2M U304 ( .A(n302), .Y(n308) );
  AND2X2M U305 ( .A(net10427), .B(n_cell_13506_net12889), .Y(n380) );
  INVX4M U306 ( .A(u_div_CryTmp_6__8_), .Y(n602) );
  AND2X4M U307 ( .A(n156), .B(n252), .Y(net19586) );
  BUFX2M U308 ( .A(u_div_BInv[1]), .Y(n122) );
  NAND2X2M U309 ( .A(n526), .B(net10374), .Y(u_div_CryTmp_1__14_) );
  INVX2M U310 ( .A(u_div_CryTmp_1__13_), .Y(n526) );
  NAND2BX2M U311 ( .AN(u_div_PartRem_1__13_), .B(n530), .Y(u_div_CryTmp_0__14_) );
  NOR2X2M U312 ( .A(u_div_CryTmp_0__10_), .B(n527), .Y(n530) );
  INVX2M U313 ( .A(n306), .Y(n309) );
  NOR2X2M U314 ( .A(n302), .B(n304), .Y(n303) );
  INVX2M U315 ( .A(n242), .Y(quotient[4]) );
  INVX2M U316 ( .A(net17863), .Y(quotient[3]) );
  NAND2X2M U317 ( .A(n602), .B(n380), .Y(quotient[6]) );
  NAND2X2M U318 ( .A(n275), .B(net15485), .Y(n29) );
  NAND3X4M U319 ( .A(n30), .B(n276), .C(net19373), .Y(u_div_CryTmp_0__7_) );
  INVX2M U320 ( .A(n29), .Y(n30) );
  INVXLM U321 ( .A(n2), .Y(n31) );
  INVX2M U322 ( .A(n31), .Y(n32) );
  OAI2BB1X4M U323 ( .A0N(net20546), .A1N(n33), .B0(u_div_CryTmp_3__5_), .Y(
        n240) );
  INVXLM U324 ( .A(n222), .Y(n34) );
  INVX2M U325 ( .A(n34), .Y(n35) );
  INVXLM U326 ( .A(n459), .Y(n36) );
  INVX2M U327 ( .A(n36), .Y(n37) );
  INVX2M U328 ( .A(n577), .Y(n38) );
  NAND2X2M U329 ( .A(n282), .B(n284), .Y(n275) );
  NAND2X2M U330 ( .A(u_div_CryTmp_0__7_), .B(net10386), .Y(n374) );
  NAND2X2M U331 ( .A(u_div_CryTmp_0__7_), .B(u_div_PartRem_1__7_), .Y(n373) );
  MXI2X6M U332 ( .A(n598), .B(n599), .S0(u_div_CryTmp_6__10_), .Y(n597) );
  INVXLM U333 ( .A(n363), .Y(n39) );
  NAND2XLM U334 ( .A(u_div_CryTmp_13__1_), .B(u_div_PartRem_14__1_), .Y(
        net17007) );
  INVXLM U335 ( .A(u_div_CryTmp_12__2_), .Y(n41) );
  INVX2M U336 ( .A(n41), .Y(n42) );
  XNOR2X1M U337 ( .A(n409), .B(n9), .Y(n372) );
  XNOR3XLM U338 ( .A(n123), .B(u_div_CryTmp_13__1_), .C(u_div_PartRem_14__1_), 
        .Y(n132) );
  INVXLM U339 ( .A(n342), .Y(n43) );
  INVX2M U340 ( .A(n43), .Y(n44) );
  INVXLM U341 ( .A(u_div_CryTmp_9__6_), .Y(n45) );
  INVX2M U342 ( .A(n45), .Y(n46) );
  NAND2X2M U343 ( .A(u_div_CryTmp_9__6_), .B(n564), .Y(n433) );
  XNOR2X2M U344 ( .A(n230), .B(n231), .Y(n228) );
  MXI2X2M U345 ( .A(net20842), .B(n228), .S0(quotient[4]), .Y(n227) );
  INVX2M U346 ( .A(n47), .Y(n48) );
  NAND2BX1M U347 ( .AN(n55), .B(u_div_CryTmp_11__5_), .Y(n499) );
  NAND2XLM U348 ( .A(n345), .B(u_div_CryTmp_12__4_), .Y(n411) );
  NAND2XLM U349 ( .A(n101), .B(n102), .Y(n49) );
  NAND3X4M U350 ( .A(n487), .B(n486), .C(n488), .Y(u_div_CryTmp_2__7_) );
  NAND2X4M U351 ( .A(n197), .B(n196), .Y(n115) );
  INVX2M U352 ( .A(n230), .Y(n50) );
  INVX2M U353 ( .A(net14836), .Y(n51) );
  INVX2M U354 ( .A(n52), .Y(n53) );
  NAND3X4M U355 ( .A(n498), .B(n499), .C(n500), .Y(u_div_CryTmp_10__2_) );
  AND2X2M U356 ( .A(n123), .B(n346), .Y(n54) );
  INVXLM U357 ( .A(n354), .Y(n56) );
  INVX2M U358 ( .A(n56), .Y(n57) );
  INVXLM U359 ( .A(n12), .Y(n203) );
  INVXLM U360 ( .A(n267), .Y(n58) );
  INVX2M U361 ( .A(n58), .Y(n59) );
  INVXLM U362 ( .A(u_div_CryTmp_6__7_), .Y(n60) );
  INVX2M U363 ( .A(n60), .Y(n61) );
  INVXLM U364 ( .A(u_div_CryTmp_1__4_), .Y(n62) );
  INVX2M U365 ( .A(n62), .Y(n63) );
  INVX2M U366 ( .A(net19384), .Y(n64) );
  INVXLM U367 ( .A(u_div_CryTmp_10__4_), .Y(n65) );
  INVX2M U368 ( .A(n65), .Y(n66) );
  INVX2M U369 ( .A(n563), .Y(n68) );
  INVXLM U370 ( .A(u_div_CryTmp_3__3_), .Y(n69) );
  INVX2M U371 ( .A(n69), .Y(n70) );
  INVXLM U372 ( .A(u_div_CryTmp_8__7_), .Y(n71) );
  INVX2M U373 ( .A(n71), .Y(n72) );
  INVXLM U374 ( .A(u_div_PartRem_8__1_), .Y(n73) );
  INVX2M U375 ( .A(n175), .Y(n74) );
  INVX4M U376 ( .A(n634), .Y(n640) );
  NAND2XLM U377 ( .A(net17807), .B(net16391), .Y(n302) );
  MXI2XLM U378 ( .A(u_div_PartRem_3__9_), .B(u_div_SumTmp_2__9_), .S0(net16391), .Y(net10377) );
  INVXLM U379 ( .A(net16391), .Y(n208) );
  AND2X4M U380 ( .A(u_div_CryTmp_11__5_), .B(n346), .Y(n75) );
  MX2X1M U381 ( .A(n585), .B(u_div_SumTmp_8__5_), .S0(quotient[8]), .Y(n560)
         );
  INVXLM U382 ( .A(n458), .Y(n76) );
  INVX2M U383 ( .A(n76), .Y(n77) );
  INVXLM U384 ( .A(u_div_CryTmp_8__6_), .Y(n78) );
  INVX2M U385 ( .A(n78), .Y(n79) );
  INVXLM U386 ( .A(n552), .Y(n80) );
  INVXLM U387 ( .A(n80), .Y(n81) );
  NAND2X2M U388 ( .A(n347), .B(n82), .Y(n83) );
  MX2XLM U389 ( .A(n584), .B(u_div_SumTmp_7__4_), .S0(n643), .Y(n588) );
  INVX2M U390 ( .A(net16883), .Y(n85) );
  INVX2M U391 ( .A(net15409), .Y(n86) );
  NAND3X4M U392 ( .A(n88), .B(n87), .C(n89), .Y(u_div_CryTmp_0__2_) );
  INVXLM U393 ( .A(u_div_CryTmp_7__6_), .Y(n90) );
  INVX2M U394 ( .A(n90), .Y(n91) );
  INVXLM U395 ( .A(net11752), .Y(n92) );
  INVX2M U396 ( .A(n92), .Y(n93) );
  INVXLM U397 ( .A(n480), .Y(n94) );
  INVX2M U398 ( .A(n94), .Y(n95) );
  NAND2X1M U399 ( .A(u_div_CryTmp_1__7_), .B(u_div_PartRem_2__7_), .Y(n532) );
  NAND2X3M U400 ( .A(u_div_CryTmp_1__7_), .B(net10386), .Y(n533) );
  MX2X1M U401 ( .A(n587), .B(u_div_SumTmp_6__4_), .S0(u_div_CryTmp_6__10_), 
        .Y(net14807) );
  NAND3X4M U402 ( .A(net15222), .B(net15221), .C(n335), .Y(u_div_CryTmp_3__7_)
         );
  INVXLM U403 ( .A(n205), .Y(n96) );
  INVX2M U404 ( .A(n96), .Y(n97) );
  INVX4M U405 ( .A(u_div_CryTmp_2__9_), .Y(net17936) );
  AND3XLM U406 ( .A(net15232), .B(net15233), .C(n545), .Y(n98) );
  INVX2M U407 ( .A(n98), .Y(n99) );
  CLKINVX4M U408 ( .A(n115), .Y(n116) );
  AND2X2M U409 ( .A(net16543), .B(net15735), .Y(n274) );
  CLKNAND2X2M U410 ( .A(u_div_CryTmp_3__7_), .B(net10386), .Y(net16073) );
  NAND2BX8M U411 ( .AN(net17776), .B(net17777), .Y(net17879) );
  INVX2M U412 ( .A(net16886), .Y(n100) );
  MXI2X6M U413 ( .A(n262), .B(n263), .S0(u_div_CryTmp_4__12_), .Y(n261) );
  INVXLM U414 ( .A(u_div_CryTmp_4__12_), .Y(n242) );
  AND3X6M U415 ( .A(net15617), .B(net15618), .C(net15619), .Y(n265) );
  CLKNAND2X2M U416 ( .A(u_div_CryTmp_3__7_), .B(net14933), .Y(n296) );
  CLKAND2X4M U417 ( .A(net14944), .B(n117), .Y(n104) );
  NAND2XLM U418 ( .A(n74), .B(n116), .Y(n101) );
  CLKAND2X4M U419 ( .A(n117), .B(net10386), .Y(n102) );
  INVXLM U420 ( .A(n125), .Y(n105) );
  INVX2M U421 ( .A(n105), .Y(n106) );
  XOR2XLM U422 ( .A(u_div_BInv[5]), .B(n140), .Y(n107) );
  XOR2XLM U423 ( .A(n107), .B(u_div_CryTmp_10__5_), .Y(u_div_SumTmp_10__5_) );
  NAND2X1M U424 ( .A(n140), .B(u_div_BInv[5]), .Y(n110) );
  XOR2XLM U425 ( .A(u_div_BInv[5]), .B(n589), .Y(n111) );
  XOR2XLM U426 ( .A(n111), .B(u_div_CryTmp_2__5_), .Y(u_div_SumTmp_2__5_) );
  CLKNAND2X2M U427 ( .A(n589), .B(u_div_BInv[5]), .Y(n114) );
  NAND3X4M U428 ( .A(n113), .B(n112), .C(n114), .Y(u_div_CryTmp_2__6_) );
  NAND2X2M U429 ( .A(u_div_CryTmp_2__6_), .B(n137), .Y(n486) );
  NAND2X2M U430 ( .A(u_div_CryTmp_2__6_), .B(net20912), .Y(n487) );
  NAND2XLM U431 ( .A(net14943), .B(net20912), .Y(n197) );
  NAND2BX8M U432 ( .AN(net20546), .B(net20564), .Y(n196) );
  INVX4M U433 ( .A(n286), .Y(n119) );
  BUFX2M U434 ( .A(u_div_PartRem_1__3_), .Y(n286) );
  NAND2X2M U435 ( .A(u_div_CryTmp_7__6_), .B(n560), .Y(n538) );
  NAND2X2M U436 ( .A(u_div_CryTmp_10__3_), .B(n570), .Y(n428) );
  BUFX6M U437 ( .A(n592), .Y(n121) );
  NAND2X4M U438 ( .A(u_div_CryTmp_8__8_), .B(u_div_SumTmp_8__0_), .Y(net10391)
         );
  XNOR2XLM U439 ( .A(n454), .B(u_div_PartRem_2__2_), .Y(n164) );
  NOR2BXLM U440 ( .AN(n247), .B(n439), .Y(n438) );
  CLKNAND2X2M U441 ( .A(u_div_PartRem_2__4_), .B(net15415), .Y(n484) );
  INVX2M U442 ( .A(n616), .Y(u_div_PartRem_2__4_) );
  MXI2X6M U443 ( .A(n341), .B(u_div_SumTmp_2__1_), .S0(net17879), .Y(n617) );
  NAND2X2M U444 ( .A(u_div_CryTmp_8__6_), .B(n580), .Y(n383) );
  CLKNAND2X8M U445 ( .A(n597), .B(n124), .Y(n402) );
  CLKNAND2X4M U446 ( .A(n597), .B(u_div_CryTmp_5__1_), .Y(n401) );
  NAND3XLM U447 ( .A(n356), .B(n57), .C(n355), .Y(n158) );
  XNOR2XLM U448 ( .A(n226), .B(b[3]), .Y(n233) );
  MX2X1M U449 ( .A(n574), .B(u_div_SumTmp_8__3_), .S0(quotient[8]), .Y(n584)
         );
  INVX2M U450 ( .A(n536), .Y(n378) );
  NAND2X4M U451 ( .A(n573), .B(n28), .Y(n547) );
  XNOR2XLM U452 ( .A(n97), .B(n198), .Y(n193) );
  INVX3M U453 ( .A(net10502), .Y(quotient[8]) );
  NAND3XLM U454 ( .A(n500), .B(n15), .C(n499), .Y(n152) );
  XNOR2XLM U455 ( .A(n497), .B(n11), .Y(n348) );
  NAND3X3M U456 ( .A(n532), .B(n533), .C(n534), .Y(u_div_CryTmp_1__8_) );
  MXI2XLM U457 ( .A(n6), .B(n164), .S0(net15850), .Y(u_div_PartRem_1__3_) );
  NAND2BX4M U458 ( .AN(b[3]), .B(n267), .Y(net16198) );
  NAND3X4M U459 ( .A(net16196), .B(n376), .C(net16198), .Y(u_div_CryTmp_1__4_)
         );
  NAND3XLM U460 ( .A(n460), .B(n77), .C(n37), .Y(n159) );
  NAND2X4M U461 ( .A(n207), .B(net20912), .Y(n459) );
  AOI2B1XLM U462 ( .A1N(n178), .A0(n97), .B0(n206), .Y(n167) );
  NAND2X2M U463 ( .A(u_div_CryTmp_10__4_), .B(n582), .Y(n415) );
  INVXLM U464 ( .A(n220), .Y(n226) );
  NAND2X2M U465 ( .A(n220), .B(u_div_BInv[3]), .Y(n238) );
  MXI2X6M U466 ( .A(n221), .B(n245), .S0(net20840), .Y(n220) );
  NAND2X4M U467 ( .A(u_div_CryTmp_5__7_), .B(net10386), .Y(n420) );
  INVX4M U468 ( .A(u_div_CryTmp_5__8_), .Y(net16543) );
  NAND2X3M U469 ( .A(u_div_CryTmp_4__2_), .B(net14827), .Y(n235) );
  OAI2B1X8M U470 ( .A1N(n234), .A0(n225), .B0(n238), .Y(n244) );
  NAND3XLM U471 ( .A(n509), .B(n508), .C(n507), .Y(n157) );
  NAND2X2M U472 ( .A(u_div_CryTmp_7__7_), .B(net14940), .Y(n257) );
  MXI2X6M U473 ( .A(net16886), .B(n329), .S0(net15621), .Y(net16924) );
  CLKNAND2X2M U474 ( .A(net16924), .B(n28), .Y(n493) );
  NAND2BX8M U475 ( .AN(n243), .B(net20912), .Y(net15222) );
  NAND2X3M U476 ( .A(u_div_CryTmp_3__4_), .B(n136), .Y(n479) );
  NAND2X4M U477 ( .A(n501), .B(u_div_CryTmp_2__1_), .Y(n490) );
  NAND2X4M U478 ( .A(n134), .B(n124), .Y(n355) );
  XNOR3XLM U479 ( .A(n51), .B(n123), .C(u_div_CryTmp_6__1_), .Y(n155) );
  NAND2X4M U480 ( .A(net17936), .B(n266), .Y(net16896) );
  CLKBUFX6M U481 ( .A(u_div_BInv[1]), .Y(n123) );
  NAND2X4M U482 ( .A(u_div_CryTmp_7__4_), .B(net15415), .Y(n351) );
  NAND3XLM U483 ( .A(n478), .B(n95), .C(n479), .Y(n165) );
  NAND2X4M U484 ( .A(u_div_CryTmp_3__4_), .B(net15415), .Y(n480) );
  CLKNAND2X2M U485 ( .A(net15415), .B(net14806), .Y(n180) );
  OR2X2M U486 ( .A(net15415), .B(net14806), .Y(n200) );
  INVXLM U487 ( .A(net14806), .Y(n169) );
  NOR2X1M U488 ( .A(net14806), .B(net15415), .Y(n171) );
  NAND2X2M U489 ( .A(net14835), .B(n28), .Y(n369) );
  INVXLM U490 ( .A(net14835), .Y(n245) );
  INVXLM U491 ( .A(n387), .Y(n388) );
  MX2X1M U492 ( .A(net11754), .B(net11753), .S0(net20840), .Y(n126) );
  XNOR3XLM U493 ( .A(n327), .B(n123), .C(u_div_CryTmp_14__1_), .Y(n127) );
  CLKINVX2M U494 ( .A(n625), .Y(u_div_PartRem_6__9_) );
  XNOR2XLM U495 ( .A(n400), .B(n38), .Y(n128) );
  INVXLM U496 ( .A(n266), .Y(u_div_PartRem_3__9_) );
  MX2XLM U497 ( .A(net10377), .B(n557), .S0(n288), .Y(n130) );
  CLKINVX3M U498 ( .A(n198), .Y(net15415) );
  NOR2XLM U499 ( .A(n167), .B(n147), .Y(u_div_CryTmp_5__6_) );
  XNOR2XLM U500 ( .A(net16034), .B(n93), .Y(n131) );
  INVXLM U501 ( .A(net10374), .Y(u_div_PartRem_2__13_) );
  XNOR2XLM U502 ( .A(n481), .B(n63), .Y(n133) );
  MXI2XLM U503 ( .A(net15009), .B(net15010), .S0(quotient[4]), .Y(n135) );
  MX2X2M U504 ( .A(net19573), .B(n232), .S0(quotient[4]), .Y(n136) );
  MX2X1M U505 ( .A(n241), .B(u_div_SumTmp_3__5_), .S0(quotient[3]), .Y(n137)
         );
  INVX2M U506 ( .A(net14795), .Y(n_cell_13506_net12889) );
  MX2X1M U507 ( .A(net14940), .B(u_div_SumTmp_7__7_), .S0(quotient[7]), .Y(
        net14795) );
  NAND2X2M U508 ( .A(n287), .B(net20912), .Y(net15485) );
  INVXLM U509 ( .A(n244), .Y(n230) );
  CLKINVX4M U510 ( .A(net14977), .Y(n312) );
  XNOR2X2M U511 ( .A(net16405), .B(n339), .Y(n141) );
  MX2X2M U512 ( .A(net14944), .B(u_div_SumTmp_4__7_), .S0(quotient[4]), .Y(
        n142) );
  CLKXOR2X2M U513 ( .A(n215), .B(u_div_CryTmp_2__10_), .Y(n144) );
  AND2X2M U514 ( .A(n173), .B(net20546), .Y(n147) );
  MX2X2M U515 ( .A(n144), .B(net10447), .S0(n208), .Y(n148) );
  MX2X2M U516 ( .A(n148), .B(n556), .S0(quotient[1]), .Y(n149) );
  XNOR2X2M U517 ( .A(n531), .B(n320), .Y(n150) );
  XNOR2X2M U518 ( .A(n303), .B(n309), .Y(net10373) );
  MX2X2M U519 ( .A(n202), .B(n141), .S0(net20656), .Y(n151) );
  OR2X2M U520 ( .A(n358), .B(n332), .Y(n153) );
  OR2X2M U521 ( .A(u_div_PartRem_4__9_), .B(n504), .Y(n154) );
  AND3X6M U522 ( .A(n258), .B(n257), .C(n259), .Y(n156) );
  NAND2X2M U523 ( .A(n180), .B(n181), .Y(n206) );
  INVX2M U524 ( .A(n623), .Y(u_div_PartRem_6__10_) );
  NAND3X2M U525 ( .A(n305), .B(n306), .C(n307), .Y(net17776) );
  INVX2M U526 ( .A(net10427), .Y(u_div_PartRem_7__9_) );
  INVX2M U527 ( .A(n357), .Y(n343) );
  INVX2M U528 ( .A(n626), .Y(u_div_PartRem_4__10_) );
  NAND2X2M U529 ( .A(n266), .B(net17933), .Y(n160) );
  NOR2X2M U530 ( .A(u_div_PartRem_5__10_), .B(u_div_PartRem_5__9_), .Y(n161)
         );
  NAND2X2M U531 ( .A(n611), .B(net10377), .Y(n162) );
  INVX2M U532 ( .A(n524), .Y(n525) );
  OR2X2M U533 ( .A(u_div_PartRem_2__12_), .B(n138), .Y(n524) );
  CLKXOR2X2M U534 ( .A(net17860), .B(n310), .Y(n163) );
  AND2X2M U535 ( .A(n349), .B(net10386), .Y(n608) );
  INVX2M U536 ( .A(n135), .Y(net16921) );
  AND2X2M U537 ( .A(u_div_SumTmp_10__0_), .B(n631), .Y(n166) );
  INVX2M U538 ( .A(b[6]), .Y(net20912) );
  INVX2M U539 ( .A(b[7]), .Y(net10386) );
  INVX2M U540 ( .A(u_div_SumTmp_5__2_), .Y(n221) );
  NAND2X2M U541 ( .A(net14807), .B(u_div_BInv[5]), .Y(n181) );
  XNOR2X8M U542 ( .A(n188), .B(n169), .Y(n187) );
  CLKINVX16M U543 ( .A(n187), .Y(net20564) );
  INVXLM U544 ( .A(net14943), .Y(n177) );
  AOI2B1XLM U545 ( .A1N(n171), .A0(n97), .B0(n199), .Y(n170) );
  OAI2BB1X4M U546 ( .A0N(u_div_CryTmp_5__3_), .A1N(n201), .B0(n192), .Y(n172)
         );
  NAND2BX4M U547 ( .AN(n168), .B(n191), .Y(n185) );
  XOR2XLM U548 ( .A(n185), .B(n12), .Y(n202) );
  XNOR2XLM U549 ( .A(u_div_BInv[5]), .B(n173), .Y(n186) );
  XNOR2XLM U550 ( .A(b[2]), .B(u_div_CryTmp_6__2_), .Y(n191) );
  INVXLM U551 ( .A(n195), .Y(n175) );
  NAND2BX8M U552 ( .AN(net20881), .B(n194), .Y(n195) );
  INVX1M U553 ( .A(u_div_CryTmp_6__10_), .Y(n168) );
  AOI21X4M U554 ( .A0(n172), .A1(n200), .B0(n206), .Y(n183) );
  NOR2X4M U555 ( .A(n183), .B(n147), .Y(n207) );
  OAI2BB1X4M U556 ( .A0N(n201), .A1N(u_div_CryTmp_5__3_), .B0(n192), .Y(n205)
         );
  NOR2X2M U557 ( .A(net15415), .B(net14806), .Y(n178) );
  CLKNAND2X2M U558 ( .A(n180), .B(n181), .Y(n179) );
  INVX1M U559 ( .A(net14807), .Y(n173) );
  XNOR2XLM U560 ( .A(n572), .B(n27), .Y(n213) );
  INVX2M U561 ( .A(n208), .Y(quotient[2]) );
  AND2X1M U562 ( .A(n341), .B(u_div_CryTmp_2__1_), .Y(n210) );
  INVX2M U563 ( .A(n210), .Y(n211) );
  MXI2XLM U564 ( .A(n589), .B(u_div_SumTmp_2__5_), .S0(net16391), .Y(n614) );
  AND3XLM U565 ( .A(n370), .B(n368), .C(n369), .Y(n212) );
  XNOR2X2M U566 ( .A(n213), .B(n336), .Y(u_div_SumTmp_13__2_) );
  NAND2X1M U567 ( .A(n591), .B(u_div_BInv[3]), .Y(n514) );
  NAND3XLM U568 ( .A(n489), .B(n211), .C(n491), .Y(n214) );
  NAND2X4M U569 ( .A(n501), .B(n123), .Y(n489) );
  MX2XLM U570 ( .A(u_div_PartRem_4__9_), .B(u_div_SumTmp_3__9_), .S0(
        quotient[3]), .Y(n215) );
  INVX2M U571 ( .A(n628), .Y(u_div_PartRem_4__9_) );
  AND3X6M U572 ( .A(net16073), .B(n296), .C(n297), .Y(n217) );
  MX2X1M U573 ( .A(u_div_PartRem_5__10_), .B(n334), .S0(quotient[4]), .Y(
        net14977) );
  AND3XLM U574 ( .A(n360), .B(n361), .C(n362), .Y(n218) );
  NAND2X6M U575 ( .A(n605), .B(n604), .Y(u_div_CryTmp_2__9_) );
  NAND2XLM U576 ( .A(n311), .B(n317), .Y(n314) );
  INVXLM U577 ( .A(net16404), .Y(n313) );
  NAND3X4M U578 ( .A(n447), .B(n448), .C(n449), .Y(u_div_CryTmp_8__2_) );
  AND2X4M U579 ( .A(net15511), .B(net15009), .Y(n264) );
  MXI2X1M U580 ( .A(u_div_PartRem_6__9_), .B(u_div_SumTmp_5__9_), .S0(
        quotient[5]), .Y(n624) );
  XNOR2X2M U581 ( .A(u_div_PartRem_6__9_), .B(n442), .Y(u_div_SumTmp_5__9_) );
  CLKNAND2X4M U582 ( .A(u_div_CryTmp_6__3_), .B(n569), .Y(n390) );
  NAND2BX2M U583 ( .AN(b[2]), .B(u_div_CryTmp_4__2_), .Y(n237) );
  XNOR2X1M U584 ( .A(net15415), .B(n151), .Y(n231) );
  INVX4M U585 ( .A(n633), .Y(quotient[9]) );
  XNOR2X2M U586 ( .A(n353), .B(n388), .Y(n223) );
  NOR2BX8M U587 ( .AN(u_div_CryTmp_9__7_), .B(n224), .Y(n600) );
  MX2X1M U588 ( .A(n571), .B(u_div_SumTmp_3__3_), .S0(net15621), .Y(n590) );
  CLKNAND2X2M U589 ( .A(u_div_CryTmp_1__3_), .B(n267), .Y(net16196) );
  INVXLM U590 ( .A(n601), .Y(n394) );
  INVXLM U591 ( .A(n572), .Y(n365) );
  XNOR2XLM U592 ( .A(u_div_PartRem_5__10_), .B(u_div_CryTmp_4__10_), .Y(n334)
         );
  INVXLM U593 ( .A(n151), .Y(net20842) );
  AOI21BX8M U594 ( .A0(u_div_BInv[5]), .A1(n241), .B0N(n240), .Y(n243) );
  XNOR2XLM U595 ( .A(net20564), .B(net20546), .Y(n229) );
  INVX2M U596 ( .A(net20890), .Y(net20546) );
  INVXLM U597 ( .A(b[5]), .Y(net20890) );
  AOI2BB2X4M U598 ( .B0(n244), .B1(n239), .A0N(n151), .A1N(n198), .Y(net20881)
         );
  XNOR2XLM U599 ( .A(n246), .B(n229), .Y(u_div_SumTmp_4__5_) );
  AOI2BB2XLM U600 ( .B0(n239), .B1(n50), .A0N(n151), .A1N(n198), .Y(n246) );
  INVX2M U601 ( .A(net20912), .Y(net20551) );
  INVX2M U602 ( .A(n249), .Y(n248) );
  INVXLM U603 ( .A(n234), .Y(n249) );
  NAND2BX8M U604 ( .AN(net15741), .B(net15735), .Y(net20656) );
  INVXLM U605 ( .A(n243), .Y(n250) );
  MXI2X6M U606 ( .A(n255), .B(n256), .S0(u_div_CryTmp_7__9_), .Y(n254) );
  INVXLM U607 ( .A(n254), .Y(net14836) );
  CLKINVX2M U608 ( .A(net14796), .Y(n252) );
  INVXLM U609 ( .A(n156), .Y(n260) );
  NAND2X2M U610 ( .A(net14940), .B(net10386), .Y(n259) );
  NAND2X2M U611 ( .A(u_div_CryTmp_7__7_), .B(net10386), .Y(n258) );
  CLKINVX2M U612 ( .A(u_div_SumTmp_7__0_), .Y(n256) );
  NAND2X1M U613 ( .A(u_div_CryTmp_7__1_), .B(n123), .Y(net15771) );
  XOR2X1M U614 ( .A(n123), .B(u_div_CryTmp_7__1_), .Y(net15768) );
  INVX20M U615 ( .A(n253), .Y(u_div_CryTmp_14__1_) );
  CLKINVX16M U616 ( .A(u_div_CryTmp_15__1_), .Y(n253) );
  INVX2M U617 ( .A(a[7]), .Y(n255) );
  MX2XLM U618 ( .A(net14819), .B(u_div_SumTmp_8__7_), .S0(quotient[8]), .Y(
        net14796) );
  MXI2XLM U619 ( .A(net14796), .B(u_div_SumTmp_7__8_), .S0(quotient[7]), .Y(
        net10427) );
  XNOR2XLM U620 ( .A(net14796), .B(n260), .Y(u_div_SumTmp_7__8_) );
  INVXLM U621 ( .A(n261), .Y(net16886) );
  NAND2XLM U622 ( .A(u_div_CryTmp_4__1_), .B(n124), .Y(net16037) );
  NAND2XLM U623 ( .A(net16989), .B(net15511), .Y(u_div_CryTmp_4__11_) );
  XOR2XLM U624 ( .A(net15103), .B(u_div_CryTmp_4__11_), .Y(net15010) );
  INVX2M U625 ( .A(net15103), .Y(net15009) );
  OAI2B11X4M U626 ( .A1N(net15415), .A0(n270), .B0(net19408), .C0(net19444), 
        .Y(n271) );
  NAND2BX4M U627 ( .AN(net19396), .B(n271), .Y(net19373) );
  AND3XLM U628 ( .A(net10439), .B(net17777), .C(net10447), .Y(net17807) );
  NAND2XLM U629 ( .A(n85), .B(n266), .Y(u_div_CryTmp_2__10_) );
  XNOR2XLM U630 ( .A(u_div_PartRem_3__9_), .B(net16883), .Y(u_div_SumTmp_2__9_) );
  MXI2XLM U631 ( .A(n142), .B(u_div_SumTmp_3__8_), .S0(quotient[3]), .Y(n266)
         );
  INVXLM U632 ( .A(net15621), .Y(net17863) );
  XNOR2XLM U633 ( .A(net15409), .B(n142), .Y(u_div_SumTmp_3__8_) );
  AND3XLM U634 ( .A(n538), .B(n539), .C(n540), .Y(n272) );
  NAND2X4M U635 ( .A(n572), .B(n28), .Y(n475) );
  MX2XLM U636 ( .A(net14835), .B(u_div_SumTmp_5__2_), .S0(quotient[5]), .Y(
        net19573) );
  CLKNAND2X4M U637 ( .A(u_div_CryTmp_8__7_), .B(net10386), .Y(n467) );
  NAND3X4M U638 ( .A(n360), .B(n361), .C(n362), .Y(u_div_CryTmp_3__4_) );
  AND3XLM U639 ( .A(n431), .B(net15769), .C(net15771), .Y(n273) );
  NAND2BX2M U640 ( .AN(n198), .B(net15620), .Y(n283) );
  NAND2BX2M U641 ( .AN(b[4]), .B(net15426), .Y(net15678) );
  XNOR2XLM U642 ( .A(n64), .B(b[3]), .Y(n285) );
  INVXLM U643 ( .A(u_div_CryTmp_1__3_), .Y(net19384) );
  NOR2XLM U644 ( .A(net16198), .B(net19384), .Y(net19353) );
  NAND2BX4M U645 ( .AN(n278), .B(net19401), .Y(n276) );
  INVXLM U646 ( .A(n143), .Y(n287) );
  INVXLM U647 ( .A(u_div_PartRem_14__1_), .Y(n294) );
  NAND2X4M U648 ( .A(u_div_CryTmp_13__3_), .B(n292), .Y(n291) );
  INVXLM U649 ( .A(net10488), .Y(n292) );
  NAND2X2M U650 ( .A(n123), .B(u_div_CryTmp_13__1_), .Y(net15570) );
  AND2X2M U651 ( .A(net10487), .B(u_div_SumTmp_13__0_), .Y(net16258) );
  NAND2X4M U652 ( .A(net16950), .B(u_div_CryTmp_14__1_), .Y(net15910) );
  XOR2XLM U653 ( .A(net10386), .B(net14940), .Y(net15366) );
  INVXLM U654 ( .A(net17776), .Y(net17933) );
  INVX2M U655 ( .A(n142), .Y(n_cell_13486_net12833) );
  XOR2XLM U656 ( .A(n295), .B(n106), .Y(u_div_SumTmp_4__7_) );
  XOR2XLM U657 ( .A(net10386), .B(net14944), .Y(n295) );
  INVXLM U658 ( .A(n217), .Y(net15409) );
  NAND2X4M U659 ( .A(n217), .B(n_cell_13486_net12833), .Y(u_div_CryTmp_3__9_)
         );
  NAND2XLM U660 ( .A(net14933), .B(net10386), .Y(n297) );
  NAND3X4M U661 ( .A(n508), .B(n507), .C(n509), .Y(u_div_CryTmp_7__3_) );
  OR2X2M U662 ( .A(n318), .B(n135), .Y(net16845) );
  NAND2BX4M U663 ( .AN(u_div_CryTmp_1__12_), .B(n525), .Y(net15850) );
  INVXLM U664 ( .A(n501), .Y(n340) );
  AND3XLM U665 ( .A(net16037), .B(n393), .C(net16035), .Y(n299) );
  INVX4M U666 ( .A(net10502), .Y(n642) );
  XOR2XLM U667 ( .A(n28), .B(u_div_CryTmp_1__2_), .Y(n454) );
  OAI2B1X4M U668 ( .A1N(net17782), .A0(net17855), .B0(u_div_CryTmp_1__1_), .Y(
        n300) );
  OAI2B1X4M U669 ( .A1N(net17782), .A0(net17855), .B0(u_div_CryTmp_1__1_), .Y(
        n301) );
  NAND2XLM U670 ( .A(net17760), .B(net10447), .Y(u_div_CryTmp_2__11_) );
  INVXLM U671 ( .A(net16940), .Y(n311) );
  INVXLM U672 ( .A(u_div_CryTmp_2__10_), .Y(net17760) );
  INVXLM U673 ( .A(net16727), .Y(net17860) );
  INVXLM U674 ( .A(net16845), .Y(n316) );
  INVXLM U675 ( .A(net17855), .Y(net16727) );
  OAI2BB1X2M U676 ( .A0N(n123), .A1N(net17855), .B0(n300), .Y(net16872) );
  OAI2BB1X2M U677 ( .A0N(n123), .A1N(net17855), .B0(n301), .Y(
        u_div_CryTmp_1__2_) );
  NAND2BX1M U678 ( .AN(net16940), .B(n312), .Y(n318) );
  INVX1M U679 ( .A(net10520), .Y(net10492) );
  NAND2BX2M U680 ( .AN(n325), .B(n321), .Y(n408) );
  INVXLM U681 ( .A(u_div_CryTmp_1__7_), .Y(n319) );
  INVX2M U682 ( .A(n319), .Y(n320) );
  NAND2X2M U683 ( .A(n136), .B(net15415), .Y(n478) );
  CLKINVX1M U684 ( .A(n299), .Y(n322) );
  NAND2X3M U685 ( .A(n572), .B(u_div_CryTmp_13__2_), .Y(n476) );
  NAND3X4M U686 ( .A(n489), .B(n490), .C(n491), .Y(u_div_CryTmp_2__2_) );
  XOR2XLM U687 ( .A(net16924), .B(n28), .Y(n492) );
  INVXLM U688 ( .A(n436), .Y(n323) );
  NAND2X1M U689 ( .A(n122), .B(net16942), .Y(n325) );
  INVX3M U690 ( .A(u_div_CryTmp_14__1_), .Y(net16942) );
  AND2X4M U691 ( .A(n550), .B(net16942), .Y(net16950) );
  INVXLM U692 ( .A(n610), .Y(n327) );
  INVX1M U693 ( .A(n365), .Y(n366) );
  OR2X6M U694 ( .A(net16404), .B(n135), .Y(net15621) );
  NAND2BX2M U695 ( .AN(u_div_CryTmp_3__9_), .B(n129), .Y(net16940) );
  NAND2X2M U696 ( .A(n606), .B(n612), .Y(u_div_CryTmp_1__9_) );
  INVX2M U697 ( .A(n606), .Y(n358) );
  NAND2BX8M U698 ( .AN(u_div_CryTmp_1__8_), .B(n328), .Y(u_div_CryTmp_1__12_)
         );
  INVXLM U699 ( .A(u_div_CryTmp_1__8_), .Y(n606) );
  CLKNAND2X4M U700 ( .A(u_div_CryTmp_1__2_), .B(n28), .Y(n457) );
  NAND2X4M U701 ( .A(u_div_CryTmp_3__3_), .B(u_div_BInv[3]), .Y(n361) );
  NAND2BX8M U702 ( .AN(u_div_CryTmp_3__12_), .B(net16921), .Y(
        u_div_CryTmp_3__13_) );
  CLKNAND2X4M U703 ( .A(n552), .B(n123), .Y(n469) );
  NAND2X2M U704 ( .A(n371), .B(n28), .Y(n544) );
  NAND2XLM U705 ( .A(n331), .B(u_div_CryTmp_13__3_), .Y(n470) );
  INVXLM U706 ( .A(n73), .Y(net16900) );
  NAND2X2M U707 ( .A(n563), .B(net20912), .Y(n460) );
  NAND2XLM U708 ( .A(n323), .B(n604), .Y(net16883) );
  CLKNAND2X2M U709 ( .A(n582), .B(net15415), .Y(n417) );
  NAND3XLM U710 ( .A(net15570), .B(n474), .C(net17007), .Y(n336) );
  NAND2X2M U711 ( .A(net16989), .B(n603), .Y(u_div_CryTmp_4__9_) );
  OR2X2M U712 ( .A(u_div_PartRem_5__9_), .B(u_div_CryTmp_4__9_), .Y(
        u_div_CryTmp_4__10_) );
  NAND2X4M U713 ( .A(u_div_CryTmp_13__2_), .B(n28), .Y(n477) );
  MX2X1M U714 ( .A(n121), .B(u_div_SumTmp_9__4_), .S0(quotient[9]), .Y(n585)
         );
  INVXLM U715 ( .A(net16989), .Y(net16814) );
  NAND2X3M U716 ( .A(u_div_CryTmp_11__2_), .B(n28), .Y(n517) );
  MX2X1M U717 ( .A(net20564), .B(u_div_SumTmp_4__5_), .S0(quotient[4]), .Y(
        net14932) );
  MX2X3M U718 ( .A(n338), .B(u_div_SumTmp_7__2_), .S0(n643), .Y(n569) );
  MX2X1M U719 ( .A(n566), .B(u_div_SumTmp_7__3_), .S0(n643), .Y(n587) );
  NAND2X3M U720 ( .A(u_div_CryTmp_7__4_), .B(n584), .Y(n350) );
  CLKNAND2X4M U721 ( .A(u_div_CryTmp_1__3_), .B(u_div_BInv[3]), .Y(n376) );
  INVXLM U722 ( .A(n575), .Y(n337) );
  INVX1M U723 ( .A(n337), .Y(n338) );
  CLKINVX40M U724 ( .A(a[2]), .Y(net16746) );
  CLKINVX40M U725 ( .A(u_div_SumTmp_2__0_), .Y(net16747) );
  CLKINVX1M U726 ( .A(n212), .Y(n339) );
  XOR2XLM U727 ( .A(n386), .B(u_div_CryTmp_3__7_), .Y(u_div_SumTmp_3__7_) );
  NAND2X4M U728 ( .A(n75), .B(u_div_CryTmp_10__1_), .Y(n498) );
  INVX1M U729 ( .A(n340), .Y(n341) );
  CLKINVX1M U730 ( .A(n272), .Y(net16710) );
  INVXLM U731 ( .A(n75), .Y(n395) );
  XOR2XLM U732 ( .A(u_div_BInv[3]), .B(n566), .Y(n396) );
  AND2X1M U733 ( .A(n422), .B(n124), .Y(n345) );
  XOR2XLM U734 ( .A(u_div_CryTmp_5__2_), .B(n28), .Y(n367) );
  XOR2XLM U735 ( .A(n443), .B(n158), .Y(u_div_SumTmp_9__2_) );
  XOR2XLM U736 ( .A(n359), .B(n70), .Y(u_div_SumTmp_3__3_) );
  MX2XLM U737 ( .A(n593), .B(u_div_SumTmp_9__5_), .S0(quotient[9]), .Y(n580)
         );
  AND2X4M U738 ( .A(u_div_CryTmp_13__3_), .B(net16258), .Y(n552) );
  AND2X2M U739 ( .A(u_div_SumTmp_11__0_), .B(n608), .Y(n346) );
  MXI2X6M U740 ( .A(n394), .B(n372), .S0(n567), .Y(n371) );
  INVXLM U741 ( .A(u_div_CryTmp_14__1_), .Y(u_div_SumTmp_8__0_) );
  INVXLM U742 ( .A(n609), .Y(n349) );
  MXI2X6M U743 ( .A(n610), .B(n127), .S0(n642), .Y(n575) );
  XOR3XLM U744 ( .A(u_div_CryTmp_7__4_), .B(n584), .C(net15415), .Y(
        u_div_SumTmp_7__4_) );
  NAND2X1M U745 ( .A(n584), .B(net15415), .Y(n352) );
  NAND3X4M U746 ( .A(n351), .B(n350), .C(n352), .Y(u_div_CryTmp_7__5_) );
  XOR2XLM U747 ( .A(n124), .B(u_div_CryTmp_9__1_), .Y(n353) );
  NAND2XLM U748 ( .A(u_div_CryTmp_9__1_), .B(n123), .Y(n356) );
  NAND3X4M U749 ( .A(n355), .B(n354), .C(n356), .Y(u_div_CryTmp_9__2_) );
  INVXLM U750 ( .A(n600), .Y(n610) );
  NOR2BXLM U751 ( .AN(n31), .B(net14795), .Y(n381) );
  NAND2BX4M U752 ( .AN(net16940), .B(n312), .Y(net16404) );
  NAND2BX8M U753 ( .AN(u_div_CryTmp_3__11_), .B(n312), .Y(u_div_CryTmp_3__12_)
         );
  OR2X1M U754 ( .A(u_div_CryTmp_1__9_), .B(u_div_PartRem_2__9_), .Y(
        u_div_CryTmp_1__10_) );
  NAND3X4M U755 ( .A(n419), .B(n420), .C(n421), .Y(u_div_CryTmp_5__8_) );
  NAND2X2M U756 ( .A(u_div_CryTmp_5__7_), .B(n558), .Y(n419) );
  XOR2XLM U757 ( .A(n515), .B(u_div_CryTmp_11__2_), .Y(u_div_SumTmp_11__2_) );
  CLKNAND2X2M U758 ( .A(u_div_CryTmp_1__4_), .B(u_div_PartRem_2__4_), .Y(n482)
         );
  INVX2M U759 ( .A(n611), .Y(u_div_PartRem_2__9_) );
  CLKNAND2X2M U760 ( .A(u_div_PartRem_1__7_), .B(net10386), .Y(n375) );
  INVX1M U761 ( .A(n218), .Y(n377) );
  NAND3X4M U762 ( .A(n457), .B(n455), .C(n456), .Y(u_div_CryTmp_1__3_) );
  XOR2XLM U763 ( .A(n404), .B(n61), .Y(u_div_SumTmp_6__7_) );
  NAND3X4M U764 ( .A(n463), .B(n464), .C(n462), .Y(u_div_CryTmp_6__3_) );
  INVXLM U765 ( .A(n326), .Y(n496) );
  XOR2XLM U766 ( .A(n432), .B(n46), .Y(u_div_SumTmp_9__6_) );
  MX2X1M U767 ( .A(u_div_PartRem_13__3_), .B(u_div_SumTmp_12__3_), .S0(
        quotient[12]), .Y(n581) );
  NAND2X4M U768 ( .A(u_div_CryTmp_7__6_), .B(net20912), .Y(n539) );
  NAND2X4M U769 ( .A(u_div_CryTmp_8__6_), .B(net20912), .Y(n384) );
  NAND3X4M U770 ( .A(n383), .B(n384), .C(n385), .Y(u_div_CryTmp_8__7_) );
  NOR2XLM U771 ( .A(b[3]), .B(b[2]), .Y(n379) );
  MX2XLM U772 ( .A(n568), .B(u_div_SumTmp_11__3_), .S0(n567), .Y(n582) );
  NAND3X4M U773 ( .A(n433), .B(n434), .C(n435), .Y(u_div_CryTmp_9__7_) );
  CLKNAND2X2M U774 ( .A(u_div_CryTmp_9__3_), .B(n576), .Y(n520) );
  XOR2XLM U775 ( .A(n35), .B(n28), .Y(n450) );
  XOR2XLM U776 ( .A(net20912), .B(n580), .Y(n382) );
  XOR2XLM U777 ( .A(n382), .B(n79), .Y(u_div_SumTmp_8__6_) );
  NAND2X1M U778 ( .A(n580), .B(net20912), .Y(n385) );
  AND2X8M U779 ( .A(u_div_CryTmp_11__5_), .B(n608), .Y(n567) );
  XOR2XLM U780 ( .A(net10386), .B(net14933), .Y(n386) );
  INVXLM U781 ( .A(n134), .Y(n387) );
  XOR2XLM U782 ( .A(n510), .B(n322), .Y(u_div_SumTmp_4__2_) );
  NAND3X4M U783 ( .A(net16035), .B(n393), .C(net16037), .Y(u_div_CryTmp_4__2_)
         );
  XOR2XLM U784 ( .A(n465), .B(n72), .Y(u_div_SumTmp_8__7_) );
  NAND3X4M U785 ( .A(n397), .B(n398), .C(n399), .Y(u_div_CryTmp_7__4_) );
  XOR2XLM U786 ( .A(u_div_BInv[3]), .B(n569), .Y(n389) );
  XOR2XLM U787 ( .A(n389), .B(u_div_CryTmp_6__3_), .Y(u_div_SumTmp_6__3_) );
  NAND2XLM U788 ( .A(n569), .B(u_div_BInv[3]), .Y(n392) );
  NAND3X4M U789 ( .A(n391), .B(n390), .C(n392), .Y(u_div_CryTmp_6__4_) );
  XOR2XLM U790 ( .A(n418), .B(n159), .Y(u_div_SumTmp_5__7_) );
  XOR2XLM U791 ( .A(n396), .B(n157), .Y(u_div_SumTmp_7__3_) );
  XOR2XLM U792 ( .A(n541), .B(n152), .Y(u_div_SumTmp_10__2_) );
  XOR2XLM U793 ( .A(n492), .B(n214), .Y(u_div_SumTmp_2__2_) );
  INVXLM U794 ( .A(net15588), .Y(net15316) );
  XNOR2XLM U795 ( .A(net14795), .B(n32), .Y(u_div_SumTmp_6__8_) );
  CLKNAND2X4M U796 ( .A(u_div_CryTmp_2__3_), .B(u_div_BInv[3]), .Y(n513) );
  NAND2XLM U797 ( .A(u_div_CryTmp_5__1_), .B(n123), .Y(n403) );
  XOR2XLM U798 ( .A(n28), .B(net14827), .Y(n510) );
  XOR2XLM U799 ( .A(net10386), .B(n561), .Y(n404) );
  NAND2XLM U800 ( .A(n561), .B(net10386), .Y(n407) );
  XOR2XLM U801 ( .A(n537), .B(n91), .Y(u_div_SumTmp_7__6_) );
  XOR2XLM U802 ( .A(u_div_BInv[3]), .B(n576), .Y(n519) );
  NAND3X4M U803 ( .A(n480), .B(n479), .C(n478), .Y(u_div_CryTmp_3__5_) );
  NAND2BX4M U804 ( .AN(n632), .B(u_div_CryTmp_10__6_), .Y(n634) );
  XOR2XLM U805 ( .A(n450), .B(u_div_CryTmp_8__2_), .Y(u_div_SumTmp_8__2_) );
  NAND3X4M U806 ( .A(n410), .B(n411), .C(n412), .Y(u_div_CryTmp_11__2_) );
  INVXLM U807 ( .A(n381), .Y(n413) );
  XOR2XLM U808 ( .A(net15415), .B(n582), .Y(n414) );
  XOR2XLM U809 ( .A(n414), .B(n66), .Y(u_div_SumTmp_10__4_) );
  NAND2X4M U810 ( .A(u_div_CryTmp_10__4_), .B(net15415), .Y(n416) );
  NAND3X4M U811 ( .A(n415), .B(n416), .C(n417), .Y(u_div_CryTmp_10__5_) );
  XOR2XLM U812 ( .A(net10386), .B(n558), .Y(n418) );
  NAND2XLM U813 ( .A(n558), .B(net10386), .Y(n421) );
  CLKAND2X2M U814 ( .A(u_div_SumTmp_12__0_), .B(net15589), .Y(n422) );
  XOR2XLM U815 ( .A(u_div_BInv[3]), .B(n568), .Y(n424) );
  XOR2XLM U816 ( .A(n424), .B(u_div_CryTmp_11__3_), .Y(u_div_SumTmp_11__3_) );
  NAND3X4M U817 ( .A(n426), .B(n425), .C(n427), .Y(u_div_CryTmp_11__4_) );
  XOR3XLM U818 ( .A(u_div_CryTmp_10__3_), .B(n570), .C(u_div_BInv[3]), .Y(
        u_div_SumTmp_10__3_) );
  NAND3X4M U819 ( .A(n428), .B(n429), .C(n430), .Y(u_div_CryTmp_10__4_) );
  XOR2XLM U820 ( .A(net20912), .B(n564), .Y(n432) );
  NAND2X4M U821 ( .A(u_div_CryTmp_9__6_), .B(net20912), .Y(n434) );
  CLKNAND2X2M U822 ( .A(n564), .B(net20912), .Y(n435) );
  NAND2X4M U823 ( .A(u_div_CryTmp_9__7_), .B(net10386), .Y(n633) );
  INVXLM U824 ( .A(n605), .Y(n436) );
  NAND3X4M U825 ( .A(n516), .B(n517), .C(n518), .Y(u_div_CryTmp_11__3_) );
  XNOR2XLM U826 ( .A(n594), .B(net16814), .Y(u_div_SumTmp_4__8_) );
  XOR2XLM U827 ( .A(n28), .B(n53), .Y(n541) );
  NOR2XLM U828 ( .A(n595), .B(net15741), .Y(n441) );
  INVXLM U829 ( .A(n438), .Y(n440) );
  INVXLM U830 ( .A(n441), .Y(n442) );
  XOR2XLM U831 ( .A(n28), .B(n347), .Y(n443) );
  XOR2XLM U832 ( .A(n28), .B(n338), .Y(n506) );
  CLKNAND2X4M U833 ( .A(u_div_CryTmp_6__2_), .B(n28), .Y(n464) );
  XOR2XLM U834 ( .A(n511), .B(u_div_CryTmp_2__3_), .Y(u_div_SumTmp_2__3_) );
  OR2X1M U835 ( .A(u_div_PartRem_2__12_), .B(n39), .Y(u_div_CryTmp_1__13_) );
  MXI2X6M U836 ( .A(n496), .B(n146), .S0(quotient[14]), .Y(n572) );
  XOR2XLM U837 ( .A(n519), .B(u_div_CryTmp_9__3_), .Y(u_div_SumTmp_9__3_) );
  NAND2XLM U838 ( .A(n124), .B(u_div_CryTmp_14__1_), .Y(n449) );
  XOR2XLM U839 ( .A(n485), .B(u_div_CryTmp_2__6_), .Y(u_div_SumTmp_2__6_) );
  CLKNAND2X4M U840 ( .A(u_div_PartRem_2__2_), .B(net16872), .Y(n455) );
  XOR3XLM U841 ( .A(u_div_CryTmp_5__6_), .B(n563), .C(net20912), .Y(
        u_div_SumTmp_5__6_) );
  NAND3X4M U842 ( .A(n459), .B(n458), .C(n460), .Y(u_div_CryTmp_5__7_) );
  NAND2XLM U843 ( .A(n123), .B(u_div_CryTmp_6__1_), .Y(n461) );
  XOR2XLM U844 ( .A(net10386), .B(net14819), .Y(n465) );
  CLKNAND2X2M U845 ( .A(u_div_CryTmp_8__7_), .B(net14819), .Y(n466) );
  NAND2XLM U846 ( .A(net14819), .B(net10386), .Y(n468) );
  NAND3X4M U847 ( .A(n466), .B(n467), .C(n468), .Y(u_div_CryTmp_8__8_) );
  CLKNAND2X2M U848 ( .A(net14944), .B(net10386), .Y(net15619) );
  NOR2XLM U849 ( .A(b[7]), .B(n609), .Y(net15620) );
  XOR2XLM U850 ( .A(n472), .B(n42), .Y(u_div_SumTmp_12__2_) );
  XOR2XLM U851 ( .A(n48), .B(n28), .Y(n472) );
  MXI2XLM U852 ( .A(n594), .B(u_div_SumTmp_4__8_), .S0(quotient[4]), .Y(n628)
         );
  NAND3X4M U853 ( .A(n544), .B(n542), .C(n543), .Y(u_div_CryTmp_10__3_) );
  AND2X1M U854 ( .A(n603), .B(n161), .Y(net15511) );
  XOR2XLM U855 ( .A(n28), .B(n44), .Y(n515) );
  XOR3XLM U856 ( .A(n136), .B(net15415), .C(n377), .Y(u_div_SumTmp_3__4_) );
  XOR2XLM U857 ( .A(net15464), .B(n165), .Y(u_div_SumTmp_3__5_) );
  XOR2XLM U858 ( .A(net15415), .B(u_div_PartRem_2__4_), .Y(n481) );
  XOR2XLM U859 ( .A(net20912), .B(n137), .Y(n485) );
  NAND2XLM U860 ( .A(n137), .B(net20912), .Y(n488) );
  XOR3XLM U861 ( .A(n341), .B(n123), .C(u_div_CryTmp_2__1_), .Y(
        u_div_SumTmp_2__1_) );
  NAND2XLM U862 ( .A(n124), .B(u_div_CryTmp_2__1_), .Y(n491) );
  XOR2X1M U863 ( .A(n123), .B(u_div_CryTmp_10__1_), .Y(n497) );
  NAND2XLM U864 ( .A(u_div_CryTmp_10__1_), .B(n124), .Y(n500) );
  XNOR2XLM U865 ( .A(u_div_PartRem_5__9_), .B(u_div_CryTmp_4__9_), .Y(
        u_div_SumTmp_4__9_) );
  XOR2XLM U866 ( .A(n535), .B(n250), .Y(u_div_SumTmp_3__6_) );
  MXI2X6M U867 ( .A(n502), .B(n503), .S0(u_div_CryTmp_3__13_), .Y(n501) );
  NAND2XLM U868 ( .A(n86), .B(n_cell_13486_net12833), .Y(n504) );
  XOR2XLM U869 ( .A(n573), .B(n28), .Y(n546) );
  NAND2BX8M U870 ( .AN(u_div_CryTmp_3__9_), .B(n129), .Y(u_div_CryTmp_3__11_)
         );
  INVXLM U871 ( .A(n273), .Y(n505) );
  XOR2XLM U872 ( .A(n506), .B(n505), .Y(u_div_SumTmp_7__2_) );
  XOR2XLM U873 ( .A(net15366), .B(net16710), .Y(u_div_SumTmp_7__7_) );
  NAND3X4M U874 ( .A(n538), .B(n539), .C(n540), .Y(u_div_CryTmp_7__7_) );
  XOR2XLM U875 ( .A(u_div_BInv[3]), .B(n591), .Y(n511) );
  CLKNAND2X2M U876 ( .A(u_div_CryTmp_2__3_), .B(n591), .Y(n512) );
  NOR2BXLM U877 ( .AN(net10511), .B(net15316), .Y(quotient[15]) );
  XNOR2XLM U878 ( .A(u_div_PartRem_3__11_), .B(u_div_CryTmp_2__11_), .Y(
        u_div_SumTmp_2__11_) );
  NAND2BX2M U879 ( .AN(u_div_PartRem_1__10_), .B(n528), .Y(n527) );
  CLKAND2X4M U880 ( .A(n149), .B(n130), .Y(n528) );
  XOR2XLM U881 ( .A(net10386), .B(u_div_PartRem_2__7_), .Y(n531) );
  CLKNAND2X2M U882 ( .A(u_div_PartRem_2__7_), .B(net10386), .Y(n534) );
  XOR2XLM U883 ( .A(net20912), .B(net14932), .Y(n535) );
  NAND2XLM U884 ( .A(net14932), .B(net20912), .Y(n536) );
  XOR2XLM U885 ( .A(net20912), .B(n560), .Y(n537) );
  NAND2XLM U886 ( .A(n560), .B(net20912), .Y(n540) );
  XOR3XLM U887 ( .A(n100), .B(n124), .C(u_div_CryTmp_3__1_), .Y(
        u_div_SumTmp_3__1_) );
  XOR2XLM U888 ( .A(n546), .B(n99), .Y(u_div_SumTmp_3__2_) );
  NAND3X4M U889 ( .A(n549), .B(n548), .C(n547), .Y(u_div_CryTmp_3__3_) );
  NAND2BX2M U890 ( .AN(u_div_PartRem_1__15_), .B(n551), .Y(quotient[0]) );
  INVX2M U891 ( .A(u_div_SumTmp_6__0_), .Y(n599) );
  INVXLM U892 ( .A(a[6]), .Y(n598) );
  INVXLM U893 ( .A(net10373), .Y(u_div_PartRem_2__14_) );
  INVX1M U894 ( .A(net10439), .Y(u_div_PartRem_3__11_) );
  INVX2M U895 ( .A(net10377), .Y(u_div_PartRem_2__10_) );
  MX2XLM U896 ( .A(u_div_PartRem_6__10_), .B(u_div_SumTmp_5__10_), .S0(
        quotient[5]), .Y(net15103) );
  INVX2M U897 ( .A(n624), .Y(u_div_PartRem_5__10_) );
  INVXLM U898 ( .A(n614), .Y(u_div_PartRem_2__6_) );
  INVX1M U899 ( .A(n627), .Y(u_div_PartRem_5__9_) );
  MXI2XLM U900 ( .A(u_div_PartRem_3__11_), .B(u_div_SumTmp_2__11_), .S0(
        quotient[2]), .Y(n618) );
  MX2XLM U901 ( .A(n583), .B(u_div_SumTmp_7__5_), .S0(n643), .Y(n562) );
  MX2XLM U902 ( .A(n563), .B(u_div_SumTmp_5__6_), .S0(quotient[5]), .Y(
        net14944) );
  MX2XLM U903 ( .A(n562), .B(u_div_SumTmp_6__6_), .S0(quotient[6]), .Y(n558)
         );
  MX2XLM U904 ( .A(n580), .B(u_div_SumTmp_8__6_), .S0(quotient[8]), .Y(
        net14940) );
  INVXLM U905 ( .A(n597), .Y(n577) );
  INVXLM U906 ( .A(n615), .Y(u_div_PartRem_2__5_) );
  CLKINVX2M U907 ( .A(n579), .Y(n604) );
  MXI2XLM U908 ( .A(net10373), .B(n553), .S0(quotient[1]), .Y(
        u_div_PartRem_1__15_) );
  XOR2XLM U909 ( .A(u_div_PartRem_2__14_), .B(u_div_CryTmp_1__14_), .Y(n553)
         );
  MXI2XLM U910 ( .A(net10374), .B(n554), .S0(quotient[1]), .Y(
        u_div_PartRem_1__14_) );
  XOR2XLM U911 ( .A(u_div_PartRem_2__13_), .B(u_div_CryTmp_1__13_), .Y(n554)
         );
  MXI2XLM U912 ( .A(n618), .B(n555), .S0(quotient[1]), .Y(u_div_PartRem_1__13_) );
  INVX2M U913 ( .A(n618), .Y(u_div_PartRem_2__12_) );
  XOR2XLM U914 ( .A(u_div_PartRem_2__12_), .B(n39), .Y(n555) );
  XOR2XLM U915 ( .A(u_div_PartRem_2__11_), .B(n153), .Y(n556) );
  XNOR2XLM U916 ( .A(u_div_PartRem_4__10_), .B(n154), .Y(u_div_SumTmp_3__10_)
         );
  XNOR2XLM U917 ( .A(u_div_PartRem_6__10_), .B(n440), .Y(u_div_SumTmp_5__10_)
         );
  XOR2XLM U918 ( .A(u_div_PartRem_2__10_), .B(u_div_CryTmp_1__10_), .Y(n557)
         );
  MXI2XLM U919 ( .A(n612), .B(n596), .S0(quotient[1]), .Y(u_div_PartRem_1__9_)
         );
  MXI2XLM U920 ( .A(n611), .B(n565), .S0(quotient[1]), .Y(u_div_PartRem_1__10_) );
  INVX2M U921 ( .A(u_div_SumTmp_1__5_), .Y(n620) );
  MXI2XLM U922 ( .A(n137), .B(u_div_SumTmp_2__6_), .S0(quotient[2]), .Y(n613)
         );
  MX2XLM U923 ( .A(n560), .B(u_div_SumTmp_7__6_), .S0(n643), .Y(n561) );
  MX2XLM U924 ( .A(net14943), .B(u_div_SumTmp_4__6_), .S0(quotient[4]), .Y(
        net14933) );
  XNOR2XLM U925 ( .A(u_div_PartRem_4__9_), .B(n504), .Y(u_div_SumTmp_3__9_) );
  INVX2M U926 ( .A(n612), .Y(u_div_PartRem_2__8_) );
  MXI2XLM U927 ( .A(u_div_PartRem_7__9_), .B(u_div_SumTmp_6__9_), .S0(
        quotient[6]), .Y(n623) );
  XNOR2XLM U928 ( .A(u_div_PartRem_7__9_), .B(n413), .Y(u_div_SumTmp_6__9_) );
  MXI2XLM U929 ( .A(u_div_PartRem_5__9_), .B(u_div_SumTmp_4__9_), .S0(
        quotient[4]), .Y(n626) );
  XOR2XLM U930 ( .A(u_div_PartRem_2__9_), .B(u_div_CryTmp_1__9_), .Y(n565) );
  INVX2M U931 ( .A(n594), .Y(n603) );
  MXI2XLM U932 ( .A(n613), .B(n150), .S0(quotient[1]), .Y(u_div_PartRem_1__8_)
         );
  MX2XLM U933 ( .A(net14933), .B(u_div_SumTmp_3__7_), .S0(n317), .Y(n579) );
  MX2XLM U934 ( .A(n564), .B(u_div_SumTmp_9__6_), .S0(quotient[9]), .Y(
        net14819) );
  MX2XLM U935 ( .A(n586), .B(u_div_SumTmp_8__4_), .S0(quotient[8]), .Y(n583)
         );
  MXI2XLM U936 ( .A(n579), .B(u_div_SumTmp_2__8_), .S0(quotient[2]), .Y(n611)
         );
  XNOR2XLM U937 ( .A(n579), .B(n436), .Y(u_div_SumTmp_2__8_) );
  MXI2XLM U938 ( .A(n559), .B(u_div_SumTmp_2__7_), .S0(quotient[2]), .Y(n612)
         );
  MX2XLM U939 ( .A(n558), .B(u_div_SumTmp_5__7_), .S0(quotient[5]), .Y(n594)
         );
  MXI2XLM U940 ( .A(n595), .B(u_div_SumTmp_5__8_), .S0(quotient[5]), .Y(n627)
         );
  XNOR2XLM U941 ( .A(n595), .B(net15741), .Y(u_div_SumTmp_5__8_) );
  MXI2XLM U942 ( .A(net14795), .B(u_div_SumTmp_6__8_), .S0(quotient[6]), .Y(
        n625) );
  MX2XLM U943 ( .A(n561), .B(u_div_SumTmp_6__7_), .S0(quotient[6]), .Y(n595)
         );
  XOR2XLM U944 ( .A(u_div_PartRem_2__8_), .B(n358), .Y(n596) );
  MXI2XLM U945 ( .A(n614), .B(n619), .S0(n288), .Y(u_div_PartRem_1__7_) );
  CLKINVX2M U946 ( .A(u_div_SumTmp_1__6_), .Y(n619) );
  INVXLM U947 ( .A(n632), .Y(n631) );
  INVX2M U948 ( .A(u_div_SumTmp_5__0_), .Y(net11754) );
  INVX2M U949 ( .A(a[5]), .Y(net11753) );
  INVX2M U950 ( .A(u_div_SumTmp_1__0_), .Y(n622) );
  INVX2M U951 ( .A(a[1]), .Y(n621) );
  NAND2BX1M U952 ( .AN(net20551), .B(net10386), .Y(n632) );
  MXI2XLM U953 ( .A(u_div_PartRem_4__10_), .B(u_div_SumTmp_3__10_), .S0(n317), 
        .Y(net10439) );
  MXI2XLM U954 ( .A(u_div_PartRem_4__9_), .B(u_div_SumTmp_3__9_), .S0(
        quotient[3]), .Y(net10447) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, PAR_ERR, STP_ERR );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT, PAR_ERR, STP_ERR;
  wire   SYNC_RST1, SYNC_RST2, OUT_VALID, ALU_EN, CLK_EN, RdData_Valid, WrEn,
         RdEn, RX_D_VLD_SYNC, FIFO_FULL, WR_INC, ALU_CLK, TX_CLK, RX_CLK,
         TX_BUSY, RX_OUT_V, F_EMPTY, RD_INC, U_ALU_U_ARITH_N84,
         U_ALU_U_ARITH_N83, U_ALU_U_ARITH_N82, U_ALU_U_ARITH_N81,
         U_ALU_U_ARITH_N80, U_ALU_U_ARITH_N79, U_ALU_U_ARITH_N78,
         U_ALU_U_ARITH_N77, U_ALU_U_ARITH_N76, U_ALU_U_ARITH_N75,
         U_ALU_U_ARITH_N74, U_ALU_U_ARITH_N73, U_ALU_U_ARITH_N72,
         U_ALU_U_ARITH_N71, U_ALU_U_ARITH_N70, U_ALU_U_ARITH_N69,
         U_ALU_U_ARITH_N67, U_ALU_U_ARITH_N66, U_ALU_U_ARITH_N65,
         U_ALU_U_ARITH_N64, U_ALU_U_ARITH_N63, U_ALU_U_ARITH_N62,
         U_ALU_U_ARITH_N61, U_ALU_U_ARITH_N60, U_ALU_U_ARITH_N59,
         U_ALU_U_ARITH_N58, U_ALU_U_ARITH_N57, U_ALU_U_ARITH_N56,
         U_ALU_U_ARITH_N55, U_ALU_U_ARITH_N54, U_ALU_U_ARITH_N53,
         U_ALU_U_ARITH_N52, U_ALU_U_ARITH_N51, U_ALU_U_ARITH_N43,
         U_ALU_U_ARITH_N42, U_ALU_U_ARITH_N28, U_ALU_U_ARITH_N27,
         U_ALU_U_ARITH_N26, U_ALU_U_COMPARE_N23, n40, n45, n48, n49, n59, n60,
         n61, n62, n63, n66, n67, n72, n73, n74, n75, n79, n80, n81, n82, n87,
         n94, n103, n131, n138, n139, n140, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33,
         SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35,
         SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37;
  wire   [15:0] ALU_OUT;
  wire   [3:0] ALU_FUN;
  wire   [7:0] RdData;
  wire   [4:0] Address;
  wire   [7:0] WrData;
  wire   [7:0] RX_P_DATA_SYNC;
  wire   [7:0] WR_DATA;
  wire   [7:0] REG0;
  wire   [7:0] REG1;
  wire   [7:0] REG2;
  wire   [7:0] REG3;
  wire   [7:0] rx_div_ratio;
  wire   [7:0] RD_DATA;
  wire   [7:0] RX_OUT_P;
  wire   [15:0] U_ALU_result;
  wire   [8:1] U_ALU_U_ARITH_sub_10_carry;
  wire   [7:1] U_ALU_U_ARITH_add_9_carry;

  RST_SYNC_0 U_RST_SYNC_1 ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(SYNC_RST1) );
  RST_SYNC_1 U_RST_SYNC_2 ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(SYNC_RST2) );
  SYS_CTRL_DATA_WIDTH8_ADDR_WIDTH5_ALU_WIDTH16 U_SYS_CTRL ( .CLK(REF_CLK), 
        .RST(n181), .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_VALID), .ALU_FUN(ALU_FUN), .EN(ALU_EN), .CLK_EN(CLK_EN), .RdData(RdData), .RdData_Valid(RdData_Valid), 
        .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData), 
        .RX_P_DATA(RX_P_DATA_SYNC), .RX_D_VLD(RX_D_VLD_SYNC), .FIFO_FULL(
        FIFO_FULL), .TX_P_DATA(WR_DATA), .TX_D_VLD(WR_INC) );
  RegFile_WIDTH8_ADDR_WIDTH5 U_REGFILE ( .CLK(REF_CLK), .RST(n181), .WrEn(WrEn), .RdEn(RdEn), .Address(Address), .WrData(WrData), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .REG0(REG0), .REG1(REG1), .REG2(REG2), 
        .REG3(REG3) );
  CLK_GATE U_CLK_GATE ( .CLK(REF_CLK), .CLK_EN(CLK_EN), .GATED_CLK(ALU_CLK) );
  CLK_DIV_0 U_TX_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst_n(n179), .i_clk_en(
        1'b1), .i_div_ratio(REG3), .o_div_clk(TX_CLK) );
  CLKDIV_MUX U_RX_DIV_MUX ( .Prescale(REG2[7:2]), .DIV_RATIO_RX({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, rx_div_ratio[2:0]}) );
  CLK_DIV_1 U_RX_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst_n(n179), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, rx_div_ratio[2:0]}), 
        .o_div_clk(RX_CLK) );
  UART_TOP U_UART ( .RST(n179), .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), .PAR_EN(
        REG2[0]), .PAR_TYP(REG2[1]), .Prescale(REG2[7:2]), .TX_IN_P(RD_DATA), 
        .TX_IN_V(n40), .RX_IN_S(RX_IN), .TX_OUT_S(TX_OUT), .TX_OUT_V(TX_BUSY), 
        .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_OUT_V), .PAR_ERR(PAR_ERR), .STP_ERR(
        STP_ERR) );
  PULSE_GEN U_PULSE_GEN ( .CLK(TX_CLK), .RST(n179), .LVL_SIG(TX_BUSY), 
        .PULSE_SIG(RD_INC) );
  ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3 U_ASYNC_FIFO ( .W_CLK(REF_CLK), .W_RST(
        n181), .W_INC(WR_INC), .R_CLK(TX_CLK), .R_RST(n179), .R_INC(RD_INC), 
        .WR_DATA(WR_DATA), .RD_DATA(RD_DATA), .FULL(FIFO_FULL), .EMPTY(F_EMPTY) );
  DATA_SYNC_BUS_WIDTH8 U_DATA_SYNC ( .dest_clk(REF_CLK), .dest_rst(n181), 
        .unsync_bus(RX_OUT_P), .bus_enable(RX_OUT_V), .sync_bus(RX_P_DATA_SYNC), .enable_pulse_d(RX_D_VLD_SYNC) );
  SYS_TOP_DW02_mult_0 U_ALU_U_ARITH_mult_11 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, n178, n177, n176, n175, n174, n173, REG0[1], n172}), 
        .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n155, n156, n171, 
        REG1[4], n148, n153, REG1[1], n151}), .TC(1'b0), .PRODUCT({
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, U_ALU_U_ARITH_N67, U_ALU_U_ARITH_N66, 
        U_ALU_U_ARITH_N65, U_ALU_U_ARITH_N64, U_ALU_U_ARITH_N63, 
        U_ALU_U_ARITH_N62, U_ALU_U_ARITH_N61, U_ALU_U_ARITH_N60, 
        U_ALU_U_ARITH_N59, U_ALU_U_ARITH_N58, U_ALU_U_ARITH_N57, 
        U_ALU_U_ARITH_N56, U_ALU_U_ARITH_N55, U_ALU_U_ARITH_N54, 
        U_ALU_U_ARITH_N53, U_ALU_U_ARITH_N52}) );
  SYS_TOP_DW_div_uns_1 U_ALU_U_ARITH_div_12 ( .a({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, n178, n177, n176, n175, n174, n173, REG0[1], n172}), 
        .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n154, REG1[6:0]}), 
        .quotient({U_ALU_U_ARITH_N84, U_ALU_U_ARITH_N83, U_ALU_U_ARITH_N82, 
        U_ALU_U_ARITH_N81, U_ALU_U_ARITH_N80, U_ALU_U_ARITH_N79, 
        U_ALU_U_ARITH_N78, U_ALU_U_ARITH_N77, U_ALU_U_ARITH_N76, 
        U_ALU_U_ARITH_N75, U_ALU_U_ARITH_N74, U_ALU_U_ARITH_N73, 
        U_ALU_U_ARITH_N72, U_ALU_U_ARITH_N71, U_ALU_U_ARITH_N70, 
        U_ALU_U_ARITH_N69}), .remainder({SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, 
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, 
        SYNOPSYS_UNCONNECTED_37}) );
  DFFRQX1M U_ALU_U_OUTPUT_ALU_OUT_reg_0_ ( .D(U_ALU_result[0]), .CK(ALU_CLK), 
        .RN(SYNC_RST1), .Q(ALU_OUT[0]) );
  DFFRQX1M U_ALU_U_OUTPUT_ALU_OUT_reg_1_ ( .D(U_ALU_result[1]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[1]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_9_ ( .D(U_ALU_result[9]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[9]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_14_ ( .D(U_ALU_result[14]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[14]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_13_ ( .D(U_ALU_result[13]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[13]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_12_ ( .D(U_ALU_result[12]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[12]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_11_ ( .D(U_ALU_result[11]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[11]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_10_ ( .D(U_ALU_result[10]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[10]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_8_ ( .D(U_ALU_result[8]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[8]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_7_ ( .D(U_ALU_result[7]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[7]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_6_ ( .D(U_ALU_result[6]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[6]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_5_ ( .D(U_ALU_result[5]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[5]) );
  DFFRQX1M U_ALU_U_OUTPUT_ALU_OUT_reg_3_ ( .D(U_ALU_result[3]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[3]) );
  DFFRQX1M U_ALU_U_OUTPUT_ALU_OUT_reg_2_ ( .D(U_ALU_result[2]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[2]) );
  DFFRQX2M U_ALU_U_OUTPUT_ALU_OUT_reg_15_ ( .D(U_ALU_result[15]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[15]) );
  DFFRQX2M U_ALU_U_OUTPUT_OUT_VALID_reg ( .D(ALU_EN), .CK(ALU_CLK), .RN(n181), 
        .Q(OUT_VALID) );
  DFFRQX1M U_ALU_U_OUTPUT_ALU_OUT_reg_4_ ( .D(U_ALU_result[4]), .CK(ALU_CLK), 
        .RN(n181), .Q(ALU_OUT[4]) );
  NAND2X2M U154 ( .A(U_ALU_U_ARITH_N69), .B(n309), .Y(n157) );
  DLY1X1M U155 ( .A(REG1[7]), .Y(n155) );
  BUFX8M U156 ( .A(REG1[7]), .Y(n154) );
  OAI21XLM U157 ( .A0(n331), .A1(n334), .B0(REG1[1]), .Y(n333) );
  AO21XLM U158 ( .A0(U_ALU_U_ARITH_N67), .A1(n311), .B0(n310), .Y(
        U_ALU_result[15]) );
  AO21XLM U159 ( .A0(U_ALU_U_ARITH_N64), .A1(n311), .B0(n304), .Y(
        U_ALU_result[12]) );
  AO21XLM U160 ( .A0(U_ALU_U_ARITH_N65), .A1(n311), .B0(n305), .Y(
        U_ALU_result[13]) );
  AO21XLM U161 ( .A0(U_ALU_U_ARITH_N61), .A1(n311), .B0(n307), .Y(
        U_ALU_result[9]) );
  OA22X2M U162 ( .A0(n160), .A1(n270), .B0(n269), .B1(n268), .Y(n146) );
  AND2X2M U163 ( .A(n146), .B(n281), .Y(n147) );
  BUFX2M U164 ( .A(REG0[7]), .Y(n178) );
  BUFX2M U165 ( .A(REG0[6]), .Y(n177) );
  INVX2M U166 ( .A(n328), .Y(n148) );
  NAND2X2M U167 ( .A(n157), .B(n149), .Y(U_ALU_result[0]) );
  AND2X2M U168 ( .A(n152), .B(n147), .Y(n149) );
  INVXLM U169 ( .A(REG1[0]), .Y(n150) );
  INVX2M U170 ( .A(n150), .Y(n151) );
  AND2X2M U171 ( .A(n158), .B(n159), .Y(n152) );
  INVX2M U172 ( .A(n228), .Y(n153) );
  AO22XLM U173 ( .A0(n175), .A1(n297), .B0(U_ALU_U_ARITH_N74), .B1(n309), .Y(
        n291) );
  INVX2M U174 ( .A(n329), .Y(n156) );
  INVXLM U175 ( .A(REG1[5]), .Y(n170) );
  NAND2X2M U176 ( .A(U_ALU_U_ARITH_N52), .B(n311), .Y(n158) );
  NAND2X2M U177 ( .A(n292), .B(REG0[1]), .Y(n159) );
  BUFX2M U178 ( .A(REG0[5]), .Y(n176) );
  NAND3BXLM U179 ( .AN(n226), .B(n225), .C(n224), .Y(U_ALU_result[3]) );
  NAND3BXLM U180 ( .AN(n208), .B(n207), .C(n206), .Y(U_ALU_result[4]) );
  OAI2B1X2M U181 ( .A1N(n258), .A0(n138), .B0(n139), .Y(n67) );
  NAND3BXLM U182 ( .AN(n246), .B(n245), .C(n244), .Y(U_ALU_result[2]) );
  AOI222XLM U183 ( .A0(n59), .A1(ALU_EN), .B0(n177), .B1(n297), .C0(
        U_ALU_U_ARITH_N59), .C1(n311), .Y(n298) );
  OAI32XLM U184 ( .A0(n355), .A1(n354), .A2(n353), .B0(n177), .B1(n329), .Y(
        n357) );
  INVXLM U185 ( .A(n177), .Y(n360) );
  AO21XLM U186 ( .A0(U_ALU_U_ARITH_N62), .A1(n311), .B0(n302), .Y(
        U_ALU_result[10]) );
  AO21XLM U187 ( .A0(U_ALU_U_ARITH_N79), .A1(n309), .B0(n308), .Y(n302) );
  AO21XLM U188 ( .A0(U_ALU_U_ARITH_N66), .A1(n311), .B0(n306), .Y(
        U_ALU_result[14]) );
  AO21XLM U189 ( .A0(U_ALU_U_ARITH_N83), .A1(n309), .B0(n308), .Y(n306) );
  AO21XLM U190 ( .A0(U_ALU_U_ARITH_N63), .A1(n311), .B0(n303), .Y(
        U_ALU_result[11]) );
  AO21XLM U191 ( .A0(U_ALU_U_ARITH_N80), .A1(n309), .B0(n308), .Y(n303) );
  INVX2M U192 ( .A(n248), .Y(n292) );
  INVX2M U193 ( .A(n300), .Y(n309) );
  INVX2M U194 ( .A(n249), .Y(n297) );
  INVX2M U195 ( .A(n268), .Y(n231) );
  AO21XLM U196 ( .A0(n301), .A1(U_ALU_U_ARITH_N51), .B0(n45), .Y(n308) );
  NOR2X2M U197 ( .A(n365), .B(n49), .Y(n45) );
  XNOR2X2M U198 ( .A(n283), .B(n284), .Y(n286) );
  INVX2M U199 ( .A(n285), .Y(n301) );
  INVX2M U200 ( .A(n287), .Y(n296) );
  INVX2M U201 ( .A(n277), .Y(n257) );
  INVX2M U202 ( .A(n230), .Y(n238) );
  INVX2M U203 ( .A(n211), .Y(n218) );
  INVX2M U204 ( .A(n192), .Y(n200) );
  CLKXOR2X2M U205 ( .A(n282), .B(n283), .Y(n288) );
  NOR2X2M U206 ( .A(n67), .B(n63), .Y(n49) );
  OR2X2M U207 ( .A(n315), .B(n188), .Y(n300) );
  NAND3BX2M U208 ( .AN(n365), .B(n187), .C(n326), .Y(n248) );
  NAND3BX2M U209 ( .AN(n365), .B(n318), .C(n187), .Y(n249) );
  OR2X2M U210 ( .A(n365), .B(n314), .Y(n268) );
  OR2X2M U211 ( .A(n365), .B(n313), .Y(n267) );
  INVX2M U212 ( .A(n66), .Y(n253) );
  INVX2M U213 ( .A(n312), .Y(n63) );
  INVX2M U214 ( .A(n313), .Y(n324) );
  INVX2M U215 ( .A(n314), .Y(n325) );
  INVX2M U216 ( .A(n266), .Y(n311) );
  AO22X1M U217 ( .A0(n301), .A1(n214), .B0(n209), .B1(n296), .Y(n223) );
  INVX2M U218 ( .A(n215), .Y(n209) );
  AO22X1M U219 ( .A0(n301), .A1(n196), .B0(n189), .B1(n296), .Y(n205) );
  INVX2M U220 ( .A(n197), .Y(n189) );
  INVX2M U221 ( .A(n67), .Y(n256) );
  INVX2M U222 ( .A(n247), .Y(n258) );
  AND3X2M U223 ( .A(n287), .B(n285), .C(n267), .Y(n160) );
  OA22X2M U224 ( .A0(n249), .A1(n271), .B0(n332), .B1(n248), .Y(n265) );
  AOI211XLM U225 ( .A0(U_ALU_U_ARITH_N70), .A1(n309), .B0(n263), .C0(n262), 
        .Y(n264) );
  AOI211X2M U226 ( .A0(n223), .A1(n222), .B0(n221), .C0(n220), .Y(n224) );
  AO22X1M U227 ( .A0(U_ALU_U_ARITH_N55), .A1(n311), .B0(n175), .B1(n292), .Y(
        n226) );
  AOI211X2M U228 ( .A0(n205), .A1(n204), .B0(n203), .C0(n202), .Y(n206) );
  AO22X1M U229 ( .A0(U_ALU_U_ARITH_N56), .A1(n311), .B0(n292), .B1(n176), .Y(
        n208) );
  AOI22XLM U230 ( .A0(U_ALU_U_ARITH_N73), .A1(n309), .B0(n174), .B1(n297), .Y(
        n207) );
  NAND3BX2M U231 ( .AN(n291), .B(n290), .C(n289), .Y(U_ALU_result[5]) );
  OA22X2M U232 ( .A0(n288), .A1(n287), .B0(n286), .B1(n285), .Y(n290) );
  AOI222X1M U233 ( .A0(n79), .A1(ALU_EN), .B0(n292), .B1(n177), .C0(
        U_ALU_U_ARITH_N57), .C1(n311), .Y(n289) );
  NAND3BX2M U234 ( .AN(n295), .B(n294), .C(n293), .Y(U_ALU_result[6]) );
  AOI22X1M U235 ( .A0(U_ALU_U_ARITH_N26), .A1(n296), .B0(U_ALU_U_ARITH_N42), 
        .B1(n301), .Y(n294) );
  AOI222X1M U236 ( .A0(n72), .A1(ALU_EN), .B0(n178), .B1(n292), .C0(
        U_ALU_U_ARITH_N58), .C1(n311), .Y(n293) );
  AO22XLM U237 ( .A0(n176), .A1(n297), .B0(U_ALU_U_ARITH_N75), .B1(n309), .Y(
        n295) );
  AOI2B1X1M U238 ( .A1N(n48), .A0(n49), .B0(n365), .Y(U_ALU_result[8]) );
  OAI32X1M U239 ( .A0(n361), .A1(n323), .A2(n322), .B0(n321), .B1(n320), .Y(
        n48) );
  AOI221XLM U240 ( .A0(U_ALU_U_ARITH_N77), .A1(n319), .B0(U_ALU_U_ARITH_N60), 
        .B1(n318), .C0(n317), .Y(n321) );
  INVX2M U241 ( .A(n315), .Y(n319) );
  OAI2BB1X2M U242 ( .A0N(n173), .A1N(n228), .B0(n161), .Y(n214) );
  OAI21X2M U243 ( .A0(n173), .A1(n228), .B0(n234), .Y(n161) );
  OAI2BB1X2M U244 ( .A0N(n174), .A1N(n328), .B0(n162), .Y(n196) );
  OAI21X2M U245 ( .A0(n174), .A1(n328), .B0(n214), .Y(n162) );
  ADDFX2M U246 ( .A(n178), .B(n330), .CI(U_ALU_U_ARITH_sub_10_carry[7]), .CO(
        U_ALU_U_ARITH_sub_10_carry[8]), .S(U_ALU_U_ARITH_N43) );
  AO22X1M U247 ( .A0(U_ALU_U_ARITH_N28), .A1(n316), .B0(U_ALU_U_ARITH_N51), 
        .B1(n326), .Y(n317) );
  OAI2BB1X2M U248 ( .A0N(n175), .A1N(n190), .B0(n163), .Y(n284) );
  OAI21X2M U249 ( .A0(n175), .A1(n190), .B0(n196), .Y(n163) );
  ADDFX2M U250 ( .A(n177), .B(n329), .CI(U_ALU_U_ARITH_sub_10_carry[6]), .CO(
        U_ALU_U_ARITH_sub_10_carry[7]), .S(U_ALU_U_ARITH_N42) );
  AO21XLM U251 ( .A0(n176), .A1(n170), .B0(n183), .Y(
        U_ALU_U_ARITH_sub_10_carry[6]) );
  OA21X2M U252 ( .A0(n176), .A1(n170), .B0(n284), .Y(n183) );
  INVX2M U253 ( .A(n346), .Y(n358) );
  INVX2M U254 ( .A(n345), .Y(n359) );
  NAND3BX2M U255 ( .AN(n323), .B(U_ALU_U_COMPARE_N23), .C(n275), .Y(n277) );
  INVX2M U256 ( .A(ALU_EN), .Y(n365) );
  AOI31X2M U257 ( .A0(n261), .A1(n260), .A2(n259), .B0(n365), .Y(n262) );
  MX2X2M U258 ( .A(n312), .B(n253), .S0(n165), .Y(n261) );
  MX2X2M U259 ( .A(n314), .B(n256), .S0(n255), .Y(n260) );
  AOI31X2M U260 ( .A0(n258), .A1(n275), .A2(n272), .B0(n257), .Y(n259) );
  OR2X2M U261 ( .A(n193), .B(n188), .Y(n285) );
  OR2X2M U262 ( .A(n131), .B(n188), .Y(n287) );
  NAND4X2M U263 ( .A(n279), .B(n278), .C(n277), .D(n276), .Y(n280) );
  MXI2X1M U264 ( .A(n63), .B(n66), .S0(n169), .Y(n279) );
  NAND3X2M U265 ( .A(n150), .B(n271), .C(n67), .Y(n278) );
  NAND4X2M U266 ( .A(n318), .B(n275), .C(n274), .D(n273), .Y(n276) );
  AO21XLM U267 ( .A0(U_ALU_U_ARITH_add_9_carry[1]), .A1(n254), .B0(n165), .Y(
        n235) );
  AO21XLM U268 ( .A0(n233), .A1(n235), .B0(n238), .Y(n215) );
  AO21XLM U269 ( .A0(n213), .A1(n215), .B0(n218), .Y(n197) );
  AO21XLM U270 ( .A0(n195), .A1(n197), .B0(n200), .Y(n282) );
  OR2X2M U271 ( .A(n365), .B(n320), .Y(n188) );
  INVX2M U272 ( .A(U_ALU_U_COMPARE_N23), .Y(n274) );
  OR2X2M U273 ( .A(n332), .B(n228), .Y(n230) );
  NAND2BX2M U274 ( .AN(n328), .B(n174), .Y(n211) );
  NAND2BX2M U275 ( .AN(n190), .B(n175), .Y(n192) );
  OAI2BB1X2M U276 ( .A0N(n176), .A1N(n171), .B0(n164), .Y(
        U_ALU_U_ARITH_add_9_carry[6]) );
  OAI21X2M U277 ( .A0(n176), .A1(n171), .B0(n282), .Y(n164) );
  INVX2M U278 ( .A(n272), .Y(n273) );
  INVX2M U279 ( .A(n173), .Y(n332) );
  NOR2X2M U280 ( .A(n331), .B(n184), .Y(n165) );
  AOI22X1M U281 ( .A0(n63), .A1(n360), .B0(n325), .B1(n177), .Y(n75) );
  AOI221XLM U282 ( .A0(n324), .A1(n360), .B0(n177), .B1(n66), .C0(n325), .Y(
        n74) );
  AOI221XLM U283 ( .A0(n324), .A1(n177), .B0(n67), .B1(n360), .C0(n63), .Y(n73) );
  XNOR2XLM U284 ( .A(n176), .B(n171), .Y(n283) );
  OAI21X2M U285 ( .A0(n138), .A1(n131), .B0(n139), .Y(n66) );
  OAI221XLM U286 ( .A0(n171), .A1(n80), .B0(n81), .B1(n170), .C0(n82), .Y(n79)
         );
  AOI22X1M U287 ( .A0(n63), .A1(n362), .B0(n176), .B1(n325), .Y(n82) );
  AOI221XLM U288 ( .A0(n324), .A1(n362), .B0(n176), .B1(n66), .C0(n325), .Y(
        n81) );
  AOI221XLM U289 ( .A0(n176), .A1(n324), .B0(n67), .B1(n362), .C0(n63), .Y(n80) );
  AOI221XLM U290 ( .A0(n174), .A1(n324), .B0(n67), .B1(n364), .C0(n63), .Y(n94) );
  AOI221XLM U291 ( .A0(n175), .A1(n324), .B0(n67), .B1(n363), .C0(n63), .Y(n87) );
  AOI221XLM U292 ( .A0(n324), .A1(n178), .B0(n67), .B1(n361), .C0(n63), .Y(n60) );
  AOI221XLM U293 ( .A0(n324), .A1(n361), .B0(n178), .B1(n66), .C0(n325), .Y(
        n61) );
  OR2X2M U294 ( .A(n138), .B(n322), .Y(n312) );
  AOI22X1M U295 ( .A0(n63), .A1(n361), .B0(n325), .B1(n178), .Y(n62) );
  OR2X2M U296 ( .A(n140), .B(n131), .Y(n313) );
  OAI21BX1M U297 ( .A0(n166), .A1(n167), .B0N(n247), .Y(n315) );
  NAND4X2M U298 ( .A(n330), .B(n329), .C(n150), .D(n170), .Y(n166) );
  NAND4X2M U299 ( .A(n184), .B(n328), .C(n228), .D(n190), .Y(n167) );
  OR2X2M U300 ( .A(n138), .B(n193), .Y(n314) );
  OR2X2M U301 ( .A(n322), .B(n188), .Y(n266) );
  NAND2BX2M U302 ( .AN(n140), .B(n326), .Y(n139) );
  OR2X2M U303 ( .A(n186), .B(n185), .Y(n247) );
  OA21X2M U304 ( .A0(n239), .A1(n238), .B0(n237), .Y(n240) );
  INVX2M U305 ( .A(n233), .Y(n239) );
  AO22X1M U306 ( .A0(n236), .A1(n301), .B0(n296), .B1(n235), .Y(n237) );
  INVX2M U307 ( .A(n234), .Y(n236) );
  OA21X2M U308 ( .A0(n219), .A1(n218), .B0(n217), .Y(n220) );
  INVX2M U309 ( .A(n213), .Y(n219) );
  AO22X1M U310 ( .A0(n216), .A1(n301), .B0(n296), .B1(n215), .Y(n217) );
  INVX2M U311 ( .A(n214), .Y(n216) );
  OA21X2M U312 ( .A0(n201), .A1(n200), .B0(n199), .Y(n202) );
  INVX2M U313 ( .A(n195), .Y(n201) );
  AO22X1M U314 ( .A0(n198), .A1(n301), .B0(n296), .B1(n197), .Y(n199) );
  INVX2M U315 ( .A(n196), .Y(n198) );
  INVX2M U316 ( .A(n193), .Y(n326) );
  AO22X1M U317 ( .A0(n301), .A1(n234), .B0(n227), .B1(n296), .Y(n243) );
  INVX2M U318 ( .A(n235), .Y(n227) );
  INVX2M U319 ( .A(n178), .Y(n361) );
  INVX2M U320 ( .A(n175), .Y(n363) );
  XNOR2X2M U321 ( .A(n175), .B(n190), .Y(n204) );
  XNOR2X2M U322 ( .A(n174), .B(n328), .Y(n222) );
  NAND2BX2M U323 ( .AN(n316), .B(n140), .Y(n275) );
  INVX2M U324 ( .A(n322), .Y(n318) );
  INVX2M U325 ( .A(n131), .Y(n316) );
  INVX2M U326 ( .A(n176), .Y(n362) );
  INVX2M U327 ( .A(n323), .Y(n187) );
  INVX2M U328 ( .A(n174), .Y(n364) );
  INVX2M U329 ( .A(n172), .Y(n271) );
  INVX2M U330 ( .A(n254), .Y(n255) );
  INVX4M U331 ( .A(n182), .Y(n181) );
  INVX2M U332 ( .A(SYNC_RST1), .Y(n182) );
  NAND2BX2M U333 ( .AN(n365), .B(n280), .Y(n281) );
  AO22X1M U334 ( .A0(U_ALU_U_ARITH_N54), .A1(n311), .B0(n174), .B1(n292), .Y(
        n246) );
  AOI211X2M U335 ( .A0(n243), .A1(n242), .B0(n241), .C0(n240), .Y(n244) );
  BUFX2M U336 ( .A(REG0[4]), .Y(n175) );
  OAI2B11XLM U337 ( .A1N(U_ALU_U_ARITH_N76), .A0(n300), .B0(n299), .C0(n298), 
        .Y(U_ALU_result[7]) );
  AOI22X1M U338 ( .A0(U_ALU_U_ARITH_N27), .A1(n296), .B0(U_ALU_U_ARITH_N43), 
        .B1(n301), .Y(n299) );
  BUFX2M U339 ( .A(REG0[3]), .Y(n174) );
  BUFX2M U340 ( .A(REG0[2]), .Y(n173) );
  BUFX2M U341 ( .A(REG0[0]), .Y(n172) );
  INVXLM U342 ( .A(REG1[1]), .Y(n184) );
  OAI2BB1X2M U343 ( .A0N(REG0[1]), .A1N(n184), .B0(n168), .Y(n234) );
  OAI21X2M U344 ( .A0(REG0[1]), .A1(n184), .B0(U_ALU_U_ARITH_sub_10_carry[1]), 
        .Y(n168) );
  OAI2BB1XLM U345 ( .A0N(n341), .A1N(n178), .B0(n340), .Y(n272) );
  INVXLM U346 ( .A(REG1[3]), .Y(n328) );
  OR2X1M U347 ( .A(n174), .B(n148), .Y(n213) );
  OR2X1M U348 ( .A(n153), .B(n173), .Y(n233) );
  MX2X2M U349 ( .A(n252), .B(n251), .S0(n250), .Y(n263) );
  XNOR2XLM U350 ( .A(REG1[1]), .B(n331), .Y(n250) );
  AO22X1M U351 ( .A0(n301), .A1(n344), .B0(U_ALU_U_ARITH_add_9_carry[1]), .B1(
        n296), .Y(n252) );
  OAI221X1M U352 ( .A0(U_ALU_U_ARITH_add_9_carry[1]), .A1(n287), .B0(n285), 
        .B1(n344), .C0(n267), .Y(n251) );
  OR2X1M U353 ( .A(REG1[1]), .B(REG0[1]), .Y(n254) );
  INVX2M U354 ( .A(REG0[1]), .Y(n331) );
  OR2X2M U355 ( .A(ALU_FUN[1]), .B(ALU_FUN[0]), .Y(n131) );
  OR2X2M U356 ( .A(ALU_FUN[0]), .B(n186), .Y(n322) );
  NAND2BX2M U357 ( .AN(ALU_FUN[3]), .B(ALU_FUN[2]), .Y(n138) );
  OR2X2M U358 ( .A(ALU_FUN[1]), .B(n185), .Y(n193) );
  NAND2X2M U359 ( .A(ALU_FUN[3]), .B(n327), .Y(n140) );
  INVX2M U360 ( .A(ALU_FUN[2]), .Y(n327) );
  AO22X1M U361 ( .A0(n194), .A1(ALU_EN), .B0(n231), .B1(n195), .Y(n203) );
  OA21X2M U362 ( .A0(n190), .A1(n313), .B0(n312), .Y(n191) );
  AO22X1M U363 ( .A0(n232), .A1(ALU_EN), .B0(n231), .B1(n233), .Y(n241) );
  OAI222XLM U364 ( .A0(n230), .A1(n253), .B0(n173), .B1(n229), .C0(n103), .C1(
        n153), .Y(n232) );
  OA21X2M U365 ( .A0(n228), .A1(n313), .B0(n312), .Y(n229) );
  AOI221XLM U366 ( .A0(n173), .A1(n324), .B0(n67), .B1(n332), .C0(n63), .Y(
        n103) );
  AO22X1M U367 ( .A0(n212), .A1(ALU_EN), .B0(n231), .B1(n213), .Y(n221) );
  OAI222XLM U368 ( .A0(n253), .A1(n211), .B0(n210), .B1(n174), .C0(n94), .C1(
        n148), .Y(n212) );
  OA21X2M U369 ( .A0(n328), .A1(n313), .B0(n312), .Y(n210) );
  OR2X2M U370 ( .A(ALU_FUN[3]), .B(ALU_FUN[2]), .Y(n320) );
  INVX2M U371 ( .A(ALU_FUN[0]), .Y(n185) );
  INVX2M U372 ( .A(ALU_FUN[1]), .Y(n186) );
  XNOR2XLM U373 ( .A(n153), .B(n332), .Y(n242) );
  AND2X1M U374 ( .A(n172), .B(n151), .Y(n169) );
  NAND2BX2M U375 ( .AN(n327), .B(ALU_FUN[3]), .Y(n323) );
  INVX2M U376 ( .A(F_EMPTY), .Y(n40) );
  INVX2M U377 ( .A(n180), .Y(n179) );
  INVX2M U378 ( .A(SYNC_RST2), .Y(n180) );
  OAI2B11X2M U379 ( .A1N(U_ALU_U_ARITH_N53), .A0(n266), .B0(n265), .C0(n264), 
        .Y(U_ALU_result[1]) );
  INVXLM U380 ( .A(REG1[2]), .Y(n228) );
  OAI221XLM U381 ( .A0(n156), .A1(n73), .B0(n74), .B1(n329), .C0(n75), .Y(n72)
         );
  OAI32XLM U382 ( .A0(n355), .A1(n350), .A2(n339), .B0(n156), .B1(n360), .Y(
        n341) );
  ADDFX2M U383 ( .A(n177), .B(n156), .CI(U_ALU_U_ARITH_add_9_carry[6]), .CO(
        U_ALU_U_ARITH_add_9_carry[7]), .S(U_ALU_U_ARITH_N26) );
  INVXLM U384 ( .A(REG1[6]), .Y(n329) );
  XOR2XLM U385 ( .A(n177), .B(n156), .Y(n355) );
  OAI222XLM U386 ( .A0(n253), .A1(n192), .B0(n191), .B1(n175), .C0(n87), .C1(
        REG1[4]), .Y(n194) );
  OR2X1M U387 ( .A(n175), .B(REG1[4]), .Y(n195) );
  INVXLM U388 ( .A(REG1[4]), .Y(n190) );
  NOR2BXLM U389 ( .AN(n175), .B(REG1[4]), .Y(n337) );
  NOR2BXLM U390 ( .AN(REG1[4]), .B(n175), .Y(n349) );
  AOI22XLM U391 ( .A0(U_ALU_U_ARITH_N72), .A1(n309), .B0(n297), .B1(n173), .Y(
        n225) );
  INVXLM U392 ( .A(n155), .Y(n330) );
  AO21XLM U393 ( .A0(U_ALU_U_ARITH_N82), .A1(n309), .B0(n308), .Y(n305) );
  AO21XLM U394 ( .A0(U_ALU_U_ARITH_N84), .A1(n309), .B0(n308), .Y(n310) );
  AO21XLM U395 ( .A0(U_ALU_U_ARITH_N81), .A1(n309), .B0(n308), .Y(n304) );
  INVXLM U396 ( .A(n170), .Y(n171) );
  NOR2XLM U397 ( .A(n172), .B(n151), .Y(n269) );
  AOI22XLM U398 ( .A0(U_ALU_U_ARITH_N71), .A1(n309), .B0(n297), .B1(REG0[1]), 
        .Y(n245) );
  XNOR2XLM U399 ( .A(n172), .B(n151), .Y(n270) );
  AO21XLM U400 ( .A0(U_ALU_U_ARITH_N78), .A1(n309), .B0(n308), .Y(n307) );
  ADDFX2M U401 ( .A(n178), .B(n155), .CI(U_ALU_U_ARITH_add_9_carry[7]), .CO(
        U_ALU_U_ARITH_N28), .S(U_ALU_U_ARITH_N27) );
  OAI221XLM U402 ( .A0(n155), .A1(n60), .B0(n61), .B1(n330), .C0(n62), .Y(n59)
         );
  OAI21XLM U403 ( .A0(n357), .A1(n361), .B0(n155), .Y(n356) );
  AND2X1M U404 ( .A(n172), .B(n151), .Y(U_ALU_U_ARITH_add_9_carry[1]) );
  OR2X1M U405 ( .A(n150), .B(n172), .Y(U_ALU_U_ARITH_sub_10_carry[1]) );
  CLKINVX1M U406 ( .A(U_ALU_U_ARITH_sub_10_carry[8]), .Y(U_ALU_U_ARITH_N51) );
  NOR2BX1M U407 ( .AN(n171), .B(n176), .Y(n350) );
  CLKNAND2X2M U408 ( .A(n174), .B(n328), .Y(n346) );
  NAND2BX1M U409 ( .AN(n153), .B(n173), .Y(n336) );
  CLKNAND2X2M U410 ( .A(n172), .B(n150), .Y(n334) );
  NAND2BX1M U411 ( .AN(n173), .B(n153), .Y(n347) );
  AND2X1M U412 ( .A(n336), .B(n347), .Y(n342) );
  OAI2B11X1M U413 ( .A1N(n334), .A0(REG0[1]), .B0(n333), .C0(n342), .Y(n335)
         );
  NOR2X1M U414 ( .A(n328), .B(n174), .Y(n345) );
  AOI31X1M U415 ( .A0(n346), .A1(n336), .A2(n335), .B0(n345), .Y(n338) );
  NOR2X1M U416 ( .A(n337), .B(n349), .Y(n351) );
  NOR2BX1M U417 ( .AN(n176), .B(n171), .Y(n354) );
  AOI211X1M U418 ( .A0(n338), .A1(n351), .B0(n337), .C0(n354), .Y(n339) );
  OAI21BX1M U419 ( .A0(n178), .A1(n341), .B0N(n155), .Y(n340) );
  NOR2X1M U420 ( .A(n150), .B(n172), .Y(n344) );
  AO21XLM U421 ( .A0(n331), .A1(n344), .B0(REG1[1]), .Y(n343) );
  OAI211X1M U422 ( .A0(n344), .A1(n331), .B0(n343), .C0(n342), .Y(n348) );
  AOI31X1M U423 ( .A0(n348), .A1(n347), .A2(n359), .B0(n358), .Y(n352) );
  AOI211X1M U424 ( .A0(n352), .A1(n351), .B0(n350), .C0(n349), .Y(n353) );
  OAI2BB1X1M U425 ( .A0N(n361), .A1N(n357), .B0(n356), .Y(U_ALU_U_COMPARE_N23)
         );
endmodule

