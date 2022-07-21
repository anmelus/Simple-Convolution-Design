/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1
// Date      : Wed Nov 17 20:51:25 2021
/////////////////////////////////////////////////////////////


module MyDesign ( dut_run, reset_b, clk, dut_busy, dut_sram_read_address, 
        sram_dut_read_data, dut_wmem_read_address, wmem_dut_read_data, 
        dut_sram_write_address, dut_sram_write_data, dut_sram_write_enable );
  input [11:0] dut_sram_read_address;
  input [15:0] sram_dut_read_data;
  input [11:0] dut_wmem_read_address;
  input [15:0] wmem_dut_read_data;
  output [11:0] dut_sram_write_address;
  output [15:0] dut_sram_write_data;
  input dut_run, reset_b, clk;
  output dut_busy, dut_sram_write_enable;
  wire   in4_8_, N42, N593, N595, N597, N599, n129, n130, n131, n132, n133,
         n134, n135, n137, n138, n140, n141, n142, n143, n144, n145, n146,
         n147, n172, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n193, n194,
         n195, n196, n197, n198, n199, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533;
  wire   [1:0] state;
  wire   [8:0] weight;
  wire   [15:0] in;
  wire   [8:0] in1;
  wire   [8:6] in2;
  wire   [8:2] in3;

  DFF_X1 state_reg_1_ ( .D(N42), .CK(clk), .Q(state[1]), .QN(n487) );
  DFF_X1 weight_reg_8_ ( .D(n172), .CK(clk), .Q(weight[8]), .QN(n461) );
  DFF_X1 in1_reg_8_ ( .D(n147), .CK(clk), .Q(in1[8]), .QN(n492) );
  DFF_X1 in1_reg_7_ ( .D(n146), .CK(clk), .QN(n490) );
  DFF_X1 in1_reg_6_ ( .D(n145), .CK(clk), .QN(n485) );
  DFF_X1 in1_reg_5_ ( .D(n144), .CK(clk), .QN(n480) );
  DFF_X1 in1_reg_4_ ( .D(n143), .CK(clk), .QN(n481) );
  DFF_X1 in1_reg_3_ ( .D(n142), .CK(clk), .QN(n469) );
  DFF_X1 in1_reg_2_ ( .D(n141), .CK(clk), .QN(n470) );
  DFF_X1 in1_reg_1_ ( .D(n140), .CK(clk), .QN(n464) );
  DFF_X1 in2_reg_8_ ( .D(n138), .CK(clk), .Q(in2[8]), .QN(n493) );
  DFF_X1 in2_reg_7_ ( .D(n137), .CK(clk), .QN(n491) );
  DFF_X1 in2_reg_5_ ( .D(n135), .CK(clk), .QN(n475) );
  DFF_X1 in2_reg_4_ ( .D(n134), .CK(clk), .QN(n482) );
  DFF_X1 in2_reg_3_ ( .D(n133), .CK(clk), .QN(n471) );
  DFF_X1 in2_reg_2_ ( .D(n132), .CK(clk), .QN(n472) );
  DFF_X1 in2_reg_1_ ( .D(n131), .CK(clk), .QN(n465) );
  DFF_X1 in2_reg_0_ ( .D(n130), .CK(clk), .QN(n466) );
  DFF_X1 in3_reg_8_ ( .D(n129), .CK(clk), .Q(in3[8]), .QN(n494) );
  DFF_X1 in3_reg_7_ ( .D(n197), .CK(clk), .QN(n488) );
  DFF_X1 in3_reg_6_ ( .D(n196), .CK(clk), .QN(n484) );
  DFF_X1 in3_reg_5_ ( .D(n195), .CK(clk), .QN(n479) );
  DFF_X1 in3_reg_4_ ( .D(n194), .CK(clk), .QN(n478) );
  DFF_X1 in3_reg_3_ ( .D(n193), .CK(clk), .QN(n468) );
  DFF_X1 in3_reg_1_ ( .D(n191), .CK(clk), .QN(n463) );
  DFF_X1 in3_reg_0_ ( .D(n190), .CK(clk), .QN(n462) );
  DFF_X1 in4_reg_8_ ( .D(n189), .CK(clk), .Q(in4_8_), .QN(n495) );
  DFF_X1 in4_reg_7_ ( .D(n188), .CK(clk), .QN(n489) );
  DFF_X1 in4_reg_6_ ( .D(n187), .CK(clk), .QN(n483) );
  DFF_X1 in4_reg_5_ ( .D(n186), .CK(clk), .QN(n486) );
  DFF_X1 in4_reg_4_ ( .D(n185), .CK(clk), .QN(n476) );
  DFF_X1 in4_reg_3_ ( .D(n184), .CK(clk), .QN(n477) );
  DFF_X1 in4_reg_2_ ( .D(n183), .CK(clk), .QN(n467) );
  DFF_X1 in4_reg_1_ ( .D(n182), .CK(clk), .QN(n473) );
  DFF_X1 in4_reg_0_ ( .D(n181), .CK(clk), .QN(n474) );
  DFF_X1 plh1_reg_3_ ( .D(n180), .CK(clk), .Q(N599), .QN(n502) );
  DFF_X1 plh2_reg_3_ ( .D(n178), .CK(clk), .Q(N597), .QN(n504) );
  DFF_X1 plh3_reg_3_ ( .D(n179), .CK(clk), .Q(N595), .QN(n503) );
  DFF_X1 plh4_reg_3_ ( .D(n199), .CK(clk), .Q(N593), .QN(n501) );
  DFF_X1 state_reg_0_ ( .D(n505), .CK(clk), .QN(state[0]) );
  DFF_X1 in3_reg_2_ ( .D(n506), .CK(clk), .QN(in3[2]) );
  DFF_X1 in2_reg_6_ ( .D(n533), .CK(clk), .QN(in2[6]) );
  DFF_X1 in1_reg_0_ ( .D(n532), .CK(clk), .QN(in1[0]) );
  DFF_X1 weight_reg_7_ ( .D(n508), .CK(clk), .QN(weight[7]) );
  DFF_X1 weight_reg_6_ ( .D(n509), .CK(clk), .QN(weight[6]) );
  DFF_X1 weight_reg_5_ ( .D(n510), .CK(clk), .QN(weight[5]) );
  DFF_X1 weight_reg_4_ ( .D(n511), .CK(clk), .QN(weight[4]) );
  DFF_X1 weight_reg_3_ ( .D(n512), .CK(clk), .QN(weight[3]) );
  DFF_X1 weight_reg_2_ ( .D(n513), .CK(clk), .QN(weight[2]) );
  DFF_X1 weight_reg_1_ ( .D(n514), .CK(clk), .QN(weight[1]) );
  DFF_X1 weight_reg_0_ ( .D(n515), .CK(clk), .QN(weight[0]) );
  DFF_X1 in_reg_15_ ( .D(n516), .CK(clk), .QN(in[15]) );
  DFF_X1 in_reg_14_ ( .D(n517), .CK(clk), .QN(in[14]) );
  DFF_X1 in_reg_13_ ( .D(n518), .CK(clk), .QN(in[13]) );
  DFF_X1 in_reg_12_ ( .D(n519), .CK(clk), .QN(in[12]) );
  DFF_X1 in_reg_11_ ( .D(n520), .CK(clk), .QN(in[11]) );
  DFF_X1 in_reg_10_ ( .D(n521), .CK(clk), .QN(in[10]) );
  DFF_X1 in_reg_9_ ( .D(n522), .CK(clk), .QN(in[9]) );
  DFF_X1 in_reg_8_ ( .D(n523), .CK(clk), .QN(in[8]) );
  DFF_X1 in_reg_7_ ( .D(n524), .CK(clk), .QN(in[7]) );
  DFF_X1 in_reg_6_ ( .D(n525), .CK(clk), .QN(in[6]) );
  DFF_X1 in_reg_5_ ( .D(n526), .CK(clk), .QN(in[5]) );
  DFF_X1 in_reg_4_ ( .D(n527), .CK(clk), .QN(in[4]) );
  DFF_X1 in_reg_3_ ( .D(n528), .CK(clk), .QN(in[3]) );
  DFF_X1 in_reg_2_ ( .D(n529), .CK(clk), .QN(in[2]) );
  DFF_X1 in_reg_1_ ( .D(n530), .CK(clk), .QN(in[1]) );
  DFF_X1 in_reg_0_ ( .D(n531), .CK(clk), .QN(in[0]) );
  DFF_X2 buzz_reg ( .D(n507), .CK(clk), .QN(dut_busy) );
  DFF_X2 feature_map_reg_3_ ( .D(n198), .CK(clk), .Q(dut_sram_write_data[3]), 
        .QN(n496) );
  DFF_X2 feature_map_reg_2_ ( .D(n177), .CK(clk), .Q(dut_sram_write_data[2]), 
        .QN(n497) );
  DFF_X2 feature_map_reg_1_ ( .D(n174), .CK(clk), .Q(dut_sram_write_data[1]), 
        .QN(n499) );
  DFF_X2 feature_map_reg_0_ ( .D(n175), .CK(clk), .Q(dut_sram_write_data[0]), 
        .QN(n498) );
  DFF_X2 write_reg ( .D(n176), .CK(clk), .Q(dut_sram_write_enable), .QN(n500)
         );
  INV_X2 U261 ( .A(n274), .ZN(n451) );
  INV_X2 U262 ( .A(1'b1), .ZN(dut_sram_write_address[11]) );
  INV_X2 U263 ( .A(1'b1), .ZN(dut_sram_write_address[10]) );
  INV_X2 U264 ( .A(1'b1), .ZN(dut_sram_write_address[9]) );
  INV_X2 U265 ( .A(1'b1), .ZN(dut_sram_write_address[8]) );
  INV_X2 U266 ( .A(1'b1), .ZN(dut_sram_write_address[7]) );
  INV_X2 U267 ( .A(1'b1), .ZN(dut_sram_write_address[6]) );
  INV_X2 U268 ( .A(1'b1), .ZN(dut_sram_write_address[5]) );
  INV_X2 U269 ( .A(1'b1), .ZN(dut_sram_write_address[4]) );
  INV_X2 U270 ( .A(1'b1), .ZN(dut_sram_write_address[3]) );
  INV_X2 U271 ( .A(1'b1), .ZN(dut_sram_write_address[2]) );
  INV_X2 U272 ( .A(1'b1), .ZN(dut_sram_write_address[1]) );
  INV_X2 U273 ( .A(1'b1), .ZN(dut_sram_write_address[0]) );
  INV_X2 U274 ( .A(1'b1), .ZN(dut_sram_write_data[15]) );
  INV_X2 U275 ( .A(1'b1), .ZN(dut_sram_write_data[14]) );
  INV_X2 U276 ( .A(1'b1), .ZN(dut_sram_write_data[13]) );
  INV_X2 U277 ( .A(1'b1), .ZN(dut_sram_write_data[12]) );
  INV_X2 U278 ( .A(1'b1), .ZN(dut_sram_write_data[11]) );
  INV_X2 U279 ( .A(1'b1), .ZN(dut_sram_write_data[10]) );
  INV_X2 U280 ( .A(1'b1), .ZN(dut_sram_write_data[9]) );
  INV_X2 U281 ( .A(1'b1), .ZN(dut_sram_write_data[8]) );
  INV_X2 U282 ( .A(1'b1), .ZN(dut_sram_write_data[7]) );
  INV_X2 U283 ( .A(1'b1), .ZN(dut_sram_write_data[6]) );
  INV_X2 U284 ( .A(1'b1), .ZN(dut_sram_write_data[5]) );
  INV_X2 U285 ( .A(1'b1), .ZN(dut_sram_write_data[4]) );
  OR2_X1 U310 ( .A1(n393), .A2(n392), .ZN(n374) );
  OR2_X1 U311 ( .A1(n371), .A2(n370), .ZN(n383) );
  OR2_X1 U312 ( .A1(n433), .A2(n432), .ZN(n414) );
  OR2_X1 U313 ( .A1(n411), .A2(n410), .ZN(n423) );
  OR2_X1 U314 ( .A1(n353), .A2(n352), .ZN(n334) );
  OR2_X1 U315 ( .A1(n331), .A2(n330), .ZN(n343) );
  OR2_X1 U316 ( .A1(n290), .A2(n289), .ZN(n303) );
  INV_X1 U317 ( .A(reset_b), .ZN(n443) );
  OR4_X1 U318 ( .A1(n309), .A2(n308), .A3(n307), .A4(n306), .ZN(n311) );
  AND3_X1 U319 ( .A1(n295), .A2(n293), .A3(n282), .ZN(n283) );
  OR4_X1 U320 ( .A1(n378), .A2(n377), .A3(n376), .A4(n375), .ZN(n380) );
  OR3_X1 U321 ( .A1(n388), .A2(n387), .A3(n384), .ZN(n385) );
  AND2_X1 U322 ( .A1(n361), .A2(n363), .ZN(n393) );
  OR4_X1 U323 ( .A1(n418), .A2(n417), .A3(n416), .A4(n415), .ZN(n420) );
  OR3_X1 U324 ( .A1(n428), .A2(n427), .A3(n424), .ZN(n425) );
  AND2_X1 U325 ( .A1(n400), .A2(n403), .ZN(n433) );
  OR4_X1 U326 ( .A1(n338), .A2(n337), .A3(n336), .A4(n335), .ZN(n340) );
  OR3_X1 U327 ( .A1(n348), .A2(n347), .A3(n344), .ZN(n345) );
  AND2_X1 U328 ( .A1(n320), .A2(n323), .ZN(n353) );
  NOR2_X2 U329 ( .A1(n446), .A2(n443), .ZN(n272) );
  INV_X4 U330 ( .A(n452), .ZN(n460) );
  AOI21_X1 U331 ( .B1(n487), .B2(state[0]), .A(n443), .ZN(n452) );
  NAND3_X1 U332 ( .A1(n487), .A2(state[0]), .A3(reset_b), .ZN(n274) );
  AOI22_X1 U333 ( .A1(in4_8_), .A2(n452), .B1(in[15]), .B2(n451), .ZN(n273) );
  INV_X1 U334 ( .A(n273), .ZN(n189) );
  NOR2_X1 U335 ( .A1(state[0]), .A2(n443), .ZN(n441) );
  OAI21_X1 U336 ( .B1(state[1]), .B2(dut_run), .A(n441), .ZN(n505) );
  NAND2_X1 U337 ( .A1(state[1]), .A2(n441), .ZN(n437) );
  NAND2_X1 U338 ( .A1(n437), .A2(n274), .ZN(N42) );
  XNOR2_X1 U339 ( .A(weight[0]), .B(n474), .ZN(n276) );
  XNOR2_X1 U340 ( .A(weight[1]), .B(n473), .ZN(n275) );
  NAND2_X1 U341 ( .A1(n276), .A2(n275), .ZN(n295) );
  XNOR2_X1 U342 ( .A(weight[4]), .B(n476), .ZN(n286) );
  XNOR2_X1 U343 ( .A(n276), .B(n275), .ZN(n278) );
  XOR2_X1 U344 ( .A(weight[2]), .B(n467), .Z(n277) );
  XNOR2_X1 U345 ( .A(n278), .B(n277), .ZN(n279) );
  XOR2_X1 U346 ( .A(weight[3]), .B(n477), .Z(n280) );
  XNOR2_X1 U347 ( .A(n279), .B(n280), .ZN(n285) );
  NAND2_X1 U348 ( .A1(n286), .A2(n285), .ZN(n293) );
  NOR2_X1 U349 ( .A1(n278), .A2(n277), .ZN(n294) );
  NAND2_X1 U350 ( .A1(n279), .A2(n280), .ZN(n292) );
  NOR2_X1 U351 ( .A1(n294), .A2(n292), .ZN(n284) );
  INV_X1 U352 ( .A(n280), .ZN(n281) );
  NAND2_X1 U353 ( .A1(n294), .A2(n281), .ZN(n282) );
  OAI22_X1 U354 ( .A1(n295), .A2(n293), .B1(n284), .B2(n283), .ZN(n299) );
  XOR2_X1 U355 ( .A(n286), .B(n285), .Z(n288) );
  XNOR2_X1 U356 ( .A(weight[5]), .B(n486), .ZN(n287) );
  NOR2_X1 U357 ( .A1(n288), .A2(n287), .ZN(n290) );
  XOR2_X1 U358 ( .A(weight[6]), .B(n483), .Z(n291) );
  INV_X1 U359 ( .A(n291), .ZN(n300) );
  XNOR2_X1 U360 ( .A(n288), .B(n287), .ZN(n301) );
  NAND2_X1 U361 ( .A1(n300), .A2(n301), .ZN(n289) );
  NAND2_X1 U362 ( .A1(n291), .A2(n290), .ZN(n302) );
  XOR2_X1 U363 ( .A(n293), .B(n292), .Z(n297) );
  XOR2_X1 U364 ( .A(n295), .B(n294), .Z(n296) );
  XNOR2_X1 U365 ( .A(n297), .B(n296), .ZN(n304) );
  MUX2_X1 U366 ( .A(n303), .B(n302), .S(n304), .Z(n298) );
  XOR2_X1 U367 ( .A(n299), .B(n298), .Z(n313) );
  AOI22_X1 U368 ( .A1(weight[8]), .A2(in4_8_), .B1(n495), .B2(n461), .ZN(n309)
         );
  XOR2_X1 U369 ( .A(n301), .B(n300), .Z(n308) );
  XNOR2_X1 U370 ( .A(weight[7]), .B(n489), .ZN(n307) );
  NAND2_X1 U371 ( .A1(n303), .A2(n302), .ZN(n305) );
  XNOR2_X1 U372 ( .A(n305), .B(n304), .ZN(n306) );
  NAND4_X1 U373 ( .A1(n309), .A2(n308), .A3(n307), .A4(n306), .ZN(n310) );
  NAND2_X1 U374 ( .A1(n311), .A2(n310), .ZN(n312) );
  XOR2_X1 U375 ( .A(n313), .B(n312), .Z(n314) );
  OAI21_X1 U376 ( .B1(state[0]), .B2(n487), .A(reset_b), .ZN(n436) );
  OAI22_X1 U377 ( .A1(n314), .A2(n437), .B1(n436), .B2(n501), .ZN(n199) );
  INV_X1 U378 ( .A(n437), .ZN(n315) );
  AOI21_X1 U379 ( .B1(reset_b), .B2(n487), .A(n315), .ZN(n440) );
  NAND2_X1 U380 ( .A1(reset_b), .A2(n440), .ZN(n439) );
  OAI22_X1 U381 ( .A1(n440), .A2(n496), .B1(N593), .B2(n439), .ZN(n198) );
  NAND2_X1 U382 ( .A1(in[10]), .A2(n451), .ZN(n453) );
  OAI21_X1 U383 ( .B1(n488), .B2(n460), .A(n453), .ZN(n197) );
  NAND2_X1 U384 ( .A1(in[9]), .A2(n451), .ZN(n454) );
  OAI21_X1 U385 ( .B1(n460), .B2(n484), .A(n454), .ZN(n196) );
  NAND2_X1 U386 ( .A1(in[7]), .A2(n451), .ZN(n316) );
  OAI21_X1 U387 ( .B1(n460), .B2(n479), .A(n316), .ZN(n195) );
  NAND2_X1 U388 ( .A1(in[6]), .A2(n451), .ZN(n456) );
  OAI21_X1 U389 ( .B1(n460), .B2(n478), .A(n456), .ZN(n194) );
  NAND2_X1 U390 ( .A1(in[5]), .A2(n451), .ZN(n457) );
  OAI21_X1 U391 ( .B1(n460), .B2(n468), .A(n457), .ZN(n193) );
  AOI22_X1 U392 ( .A1(in3[2]), .A2(n452), .B1(in[3]), .B2(n451), .ZN(n506) );
  NAND2_X1 U393 ( .A1(in[2]), .A2(n451), .ZN(n447) );
  OAI21_X1 U394 ( .B1(n460), .B2(n463), .A(n447), .ZN(n191) );
  NAND2_X1 U395 ( .A1(in[1]), .A2(n451), .ZN(n448) );
  OAI21_X1 U396 ( .B1(n460), .B2(n462), .A(n448), .ZN(n190) );
  NAND2_X1 U397 ( .A1(in[14]), .A2(n451), .ZN(n449) );
  OAI21_X1 U398 ( .B1(n460), .B2(n489), .A(n449), .ZN(n188) );
  NAND2_X1 U399 ( .A1(in[13]), .A2(n451), .ZN(n450) );
  OAI21_X1 U400 ( .B1(n460), .B2(n483), .A(n450), .ZN(n187) );
  NAND2_X1 U401 ( .A1(in[11]), .A2(n451), .ZN(n459) );
  OAI21_X1 U402 ( .B1(n460), .B2(n486), .A(n459), .ZN(n186) );
  OAI21_X1 U403 ( .B1(n476), .B2(n460), .A(n453), .ZN(n185) );
  OAI21_X1 U404 ( .B1(n460), .B2(n477), .A(n454), .ZN(n184) );
  OAI21_X1 U405 ( .B1(n460), .B2(n467), .A(n316), .ZN(n183) );
  OAI21_X1 U406 ( .B1(n460), .B2(n473), .A(n456), .ZN(n182) );
  OAI21_X1 U407 ( .B1(n460), .B2(n474), .A(n457), .ZN(n181) );
  AOI22_X1 U408 ( .A1(weight[8]), .A2(in1[8]), .B1(n492), .B2(n461), .ZN(n338)
         );
  XOR2_X1 U409 ( .A(weight[4]), .B(n481), .Z(n324) );
  XNOR2_X1 U410 ( .A(weight[0]), .B(in1[0]), .ZN(n329) );
  XOR2_X1 U411 ( .A(weight[1]), .B(n464), .Z(n328) );
  XNOR2_X1 U412 ( .A(n329), .B(n328), .ZN(n331) );
  XOR2_X1 U413 ( .A(weight[2]), .B(n470), .Z(n330) );
  XOR2_X1 U414 ( .A(n331), .B(n330), .Z(n327) );
  XOR2_X1 U415 ( .A(weight[3]), .B(n469), .Z(n342) );
  INV_X1 U416 ( .A(n342), .ZN(n326) );
  XOR2_X1 U417 ( .A(n327), .B(n326), .Z(n325) );
  XNOR2_X1 U418 ( .A(n324), .B(n325), .ZN(n319) );
  XOR2_X1 U419 ( .A(weight[5]), .B(n480), .Z(n318) );
  XOR2_X1 U420 ( .A(n319), .B(n318), .Z(n317) );
  XOR2_X1 U421 ( .A(weight[6]), .B(n485), .Z(n321) );
  XOR2_X1 U422 ( .A(n317), .B(n321), .Z(n337) );
  XNOR2_X1 U423 ( .A(weight[7]), .B(n490), .ZN(n336) );
  NOR2_X1 U424 ( .A1(n317), .A2(n321), .ZN(n320) );
  NAND2_X1 U425 ( .A1(n319), .A2(n318), .ZN(n323) );
  INV_X1 U426 ( .A(n321), .ZN(n322) );
  NOR2_X1 U427 ( .A1(n323), .A2(n322), .ZN(n352) );
  NOR2_X1 U428 ( .A1(n325), .A2(n324), .ZN(n347) );
  NOR2_X1 U429 ( .A1(n327), .A2(n326), .ZN(n341) );
  XOR2_X1 U430 ( .A(n347), .B(n341), .Z(n333) );
  NOR2_X1 U431 ( .A1(n329), .A2(n328), .ZN(n348) );
  XOR2_X1 U432 ( .A(n348), .B(n343), .Z(n332) );
  XNOR2_X1 U433 ( .A(n333), .B(n332), .ZN(n351) );
  XNOR2_X1 U434 ( .A(n334), .B(n351), .ZN(n335) );
  NAND4_X1 U435 ( .A1(n338), .A2(n337), .A3(n336), .A4(n335), .ZN(n339) );
  NAND2_X1 U436 ( .A1(n340), .A2(n339), .ZN(n350) );
  NAND2_X1 U437 ( .A1(n341), .A2(n343), .ZN(n346) );
  NOR2_X1 U438 ( .A1(n343), .A2(n342), .ZN(n344) );
  AOI22_X1 U439 ( .A1(n348), .A2(n347), .B1(n346), .B2(n345), .ZN(n349) );
  XNOR2_X1 U440 ( .A(n350), .B(n349), .ZN(n355) );
  MUX2_X1 U441 ( .A(n353), .B(n352), .S(n351), .Z(n354) );
  XNOR2_X1 U442 ( .A(n355), .B(n354), .ZN(n356) );
  OAI22_X1 U443 ( .A1(n356), .A2(n437), .B1(n436), .B2(n502), .ZN(n180) );
  AOI22_X1 U444 ( .A1(weight[8]), .A2(in2[8]), .B1(n493), .B2(n461), .ZN(n378)
         );
  XOR2_X1 U445 ( .A(weight[4]), .B(n482), .Z(n364) );
  XOR2_X1 U446 ( .A(weight[0]), .B(n466), .Z(n369) );
  XOR2_X1 U447 ( .A(weight[1]), .B(n465), .Z(n368) );
  XNOR2_X1 U448 ( .A(n369), .B(n368), .ZN(n371) );
  XOR2_X1 U449 ( .A(weight[2]), .B(n472), .Z(n370) );
  XOR2_X1 U450 ( .A(n371), .B(n370), .Z(n367) );
  XOR2_X1 U451 ( .A(weight[3]), .B(n471), .Z(n382) );
  INV_X1 U452 ( .A(n382), .ZN(n366) );
  XOR2_X1 U453 ( .A(n367), .B(n366), .Z(n365) );
  XNOR2_X1 U454 ( .A(n364), .B(n365), .ZN(n360) );
  XOR2_X1 U455 ( .A(weight[5]), .B(n475), .Z(n359) );
  XOR2_X1 U456 ( .A(n360), .B(n359), .Z(n358) );
  XOR2_X1 U457 ( .A(weight[6]), .B(in2[6]), .Z(n362) );
  INV_X1 U458 ( .A(n362), .ZN(n357) );
  XOR2_X1 U459 ( .A(n358), .B(n357), .Z(n377) );
  XNOR2_X1 U460 ( .A(weight[7]), .B(n491), .ZN(n376) );
  NOR2_X1 U461 ( .A1(n358), .A2(n357), .ZN(n361) );
  NAND2_X1 U462 ( .A1(n360), .A2(n359), .ZN(n363) );
  NOR2_X1 U463 ( .A1(n363), .A2(n362), .ZN(n392) );
  NOR2_X1 U464 ( .A1(n365), .A2(n364), .ZN(n387) );
  NOR2_X1 U465 ( .A1(n367), .A2(n366), .ZN(n381) );
  XOR2_X1 U466 ( .A(n387), .B(n381), .Z(n373) );
  NOR2_X1 U467 ( .A1(n369), .A2(n368), .ZN(n388) );
  XOR2_X1 U468 ( .A(n388), .B(n383), .Z(n372) );
  XNOR2_X1 U469 ( .A(n373), .B(n372), .ZN(n391) );
  XNOR2_X1 U470 ( .A(n374), .B(n391), .ZN(n375) );
  NAND4_X1 U471 ( .A1(n378), .A2(n377), .A3(n376), .A4(n375), .ZN(n379) );
  NAND2_X1 U472 ( .A1(n380), .A2(n379), .ZN(n390) );
  NAND2_X1 U473 ( .A1(n381), .A2(n383), .ZN(n386) );
  NOR2_X1 U474 ( .A1(n383), .A2(n382), .ZN(n384) );
  AOI22_X1 U475 ( .A1(n388), .A2(n387), .B1(n386), .B2(n385), .ZN(n389) );
  XNOR2_X1 U476 ( .A(n390), .B(n389), .ZN(n395) );
  MUX2_X1 U477 ( .A(n393), .B(n392), .S(n391), .Z(n394) );
  XNOR2_X1 U478 ( .A(n395), .B(n394), .ZN(n396) );
  OAI22_X1 U479 ( .A1(n396), .A2(n437), .B1(n436), .B2(n503), .ZN(n179) );
  AOI22_X1 U480 ( .A1(weight[8]), .A2(in3[8]), .B1(n494), .B2(n461), .ZN(n418)
         );
  XOR2_X1 U481 ( .A(weight[4]), .B(n478), .Z(n404) );
  XOR2_X1 U482 ( .A(weight[0]), .B(n462), .Z(n409) );
  XOR2_X1 U483 ( .A(weight[1]), .B(n463), .Z(n408) );
  XNOR2_X1 U484 ( .A(n409), .B(n408), .ZN(n411) );
  XNOR2_X1 U485 ( .A(weight[2]), .B(in3[2]), .ZN(n410) );
  XOR2_X1 U486 ( .A(n411), .B(n410), .Z(n407) );
  XOR2_X1 U487 ( .A(weight[3]), .B(n468), .Z(n422) );
  INV_X1 U488 ( .A(n422), .ZN(n406) );
  XOR2_X1 U489 ( .A(n407), .B(n406), .Z(n405) );
  XNOR2_X1 U490 ( .A(n404), .B(n405), .ZN(n399) );
  XOR2_X1 U491 ( .A(weight[5]), .B(n479), .Z(n398) );
  XOR2_X1 U492 ( .A(n399), .B(n398), .Z(n397) );
  XOR2_X1 U493 ( .A(weight[6]), .B(n484), .Z(n401) );
  XOR2_X1 U494 ( .A(n397), .B(n401), .Z(n417) );
  XNOR2_X1 U495 ( .A(weight[7]), .B(n488), .ZN(n416) );
  NOR2_X1 U496 ( .A1(n397), .A2(n401), .ZN(n400) );
  NAND2_X1 U497 ( .A1(n399), .A2(n398), .ZN(n403) );
  INV_X1 U498 ( .A(n401), .ZN(n402) );
  NOR2_X1 U499 ( .A1(n403), .A2(n402), .ZN(n432) );
  NOR2_X1 U500 ( .A1(n405), .A2(n404), .ZN(n427) );
  NOR2_X1 U501 ( .A1(n407), .A2(n406), .ZN(n421) );
  XOR2_X1 U502 ( .A(n427), .B(n421), .Z(n413) );
  NOR2_X1 U503 ( .A1(n409), .A2(n408), .ZN(n428) );
  XOR2_X1 U504 ( .A(n428), .B(n423), .Z(n412) );
  XNOR2_X1 U505 ( .A(n413), .B(n412), .ZN(n431) );
  XNOR2_X1 U506 ( .A(n414), .B(n431), .ZN(n415) );
  NAND4_X1 U507 ( .A1(n418), .A2(n417), .A3(n416), .A4(n415), .ZN(n419) );
  NAND2_X1 U508 ( .A1(n420), .A2(n419), .ZN(n430) );
  NAND2_X1 U509 ( .A1(n421), .A2(n423), .ZN(n426) );
  NOR2_X1 U510 ( .A1(n423), .A2(n422), .ZN(n424) );
  AOI22_X1 U511 ( .A1(n428), .A2(n427), .B1(n426), .B2(n425), .ZN(n429) );
  XNOR2_X1 U512 ( .A(n430), .B(n429), .ZN(n435) );
  MUX2_X1 U513 ( .A(n433), .B(n432), .S(n431), .Z(n434) );
  XNOR2_X1 U514 ( .A(n435), .B(n434), .ZN(n438) );
  OAI22_X1 U515 ( .A1(n438), .A2(n437), .B1(n436), .B2(n504), .ZN(n178) );
  OAI22_X1 U516 ( .A1(n440), .A2(n497), .B1(N595), .B2(n439), .ZN(n177) );
  OAI21_X1 U517 ( .B1(n440), .B2(n500), .A(n439), .ZN(n176) );
  OAI22_X1 U518 ( .A1(n440), .A2(n498), .B1(N599), .B2(n439), .ZN(n175) );
  OAI22_X1 U519 ( .A1(n440), .A2(n499), .B1(N597), .B2(n439), .ZN(n174) );
  AOI21_X1 U520 ( .B1(n441), .B2(dut_busy), .A(n451), .ZN(n507) );
  NAND2_X1 U521 ( .A1(n487), .A2(dut_run), .ZN(n442) );
  OAI21_X1 U522 ( .B1(state[0]), .B2(n442), .A(reset_b), .ZN(n445) );
  INV_X4 U523 ( .A(n445), .ZN(n446) );
  NAND2_X1 U524 ( .A1(wmem_dut_read_data[8]), .A2(n272), .ZN(n444) );
  OAI21_X1 U525 ( .B1(n445), .B2(n461), .A(n444), .ZN(n172) );
  AOI22_X1 U526 ( .A1(weight[7]), .A2(n446), .B1(n272), .B2(
        wmem_dut_read_data[7]), .ZN(n508) );
  AOI22_X1 U527 ( .A1(weight[6]), .A2(n446), .B1(n272), .B2(
        wmem_dut_read_data[6]), .ZN(n509) );
  AOI22_X1 U528 ( .A1(weight[5]), .A2(n446), .B1(n272), .B2(
        wmem_dut_read_data[5]), .ZN(n510) );
  AOI22_X1 U529 ( .A1(weight[4]), .A2(n446), .B1(n272), .B2(
        wmem_dut_read_data[4]), .ZN(n511) );
  AOI22_X1 U530 ( .A1(weight[3]), .A2(n446), .B1(n272), .B2(
        wmem_dut_read_data[3]), .ZN(n512) );
  AOI22_X1 U531 ( .A1(weight[2]), .A2(n446), .B1(n272), .B2(
        wmem_dut_read_data[2]), .ZN(n513) );
  AOI22_X1 U532 ( .A1(weight[1]), .A2(n446), .B1(n272), .B2(
        wmem_dut_read_data[1]), .ZN(n514) );
  AOI22_X1 U533 ( .A1(weight[0]), .A2(n446), .B1(n272), .B2(
        wmem_dut_read_data[0]), .ZN(n515) );
  AOI22_X1 U534 ( .A1(n446), .A2(in[15]), .B1(n272), .B2(
        sram_dut_read_data[15]), .ZN(n516) );
  AOI22_X1 U535 ( .A1(n446), .A2(in[14]), .B1(n272), .B2(
        sram_dut_read_data[14]), .ZN(n517) );
  AOI22_X1 U536 ( .A1(n446), .A2(in[13]), .B1(n272), .B2(
        sram_dut_read_data[13]), .ZN(n518) );
  AOI22_X1 U537 ( .A1(n446), .A2(in[12]), .B1(n272), .B2(
        sram_dut_read_data[12]), .ZN(n519) );
  AOI22_X1 U538 ( .A1(n446), .A2(in[11]), .B1(n272), .B2(
        sram_dut_read_data[11]), .ZN(n520) );
  AOI22_X1 U539 ( .A1(n446), .A2(in[10]), .B1(n272), .B2(
        sram_dut_read_data[10]), .ZN(n521) );
  AOI22_X1 U540 ( .A1(n446), .A2(in[9]), .B1(n272), .B2(sram_dut_read_data[9]), 
        .ZN(n522) );
  AOI22_X1 U541 ( .A1(n446), .A2(in[8]), .B1(n272), .B2(sram_dut_read_data[8]), 
        .ZN(n523) );
  AOI22_X1 U542 ( .A1(n446), .A2(in[7]), .B1(n272), .B2(sram_dut_read_data[7]), 
        .ZN(n524) );
  AOI22_X1 U543 ( .A1(n446), .A2(in[6]), .B1(n272), .B2(sram_dut_read_data[6]), 
        .ZN(n525) );
  AOI22_X1 U544 ( .A1(n446), .A2(in[5]), .B1(n272), .B2(sram_dut_read_data[5]), 
        .ZN(n526) );
  AOI22_X1 U545 ( .A1(n446), .A2(in[4]), .B1(n272), .B2(sram_dut_read_data[4]), 
        .ZN(n527) );
  AOI22_X1 U546 ( .A1(n446), .A2(in[3]), .B1(n272), .B2(sram_dut_read_data[3]), 
        .ZN(n528) );
  AOI22_X1 U547 ( .A1(n446), .A2(in[2]), .B1(n272), .B2(sram_dut_read_data[2]), 
        .ZN(n529) );
  AOI22_X1 U548 ( .A1(n446), .A2(in[1]), .B1(n272), .B2(sram_dut_read_data[1]), 
        .ZN(n530) );
  AOI22_X1 U549 ( .A1(n446), .A2(in[0]), .B1(n272), .B2(sram_dut_read_data[0]), 
        .ZN(n531) );
  OAI21_X1 U550 ( .B1(n492), .B2(n460), .A(n453), .ZN(n147) );
  OAI21_X1 U551 ( .B1(n460), .B2(n490), .A(n454), .ZN(n146) );
  NAND2_X1 U552 ( .A1(in[8]), .A2(n451), .ZN(n455) );
  OAI21_X1 U553 ( .B1(n460), .B2(n485), .A(n455), .ZN(n145) );
  OAI21_X1 U554 ( .B1(n460), .B2(n480), .A(n456), .ZN(n144) );
  OAI21_X1 U555 ( .B1(n460), .B2(n481), .A(n457), .ZN(n143) );
  NAND2_X1 U556 ( .A1(in[4]), .A2(n451), .ZN(n458) );
  OAI21_X1 U557 ( .B1(n460), .B2(n469), .A(n458), .ZN(n142) );
  OAI21_X1 U558 ( .B1(n460), .B2(n470), .A(n447), .ZN(n141) );
  OAI21_X1 U559 ( .B1(n460), .B2(n464), .A(n448), .ZN(n140) );
  AOI22_X1 U560 ( .A1(in1[0]), .A2(n452), .B1(in[0]), .B2(n451), .ZN(n532) );
  OAI21_X1 U561 ( .B1(n460), .B2(n493), .A(n449), .ZN(n138) );
  OAI21_X1 U562 ( .B1(n460), .B2(n491), .A(n450), .ZN(n137) );
  AOI22_X1 U563 ( .A1(in2[6]), .A2(n452), .B1(in[12]), .B2(n451), .ZN(n533) );
  OAI21_X1 U564 ( .B1(n475), .B2(n460), .A(n453), .ZN(n135) );
  OAI21_X1 U565 ( .B1(n460), .B2(n482), .A(n454), .ZN(n134) );
  OAI21_X1 U566 ( .B1(n460), .B2(n471), .A(n455), .ZN(n133) );
  OAI21_X1 U567 ( .B1(n460), .B2(n472), .A(n456), .ZN(n132) );
  OAI21_X1 U568 ( .B1(n460), .B2(n465), .A(n457), .ZN(n131) );
  OAI21_X1 U569 ( .B1(n460), .B2(n466), .A(n458), .ZN(n130) );
  OAI21_X1 U570 ( .B1(n460), .B2(n494), .A(n459), .ZN(n129) );
endmodule

