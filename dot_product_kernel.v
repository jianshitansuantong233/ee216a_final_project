`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2021 03:46:44 PM
// Design Name: 
// Module Name: dot_product_kernel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
parameter MULTI_DELAY = 6;
parameter ADDER_DELAY = 2;
parameter finish_cycle = MULTI_DELAY+ADDER_DELAY+ADDER_DELAY+ADDER_DELAY+ADDER_DELAY+ADDER_DELAY+ADDER_DELAY+ADDER_DELAY+ADDER_DELAY;

module dot_product_kernel(input clk,
input GlobalReset,
input Input_Valid,
input [1959:0] pixel,
input [3723:0] weight,
output [25:0] result,
output valid);
    wire [25:0] temp_0, temp_1, temp_2, temp_3, temp_4, temp_5, temp_6, temp_7, temp_8, temp_9, temp_10;
    wire [25:0] temp_11, temp_12, temp_13, temp_14, temp_15, temp_16, temp_17, temp_18, temp_19, temp_20;
    wire [25:0] temp_21, temp_22, temp_23, temp_24, temp_25, temp_26, temp_27, temp_28, temp_29, temp_30; 
    wire [25:0] temp_31, temp_32, temp_33, temp_34, temp_35, temp_36, temp_37, temp_38, temp_39, temp_40; 
    wire [25:0] temp_41, temp_42, temp_43, temp_44, temp_45, temp_46, temp_47, temp_48, temp_49, temp_50; 
    wire [25:0] temp_51, temp_52, temp_53, temp_54, temp_55, temp_56, temp_57, temp_58, temp_59, temp_60; 
    wire [25:0] temp_61, temp_62, temp_63, temp_64, temp_65, temp_66, temp_67, temp_68, temp_69, temp_70; 
    wire [25:0] temp_71, temp_72, temp_73, temp_74, temp_75, temp_76, temp_77, temp_78, temp_79, temp_80; 
    wire [25:0] temp_81, temp_82, temp_83, temp_84, temp_85, temp_86, temp_87, temp_88, temp_89, temp_90; 
    wire [25:0] temp_91, temp_92, temp_93, temp_94, temp_95, temp_96, temp_97, temp_98, temp_99, temp_100; 
    wire [25:0] temp_101, temp_102, temp_103, temp_104, temp_105, temp_106, temp_107, temp_108, temp_109, temp_110;
    wire [25:0] temp_111, temp_112, temp_113, temp_114, temp_115, temp_116, temp_117, temp_118, temp_119, temp_120; 
    wire [25:0] temp_121, temp_122, temp_123, temp_124, temp_125, temp_126, temp_127, temp_128, temp_129, temp_130; 
    wire [25:0] temp_131, temp_132, temp_133, temp_134, temp_135, temp_136, temp_137, temp_138, temp_139, temp_140; 
    wire [25:0] temp_141, temp_142, temp_143, temp_144, temp_145, temp_146, temp_147, temp_148, temp_149, temp_150; 
    wire [25:0] temp_151, temp_152, temp_153, temp_154, temp_155, temp_156, temp_157, temp_158, temp_159, temp_160; 
    wire [25:0] temp_161, temp_162, temp_163, temp_164, temp_165, temp_166, temp_167, temp_168, temp_169, temp_170; 
    wire [25:0] temp_171, temp_172, temp_173, temp_174, temp_175, temp_176, temp_177, temp_178, temp_179, temp_180; 
    wire [25:0] temp_181, temp_182, temp_183, temp_184, temp_185, temp_186, temp_187, temp_188, temp_189, temp_190; 
    wire [25:0] temp_191, temp_192, temp_193, temp_194, temp_195;
    FixedPointMultiplier f0(clk,GlobalReset,weight[18:0],pixel[9:0],temp_0);
    FixedPointMultiplier f1(clk,GlobalReset,weight[37:19],pixel[19:10],temp_1);
    FixedPointMultiplier f2(clk,GlobalReset,weight[56:38],pixel[29:20],temp_2);
    FixedPointMultiplier f3(clk,GlobalReset,weight[75:57],pixel[39:30],temp_3);
    FixedPointMultiplier f4(clk,GlobalReset,weight[94:76],pixel[49:40],temp_4);
    FixedPointMultiplier f5(clk,GlobalReset,weight[113:95],pixel[59:50],temp_5);
    FixedPointMultiplier f6(clk,GlobalReset,weight[132:114],pixel[69:60],temp_6);
    FixedPointMultiplier f7(clk,GlobalReset,weight[151:133],pixel[79:70],temp_7);
    FixedPointMultiplier f8(clk,GlobalReset,weight[170:152],pixel[89:80],temp_8);
    FixedPointMultiplier f9(clk,GlobalReset,weight[189:171],pixel[99:90],temp_9);
    FixedPointMultiplier f10(clk,GlobalReset,weight[208:190],pixel[109:100],temp_10);
    FixedPointMultiplier f11(clk,GlobalReset,weight[227:209],pixel[119:110],temp_11);
    FixedPointMultiplier f12(clk,GlobalReset,weight[246:228],pixel[129:120],temp_12);
    FixedPointMultiplier f13(clk,GlobalReset,weight[265:247],pixel[139:130],temp_13);
    FixedPointMultiplier f14(clk,GlobalReset,weight[284:266],pixel[149:140],temp_14);
    FixedPointMultiplier f15(clk,GlobalReset,weight[303:285],pixel[159:150],temp_15);
    FixedPointMultiplier f16(clk,GlobalReset,weight[322:304],pixel[169:160],temp_16);
    FixedPointMultiplier f17(clk,GlobalReset,weight[341:323],pixel[179:170],temp_17);
    FixedPointMultiplier f18(clk,GlobalReset,weight[360:342],pixel[189:180],temp_18);
    FixedPointMultiplier f19(clk,GlobalReset,weight[379:361],pixel[199:190],temp_19);
    FixedPointMultiplier f20(clk,GlobalReset,weight[398:380],pixel[209:200],temp_20);
    FixedPointMultiplier f21(clk,GlobalReset,weight[417:399],pixel[219:210],temp_21);
    FixedPointMultiplier f22(clk,GlobalReset,weight[436:418],pixel[229:220],temp_22);
    FixedPointMultiplier f23(clk,GlobalReset,weight[455:437],pixel[239:230],temp_23);
    FixedPointMultiplier f24(clk,GlobalReset,weight[474:456],pixel[249:240],temp_24);
    FixedPointMultiplier f25(clk,GlobalReset,weight[493:475],pixel[259:250],temp_25);
    FixedPointMultiplier f26(clk,GlobalReset,weight[512:494],pixel[269:260],temp_26);
    FixedPointMultiplier f27(clk,GlobalReset,weight[531:513],pixel[279:270],temp_27);
    FixedPointMultiplier f28(clk,GlobalReset,weight[550:532],pixel[289:280],temp_28);
    FixedPointMultiplier f29(clk,GlobalReset,weight[569:551],pixel[299:290],temp_29);
    FixedPointMultiplier f30(clk,GlobalReset,weight[588:570],pixel[309:300],temp_30);
    FixedPointMultiplier f31(clk,GlobalReset,weight[607:589],pixel[319:310],temp_31);
    FixedPointMultiplier f32(clk,GlobalReset,weight[626:608],pixel[329:320],temp_32);
    FixedPointMultiplier f33(clk,GlobalReset,weight[645:627],pixel[339:330],temp_33);
    FixedPointMultiplier f34(clk,GlobalReset,weight[664:646],pixel[349:340],temp_34);
    FixedPointMultiplier f35(clk,GlobalReset,weight[683:665],pixel[359:350],temp_35);
    FixedPointMultiplier f36(clk,GlobalReset,weight[702:684],pixel[369:360],temp_36);
    FixedPointMultiplier f37(clk,GlobalReset,weight[721:703],pixel[379:370],temp_37);
    FixedPointMultiplier f38(clk,GlobalReset,weight[740:722],pixel[389:380],temp_38);
    FixedPointMultiplier f39(clk,GlobalReset,weight[759:741],pixel[399:390],temp_39);
    FixedPointMultiplier f40(clk,GlobalReset,weight[778:760],pixel[409:400],temp_40);
    FixedPointMultiplier f41(clk,GlobalReset,weight[797:779],pixel[419:410],temp_41);
    FixedPointMultiplier f42(clk,GlobalReset,weight[816:798],pixel[429:420],temp_42);
    FixedPointMultiplier f43(clk,GlobalReset,weight[835:817],pixel[439:430],temp_43);
    FixedPointMultiplier f44(clk,GlobalReset,weight[854:836],pixel[449:440],temp_44);
    FixedPointMultiplier f45(clk,GlobalReset,weight[873:855],pixel[459:450],temp_45);
    FixedPointMultiplier f46(clk,GlobalReset,weight[892:874],pixel[469:460],temp_46);
    FixedPointMultiplier f47(clk,GlobalReset,weight[911:893],pixel[479:470],temp_47);
    FixedPointMultiplier f48(clk,GlobalReset,weight[930:912],pixel[489:480],temp_48);
    FixedPointMultiplier f49(clk,GlobalReset,weight[949:931],pixel[499:490],temp_49);
    FixedPointMultiplier f50(clk,GlobalReset,weight[968:950],pixel[509:500],temp_50);
    FixedPointMultiplier f51(clk,GlobalReset,weight[987:969],pixel[519:510],temp_51);
    FixedPointMultiplier f52(clk,GlobalReset,weight[1006:988],pixel[529:520],temp_52);
    FixedPointMultiplier f53(clk,GlobalReset,weight[1025:1007],pixel[539:530],temp_53);
    FixedPointMultiplier f54(clk,GlobalReset,weight[1044:1026],pixel[549:540],temp_54);
    FixedPointMultiplier f55(clk,GlobalReset,weight[1063:1045],pixel[559:550],temp_55);
    FixedPointMultiplier f56(clk,GlobalReset,weight[1082:1064],pixel[569:560],temp_56);
    FixedPointMultiplier f57(clk,GlobalReset,weight[1101:1083],pixel[579:570],temp_57);
    FixedPointMultiplier f58(clk,GlobalReset,weight[1120:1102],pixel[589:580],temp_58);
    FixedPointMultiplier f59(clk,GlobalReset,weight[1139:1121],pixel[599:590],temp_59);
    FixedPointMultiplier f60(clk,GlobalReset,weight[1158:1140],pixel[609:600],temp_60);
    FixedPointMultiplier f61(clk,GlobalReset,weight[1177:1159],pixel[619:610],temp_61);
    FixedPointMultiplier f62(clk,GlobalReset,weight[1196:1178],pixel[629:620],temp_62);
    FixedPointMultiplier f63(clk,GlobalReset,weight[1215:1197],pixel[639:630],temp_63);
    FixedPointMultiplier f64(clk,GlobalReset,weight[1234:1216],pixel[649:640],temp_64);
    FixedPointMultiplier f65(clk,GlobalReset,weight[1253:1235],pixel[659:650],temp_65);
    FixedPointMultiplier f66(clk,GlobalReset,weight[1272:1254],pixel[669:660],temp_66);
    FixedPointMultiplier f67(clk,GlobalReset,weight[1291:1273],pixel[679:670],temp_67);
    FixedPointMultiplier f68(clk,GlobalReset,weight[1310:1292],pixel[689:680],temp_68);
    FixedPointMultiplier f69(clk,GlobalReset,weight[1329:1311],pixel[699:690],temp_69);
    FixedPointMultiplier f70(clk,GlobalReset,weight[1348:1330],pixel[709:700],temp_70);
    FixedPointMultiplier f71(clk,GlobalReset,weight[1367:1349],pixel[719:710],temp_71);
    FixedPointMultiplier f72(clk,GlobalReset,weight[1386:1368],pixel[729:720],temp_72);
    FixedPointMultiplier f73(clk,GlobalReset,weight[1405:1387],pixel[739:730],temp_73);
    FixedPointMultiplier f74(clk,GlobalReset,weight[1424:1406],pixel[749:740],temp_74);
    FixedPointMultiplier f75(clk,GlobalReset,weight[1443:1425],pixel[759:750],temp_75);
    FixedPointMultiplier f76(clk,GlobalReset,weight[1462:1444],pixel[769:760],temp_76);
    FixedPointMultiplier f77(clk,GlobalReset,weight[1481:1463],pixel[779:770],temp_77);
    FixedPointMultiplier f78(clk,GlobalReset,weight[1500:1482],pixel[789:780],temp_78);
    FixedPointMultiplier f79(clk,GlobalReset,weight[1519:1501],pixel[799:790],temp_79);
    FixedPointMultiplier f80(clk,GlobalReset,weight[1538:1520],pixel[809:800],temp_80);
    FixedPointMultiplier f81(clk,GlobalReset,weight[1557:1539],pixel[819:810],temp_81);
    FixedPointMultiplier f82(clk,GlobalReset,weight[1576:1558],pixel[829:820],temp_82);
    FixedPointMultiplier f83(clk,GlobalReset,weight[1595:1577],pixel[839:830],temp_83);
    FixedPointMultiplier f84(clk,GlobalReset,weight[1614:1596],pixel[849:840],temp_84);
    FixedPointMultiplier f85(clk,GlobalReset,weight[1633:1615],pixel[859:850],temp_85);
    FixedPointMultiplier f86(clk,GlobalReset,weight[1652:1634],pixel[869:860],temp_86);
    FixedPointMultiplier f87(clk,GlobalReset,weight[1671:1653],pixel[879:870],temp_87);
    FixedPointMultiplier f88(clk,GlobalReset,weight[1690:1672],pixel[889:880],temp_88);
    FixedPointMultiplier f89(clk,GlobalReset,weight[1709:1691],pixel[899:890],temp_89);
    FixedPointMultiplier f90(clk,GlobalReset,weight[1728:1710],pixel[909:900],temp_90);
    FixedPointMultiplier f91(clk,GlobalReset,weight[1747:1729],pixel[919:910],temp_91);
    FixedPointMultiplier f92(clk,GlobalReset,weight[1766:1748],pixel[929:920],temp_92);
    FixedPointMultiplier f93(clk,GlobalReset,weight[1785:1767],pixel[939:930],temp_93);
    FixedPointMultiplier f94(clk,GlobalReset,weight[1804:1786],pixel[949:940],temp_94);
    FixedPointMultiplier f95(clk,GlobalReset,weight[1823:1805],pixel[959:950],temp_95);
    FixedPointMultiplier f96(clk,GlobalReset,weight[1842:1824],pixel[969:960],temp_96);
    FixedPointMultiplier f97(clk,GlobalReset,weight[1861:1843],pixel[979:970],temp_97);
    FixedPointMultiplier f98(clk,GlobalReset,weight[1880:1862],pixel[989:980],temp_98);
    FixedPointMultiplier f99(clk,GlobalReset,weight[1899:1881],pixel[999:990],temp_99);
    FixedPointMultiplier f100(clk,GlobalReset,weight[1918:1900],pixel[1009:1000],temp_100);
    FixedPointMultiplier f101(clk,GlobalReset,weight[1937:1919],pixel[1019:1010],temp_101);
    FixedPointMultiplier f102(clk,GlobalReset,weight[1956:1938],pixel[1029:1020],temp_102);
    FixedPointMultiplier f103(clk,GlobalReset,weight[1975:1957],pixel[1039:1030],temp_103);
    FixedPointMultiplier f104(clk,GlobalReset,weight[1994:1976],pixel[1049:1040],temp_104);
    FixedPointMultiplier f105(clk,GlobalReset,weight[2013:1995],pixel[1059:1050],temp_105);
    FixedPointMultiplier f106(clk,GlobalReset,weight[2032:2014],pixel[1069:1060],temp_106);
    FixedPointMultiplier f107(clk,GlobalReset,weight[2051:2033],pixel[1079:1070],temp_107);
    FixedPointMultiplier f108(clk,GlobalReset,weight[2070:2052],pixel[1089:1080],temp_108);
    FixedPointMultiplier f109(clk,GlobalReset,weight[2089:2071],pixel[1099:1090],temp_109);
    FixedPointMultiplier f110(clk,GlobalReset,weight[2108:2090],pixel[1109:1100],temp_110);
    FixedPointMultiplier f111(clk,GlobalReset,weight[2127:2109],pixel[1119:1110],temp_111);
    FixedPointMultiplier f112(clk,GlobalReset,weight[2146:2128],pixel[1129:1120],temp_112);
    FixedPointMultiplier f113(clk,GlobalReset,weight[2165:2147],pixel[1139:1130],temp_113);
    FixedPointMultiplier f114(clk,GlobalReset,weight[2184:2166],pixel[1149:1140],temp_114);
    FixedPointMultiplier f115(clk,GlobalReset,weight[2203:2185],pixel[1159:1150],temp_115);
    FixedPointMultiplier f116(clk,GlobalReset,weight[2222:2204],pixel[1169:1160],temp_116);
    FixedPointMultiplier f117(clk,GlobalReset,weight[2241:2223],pixel[1179:1170],temp_117);
    FixedPointMultiplier f118(clk,GlobalReset,weight[2260:2242],pixel[1189:1180],temp_118);
    FixedPointMultiplier f119(clk,GlobalReset,weight[2279:2261],pixel[1199:1190],temp_119);
    FixedPointMultiplier f120(clk,GlobalReset,weight[2298:2280],pixel[1209:1200],temp_120);
    FixedPointMultiplier f121(clk,GlobalReset,weight[2317:2299],pixel[1219:1210],temp_121);
    FixedPointMultiplier f122(clk,GlobalReset,weight[2336:2318],pixel[1229:1220],temp_122);
    FixedPointMultiplier f123(clk,GlobalReset,weight[2355:2337],pixel[1239:1230],temp_123);
    FixedPointMultiplier f124(clk,GlobalReset,weight[2374:2356],pixel[1249:1240],temp_124);
    FixedPointMultiplier f125(clk,GlobalReset,weight[2393:2375],pixel[1259:1250],temp_125);
    FixedPointMultiplier f126(clk,GlobalReset,weight[2412:2394],pixel[1269:1260],temp_126);
    FixedPointMultiplier f127(clk,GlobalReset,weight[2431:2413],pixel[1279:1270],temp_127);
    FixedPointMultiplier f128(clk,GlobalReset,weight[2450:2432],pixel[1289:1280],temp_128);
    FixedPointMultiplier f129(clk,GlobalReset,weight[2469:2451],pixel[1299:1290],temp_129);
    FixedPointMultiplier f130(clk,GlobalReset,weight[2488:2470],pixel[1309:1300],temp_130);
    FixedPointMultiplier f131(clk,GlobalReset,weight[2507:2489],pixel[1319:1310],temp_131);
    FixedPointMultiplier f132(clk,GlobalReset,weight[2526:2508],pixel[1329:1320],temp_132);
    FixedPointMultiplier f133(clk,GlobalReset,weight[2545:2527],pixel[1339:1330],temp_133);
    FixedPointMultiplier f134(clk,GlobalReset,weight[2564:2546],pixel[1349:1340],temp_134);
    FixedPointMultiplier f135(clk,GlobalReset,weight[2583:2565],pixel[1359:1350],temp_135);
    FixedPointMultiplier f136(clk,GlobalReset,weight[2602:2584],pixel[1369:1360],temp_136);
    FixedPointMultiplier f137(clk,GlobalReset,weight[2621:2603],pixel[1379:1370],temp_137);
    FixedPointMultiplier f138(clk,GlobalReset,weight[2640:2622],pixel[1389:1380],temp_138);
    FixedPointMultiplier f139(clk,GlobalReset,weight[2659:2641],pixel[1399:1390],temp_139);
    FixedPointMultiplier f140(clk,GlobalReset,weight[2678:2660],pixel[1409:1400],temp_140);
    FixedPointMultiplier f141(clk,GlobalReset,weight[2697:2679],pixel[1419:1410],temp_141);
    FixedPointMultiplier f142(clk,GlobalReset,weight[2716:2698],pixel[1429:1420],temp_142);
    FixedPointMultiplier f143(clk,GlobalReset,weight[2735:2717],pixel[1439:1430],temp_143);
    FixedPointMultiplier f144(clk,GlobalReset,weight[2754:2736],pixel[1449:1440],temp_144);
    FixedPointMultiplier f145(clk,GlobalReset,weight[2773:2755],pixel[1459:1450],temp_145);
    FixedPointMultiplier f146(clk,GlobalReset,weight[2792:2774],pixel[1469:1460],temp_146);
    FixedPointMultiplier f147(clk,GlobalReset,weight[2811:2793],pixel[1479:1470],temp_147);
    FixedPointMultiplier f148(clk,GlobalReset,weight[2830:2812],pixel[1489:1480],temp_148);
    FixedPointMultiplier f149(clk,GlobalReset,weight[2849:2831],pixel[1499:1490],temp_149);
    FixedPointMultiplier f150(clk,GlobalReset,weight[2868:2850],pixel[1509:1500],temp_150);
    FixedPointMultiplier f151(clk,GlobalReset,weight[2887:2869],pixel[1519:1510],temp_151);
    FixedPointMultiplier f152(clk,GlobalReset,weight[2906:2888],pixel[1529:1520],temp_152);
    FixedPointMultiplier f153(clk,GlobalReset,weight[2925:2907],pixel[1539:1530],temp_153);
    FixedPointMultiplier f154(clk,GlobalReset,weight[2944:2926],pixel[1549:1540],temp_154);
    FixedPointMultiplier f155(clk,GlobalReset,weight[2963:2945],pixel[1559:1550],temp_155);
    FixedPointMultiplier f156(clk,GlobalReset,weight[2982:2964],pixel[1569:1560],temp_156);
    FixedPointMultiplier f157(clk,GlobalReset,weight[3001:2983],pixel[1579:1570],temp_157);
    FixedPointMultiplier f158(clk,GlobalReset,weight[3020:3002],pixel[1589:1580],temp_158);
    FixedPointMultiplier f159(clk,GlobalReset,weight[3039:3021],pixel[1599:1590],temp_159);
    FixedPointMultiplier f160(clk,GlobalReset,weight[3058:3040],pixel[1609:1600],temp_160);
    FixedPointMultiplier f161(clk,GlobalReset,weight[3077:3059],pixel[1619:1610],temp_161);
    FixedPointMultiplier f162(clk,GlobalReset,weight[3096:3078],pixel[1629:1620],temp_162);
    FixedPointMultiplier f163(clk,GlobalReset,weight[3115:3097],pixel[1639:1630],temp_163);
    FixedPointMultiplier f164(clk,GlobalReset,weight[3134:3116],pixel[1649:1640],temp_164);
    FixedPointMultiplier f165(clk,GlobalReset,weight[3153:3135],pixel[1659:1650],temp_165);
    FixedPointMultiplier f166(clk,GlobalReset,weight[3172:3154],pixel[1669:1660],temp_166);
    FixedPointMultiplier f167(clk,GlobalReset,weight[3191:3173],pixel[1679:1670],temp_167);
    FixedPointMultiplier f168(clk,GlobalReset,weight[3210:3192],pixel[1689:1680],temp_168);
    FixedPointMultiplier f169(clk,GlobalReset,weight[3229:3211],pixel[1699:1690],temp_169);
    FixedPointMultiplier f170(clk,GlobalReset,weight[3248:3230],pixel[1709:1700],temp_170);
    FixedPointMultiplier f171(clk,GlobalReset,weight[3267:3249],pixel[1719:1710],temp_171);
    FixedPointMultiplier f172(clk,GlobalReset,weight[3286:3268],pixel[1729:1720],temp_172);
    FixedPointMultiplier f173(clk,GlobalReset,weight[3305:3287],pixel[1739:1730],temp_173);
    FixedPointMultiplier f174(clk,GlobalReset,weight[3324:3306],pixel[1749:1740],temp_174);
    FixedPointMultiplier f175(clk,GlobalReset,weight[3343:3325],pixel[1759:1750],temp_175);
    FixedPointMultiplier f176(clk,GlobalReset,weight[3362:3344],pixel[1769:1760],temp_176);
    FixedPointMultiplier f177(clk,GlobalReset,weight[3381:3363],pixel[1779:1770],temp_177);
    FixedPointMultiplier f178(clk,GlobalReset,weight[3400:3382],pixel[1789:1780],temp_178);
    FixedPointMultiplier f179(clk,GlobalReset,weight[3419:3401],pixel[1799:1790],temp_179);
    FixedPointMultiplier f180(clk,GlobalReset,weight[3438:3420],pixel[1809:1800],temp_180);
    FixedPointMultiplier f181(clk,GlobalReset,weight[3457:3439],pixel[1819:1810],temp_181);
    FixedPointMultiplier f182(clk,GlobalReset,weight[3476:3458],pixel[1829:1820],temp_182);
    FixedPointMultiplier f183(clk,GlobalReset,weight[3495:3477],pixel[1839:1830],temp_183);
    FixedPointMultiplier f184(clk,GlobalReset,weight[3514:3496],pixel[1849:1840],temp_184);
    FixedPointMultiplier f185(clk,GlobalReset,weight[3533:3515],pixel[1859:1850],temp_185);
    FixedPointMultiplier f186(clk,GlobalReset,weight[3552:3534],pixel[1869:1860],temp_186);
    FixedPointMultiplier f187(clk,GlobalReset,weight[3571:3553],pixel[1879:1870],temp_187);
    FixedPointMultiplier f188(clk,GlobalReset,weight[3590:3572],pixel[1889:1880],temp_188);
    FixedPointMultiplier f189(clk,GlobalReset,weight[3609:3591],pixel[1899:1890],temp_189);
    FixedPointMultiplier f190(clk,GlobalReset,weight[3628:3610],pixel[1909:1900],temp_190);
    FixedPointMultiplier f191(clk,GlobalReset,weight[3647:3629],pixel[1919:1910],temp_191);
    FixedPointMultiplier f192(clk,GlobalReset,weight[3666:3648],pixel[1929:1920],temp_192);
    FixedPointMultiplier f193(clk,GlobalReset,weight[3685:3667],pixel[1939:1930],temp_193);
    FixedPointMultiplier f194(clk,GlobalReset,weight[3704:3686],pixel[1949:1940],temp_194);
    FixedPointMultiplier f195(clk,GlobalReset,weight[3723:3705],pixel[1959:1950],temp_195);
    wire [25:0] reduction_0, reduction_1, reduction_2, reduction_3, reduction_4, reduction_5, reduction_6, reduction_7, reduction_8, reduction_9, reduction_10; 
    wire [25:0] reduction_11, reduction_12, reduction_13, reduction_14, reduction_15, reduction_16, reduction_17, reduction_18, reduction_19, reduction_20; 
    wire [25:0] reduction_21, reduction_22, reduction_23, reduction_24, reduction_25, reduction_26, reduction_27, reduction_28, reduction_29, reduction_30; 
    wire [25:0] reduction_31, reduction_32, reduction_33, reduction_34, reduction_35, reduction_36, reduction_37, reduction_38, reduction_39, reduction_40; 
    wire [25:0] reduction_41, reduction_42, reduction_43, reduction_44, reduction_45, reduction_46, reduction_47, reduction_48, reduction_49, reduction_50; 
    wire [25:0] reduction_51, reduction_52, reduction_53, reduction_54, reduction_55, reduction_56, reduction_57, reduction_58, reduction_59, reduction_60; 
    wire [25:0] reduction_61, reduction_62, reduction_63, reduction_64, reduction_65, reduction_66, reduction_67, reduction_68, reduction_69, reduction_70; 
    wire [25:0] reduction_71, reduction_72, reduction_73, reduction_74, reduction_75, reduction_76, reduction_77, reduction_78, reduction_79, reduction_80; 
    wire [25:0] reduction_81, reduction_82, reduction_83, reduction_84, reduction_85, reduction_86, reduction_87, reduction_88, reduction_89, reduction_90; 
    wire [25:0] reduction_91, reduction_92, reduction_93, reduction_94, reduction_95, reduction_96, reduction_97;
    FixedPointAdder f196(clk,GlobalReset,temp_0,temp_1,reduction_0);
    FixedPointAdder f197(clk,GlobalReset,temp_2,temp_3,reduction_1);
    FixedPointAdder f198(clk,GlobalReset,temp_4,temp_5,reduction_2);
    FixedPointAdder f199(clk,GlobalReset,temp_6,temp_7,reduction_3);
    FixedPointAdder f200(clk,GlobalReset,temp_8,temp_9,reduction_4);
    FixedPointAdder f201(clk,GlobalReset,temp_10,temp_11,reduction_5);
    FixedPointAdder f202(clk,GlobalReset,temp_12,temp_13,reduction_6);
    FixedPointAdder f203(clk,GlobalReset,temp_14,temp_15,reduction_7);
    FixedPointAdder f204(clk,GlobalReset,temp_16,temp_17,reduction_8);
    FixedPointAdder f205(clk,GlobalReset,temp_18,temp_19,reduction_9);
    FixedPointAdder f206(clk,GlobalReset,temp_20,temp_21,reduction_10);
    FixedPointAdder f207(clk,GlobalReset,temp_22,temp_23,reduction_11);
    FixedPointAdder f208(clk,GlobalReset,temp_24,temp_25,reduction_12);
    FixedPointAdder f209(clk,GlobalReset,temp_26,temp_27,reduction_13);
    FixedPointAdder f210(clk,GlobalReset,temp_28,temp_29,reduction_14);
    FixedPointAdder f211(clk,GlobalReset,temp_30,temp_31,reduction_15);
    FixedPointAdder f212(clk,GlobalReset,temp_32,temp_33,reduction_16);
    FixedPointAdder f213(clk,GlobalReset,temp_34,temp_35,reduction_17);
    FixedPointAdder f214(clk,GlobalReset,temp_36,temp_37,reduction_18);
    FixedPointAdder f215(clk,GlobalReset,temp_38,temp_39,reduction_19);
    FixedPointAdder f216(clk,GlobalReset,temp_40,temp_41,reduction_20);
    FixedPointAdder f217(clk,GlobalReset,temp_42,temp_43,reduction_21);
    FixedPointAdder f218(clk,GlobalReset,temp_44,temp_45,reduction_22);
    FixedPointAdder f219(clk,GlobalReset,temp_46,temp_47,reduction_23);
    FixedPointAdder f220(clk,GlobalReset,temp_48,temp_49,reduction_24);
    FixedPointAdder f221(clk,GlobalReset,temp_50,temp_51,reduction_25);
    FixedPointAdder f222(clk,GlobalReset,temp_52,temp_53,reduction_26);
    FixedPointAdder f223(clk,GlobalReset,temp_54,temp_55,reduction_27);
    FixedPointAdder f224(clk,GlobalReset,temp_56,temp_57,reduction_28);
    FixedPointAdder f225(clk,GlobalReset,temp_58,temp_59,reduction_29);
    FixedPointAdder f226(clk,GlobalReset,temp_60,temp_61,reduction_30);
    FixedPointAdder f227(clk,GlobalReset,temp_62,temp_63,reduction_31);
    FixedPointAdder f228(clk,GlobalReset,temp_64,temp_65,reduction_32);
    FixedPointAdder f229(clk,GlobalReset,temp_66,temp_67,reduction_33);
    FixedPointAdder f230(clk,GlobalReset,temp_68,temp_69,reduction_34);
    FixedPointAdder f231(clk,GlobalReset,temp_70,temp_71,reduction_35);
    FixedPointAdder f232(clk,GlobalReset,temp_72,temp_73,reduction_36);
    FixedPointAdder f233(clk,GlobalReset,temp_74,temp_75,reduction_37);
    FixedPointAdder f234(clk,GlobalReset,temp_76,temp_77,reduction_38);
    FixedPointAdder f235(clk,GlobalReset,temp_78,temp_79,reduction_39);
    FixedPointAdder f236(clk,GlobalReset,temp_80,temp_81,reduction_40);
    FixedPointAdder f237(clk,GlobalReset,temp_82,temp_83,reduction_41);
    FixedPointAdder f238(clk,GlobalReset,temp_84,temp_85,reduction_42);
    FixedPointAdder f239(clk,GlobalReset,temp_86,temp_87,reduction_43);
    FixedPointAdder f240(clk,GlobalReset,temp_88,temp_89,reduction_44);
    FixedPointAdder f241(clk,GlobalReset,temp_90,temp_91,reduction_45);
    FixedPointAdder f242(clk,GlobalReset,temp_92,temp_93,reduction_46);
    FixedPointAdder f243(clk,GlobalReset,temp_94,temp_95,reduction_47);
    FixedPointAdder f244(clk,GlobalReset,temp_96,temp_97,reduction_48);
    FixedPointAdder f245(clk,GlobalReset,temp_98,temp_99,reduction_49);
    FixedPointAdder f246(clk,GlobalReset,temp_100,temp_101,reduction_50);
    FixedPointAdder f247(clk,GlobalReset,temp_102,temp_103,reduction_51);
    FixedPointAdder f248(clk,GlobalReset,temp_104,temp_105,reduction_52);
    FixedPointAdder f249(clk,GlobalReset,temp_106,temp_107,reduction_53);
    FixedPointAdder f250(clk,GlobalReset,temp_108,temp_109,reduction_54);
    FixedPointAdder f251(clk,GlobalReset,temp_110,temp_111,reduction_55);
    FixedPointAdder f252(clk,GlobalReset,temp_112,temp_113,reduction_56);
    FixedPointAdder f253(clk,GlobalReset,temp_114,temp_115,reduction_57);
    FixedPointAdder f254(clk,GlobalReset,temp_116,temp_117,reduction_58);
    FixedPointAdder f255(clk,GlobalReset,temp_118,temp_119,reduction_59);
    FixedPointAdder f256(clk,GlobalReset,temp_120,temp_121,reduction_60);
    FixedPointAdder f257(clk,GlobalReset,temp_122,temp_123,reduction_61);
    FixedPointAdder f258(clk,GlobalReset,temp_124,temp_125,reduction_62);
    FixedPointAdder f259(clk,GlobalReset,temp_126,temp_127,reduction_63);
    FixedPointAdder f260(clk,GlobalReset,temp_128,temp_129,reduction_64);
    FixedPointAdder f261(clk,GlobalReset,temp_130,temp_131,reduction_65);
    FixedPointAdder f262(clk,GlobalReset,temp_132,temp_133,reduction_66);
    FixedPointAdder f263(clk,GlobalReset,temp_134,temp_135,reduction_67);
    FixedPointAdder f264(clk,GlobalReset,temp_136,temp_137,reduction_68);
    FixedPointAdder f265(clk,GlobalReset,temp_138,temp_139,reduction_69);
    FixedPointAdder f266(clk,GlobalReset,temp_140,temp_141,reduction_70);
    FixedPointAdder f267(clk,GlobalReset,temp_142,temp_143,reduction_71);
    FixedPointAdder f268(clk,GlobalReset,temp_144,temp_145,reduction_72);
    FixedPointAdder f269(clk,GlobalReset,temp_146,temp_147,reduction_73);
    FixedPointAdder f270(clk,GlobalReset,temp_148,temp_149,reduction_74);
    FixedPointAdder f271(clk,GlobalReset,temp_150,temp_151,reduction_75);
    FixedPointAdder f272(clk,GlobalReset,temp_152,temp_153,reduction_76);
    FixedPointAdder f273(clk,GlobalReset,temp_154,temp_155,reduction_77);
    FixedPointAdder f274(clk,GlobalReset,temp_156,temp_157,reduction_78);
    FixedPointAdder f275(clk,GlobalReset,temp_158,temp_159,reduction_79);
    FixedPointAdder f276(clk,GlobalReset,temp_160,temp_161,reduction_80);
    FixedPointAdder f277(clk,GlobalReset,temp_162,temp_163,reduction_81);
    FixedPointAdder f278(clk,GlobalReset,temp_164,temp_165,reduction_82);
    FixedPointAdder f279(clk,GlobalReset,temp_166,temp_167,reduction_83);
    FixedPointAdder f280(clk,GlobalReset,temp_168,temp_169,reduction_84);
    FixedPointAdder f281(clk,GlobalReset,temp_170,temp_171,reduction_85);
    FixedPointAdder f282(clk,GlobalReset,temp_172,temp_173,reduction_86);
    FixedPointAdder f283(clk,GlobalReset,temp_174,temp_175,reduction_87);
    FixedPointAdder f284(clk,GlobalReset,temp_176,temp_177,reduction_88);
    FixedPointAdder f285(clk,GlobalReset,temp_178,temp_179,reduction_89);
    FixedPointAdder f286(clk,GlobalReset,temp_180,temp_181,reduction_90);
    FixedPointAdder f287(clk,GlobalReset,temp_182,temp_183,reduction_91);
    FixedPointAdder f288(clk,GlobalReset,temp_184,temp_185,reduction_92);
    FixedPointAdder f289(clk,GlobalReset,temp_186,temp_187,reduction_93);
    FixedPointAdder f290(clk,GlobalReset,temp_188,temp_189,reduction_94);
    FixedPointAdder f291(clk,GlobalReset,temp_190,temp_191,reduction_95);
    FixedPointAdder f292(clk,GlobalReset,temp_192,temp_193,reduction_96);
    FixedPointAdder f293(clk,GlobalReset,temp_194,temp_195,reduction_97);
    wire [25:0] ReductionII_0, ReductionII_1, ReductionII_2, ReductionII_3, ReductionII_4, ReductionII_5, ReductionII_6, ReductionII_7, ReductionII_8, ReductionII_9;
    wire [25:0] ReductionII_10, ReductionII_11, ReductionII_12, ReductionII_13, ReductionII_14, ReductionII_15, ReductionII_16, ReductionII_17, ReductionII_18;     
    wire [25:0] ReductionII_19, ReductionII_20, ReductionII_21, ReductionII_22, ReductionII_23, ReductionII_24, ReductionII_25, ReductionII_26, ReductionII_27;     
    wire [25:0] ReductionII_28, ReductionII_29, ReductionII_30, ReductionII_31, ReductionII_32, ReductionII_33, ReductionII_34, ReductionII_35, ReductionII_36;    
    wire [25:0] ReductionII_37, ReductionII_38, ReductionII_39, ReductionII_40, ReductionII_41, ReductionII_42, ReductionII_43, ReductionII_44, ReductionII_45;         
    wire [25:0] ReductionII_46, ReductionII_47, ReductionII_48;
    FixedPointAdder f294(clk,GlobalReset,reduction_0,reduction_1,ReductionII_0);
    FixedPointAdder f295(clk,GlobalReset,reduction_2,reduction_3,ReductionII_1);
    FixedPointAdder f296(clk,GlobalReset,reduction_4,reduction_5,ReductionII_2);
    FixedPointAdder f297(clk,GlobalReset,reduction_6,reduction_7,ReductionII_3);
    FixedPointAdder f298(clk,GlobalReset,reduction_8,reduction_9,ReductionII_4);
    FixedPointAdder f299(clk,GlobalReset,reduction_10,reduction_11,ReductionII_5);
    FixedPointAdder f300(clk,GlobalReset,reduction_12,reduction_13,ReductionII_6);
    FixedPointAdder f301(clk,GlobalReset,reduction_14,reduction_15,ReductionII_7);
    FixedPointAdder f302(clk,GlobalReset,reduction_16,reduction_17,ReductionII_8);
    FixedPointAdder f303(clk,GlobalReset,reduction_18,reduction_19,ReductionII_9);
    FixedPointAdder f304(clk,GlobalReset,reduction_20,reduction_21,ReductionII_10);
    FixedPointAdder f305(clk,GlobalReset,reduction_22,reduction_23,ReductionII_11);
    FixedPointAdder f306(clk,GlobalReset,reduction_24,reduction_25,ReductionII_12);
    FixedPointAdder f307(clk,GlobalReset,reduction_26,reduction_27,ReductionII_13);
    FixedPointAdder f308(clk,GlobalReset,reduction_28,reduction_29,ReductionII_14);
    FixedPointAdder f309(clk,GlobalReset,reduction_30,reduction_31,ReductionII_15);
    FixedPointAdder f310(clk,GlobalReset,reduction_32,reduction_33,ReductionII_16);
    FixedPointAdder f311(clk,GlobalReset,reduction_34,reduction_35,ReductionII_17);
    FixedPointAdder f312(clk,GlobalReset,reduction_36,reduction_37,ReductionII_18);
    FixedPointAdder f313(clk,GlobalReset,reduction_38,reduction_39,ReductionII_19);
    FixedPointAdder f314(clk,GlobalReset,reduction_40,reduction_41,ReductionII_20);
    FixedPointAdder f315(clk,GlobalReset,reduction_42,reduction_43,ReductionII_21);
    FixedPointAdder f316(clk,GlobalReset,reduction_44,reduction_45,ReductionII_22);
    FixedPointAdder f317(clk,GlobalReset,reduction_46,reduction_47,ReductionII_23);
    FixedPointAdder f318(clk,GlobalReset,reduction_48,reduction_49,ReductionII_24);
    FixedPointAdder f319(clk,GlobalReset,reduction_50,reduction_51,ReductionII_25);
    FixedPointAdder f320(clk,GlobalReset,reduction_52,reduction_53,ReductionII_26);
    FixedPointAdder f321(clk,GlobalReset,reduction_54,reduction_55,ReductionII_27);
    FixedPointAdder f322(clk,GlobalReset,reduction_56,reduction_57,ReductionII_28);
    FixedPointAdder f323(clk,GlobalReset,reduction_58,reduction_59,ReductionII_29);
    FixedPointAdder f324(clk,GlobalReset,reduction_60,reduction_61,ReductionII_30);
    FixedPointAdder f325(clk,GlobalReset,reduction_62,reduction_63,ReductionII_31);
    FixedPointAdder f326(clk,GlobalReset,reduction_64,reduction_65,ReductionII_32);
    FixedPointAdder f327(clk,GlobalReset,reduction_66,reduction_67,ReductionII_33);
    FixedPointAdder f328(clk,GlobalReset,reduction_68,reduction_69,ReductionII_34);
    FixedPointAdder f329(clk,GlobalReset,reduction_70,reduction_71,ReductionII_35);
    FixedPointAdder f330(clk,GlobalReset,reduction_72,reduction_73,ReductionII_36);
    FixedPointAdder f331(clk,GlobalReset,reduction_74,reduction_75,ReductionII_37);
    FixedPointAdder f332(clk,GlobalReset,reduction_76,reduction_77,ReductionII_38);
    FixedPointAdder f333(clk,GlobalReset,reduction_78,reduction_79,ReductionII_39);
    FixedPointAdder f334(clk,GlobalReset,reduction_80,reduction_81,ReductionII_40);
    FixedPointAdder f335(clk,GlobalReset,reduction_82,reduction_83,ReductionII_41);
    FixedPointAdder f336(clk,GlobalReset,reduction_84,reduction_85,ReductionII_42);
    FixedPointAdder f337(clk,GlobalReset,reduction_86,reduction_87,ReductionII_43);
    FixedPointAdder f338(clk,GlobalReset,reduction_88,reduction_89,ReductionII_44);
    FixedPointAdder f339(clk,GlobalReset,reduction_90,reduction_91,ReductionII_45);
    FixedPointAdder f340(clk,GlobalReset,reduction_92,reduction_93,ReductionII_46);
    FixedPointAdder f341(clk,GlobalReset,reduction_94,reduction_95,ReductionII_47);
    FixedPointAdder f342(clk,GlobalReset,reduction_96,reduction_97,ReductionII_48);
    wire [25:0] ReductionIII_0, ReductionIII_1, ReductionIII_2, ReductionIII_3, ReductionIII_4, ReductionIII_5, ReductionIII_6, ReductionIII_7;
    wire [25:0] ReductionIII_8, ReductionIII_9, ReductionIII_10, ReductionIII_11, ReductionIII_12, ReductionIII_13, ReductionIII_14, ReductionIII_15;
    wire [25:0] ReductionIII_16, ReductionIII_17, ReductionIII_18, ReductionIII_19, ReductionIII_20, ReductionIII_21, ReductionIII_22, ReductionIII_23;
    FixedPointAdder f343(clk,GlobalReset,ReductionII_0,ReductionII_1,ReductionIII_0);
    FixedPointAdder f344(clk,GlobalReset,ReductionII_2,ReductionII_3,ReductionIII_1);
    FixedPointAdder f345(clk,GlobalReset,ReductionII_4,ReductionII_5,ReductionIII_2);
    FixedPointAdder f346(clk,GlobalReset,ReductionII_6,ReductionII_7,ReductionIII_3);
    FixedPointAdder f347(clk,GlobalReset,ReductionII_8,ReductionII_9,ReductionIII_4);
    FixedPointAdder f348(clk,GlobalReset,ReductionII_10,ReductionII_11,ReductionIII_5);
    FixedPointAdder f349(clk,GlobalReset,ReductionII_12,ReductionII_13,ReductionIII_6);
    FixedPointAdder f350(clk,GlobalReset,ReductionII_14,ReductionII_15,ReductionIII_7);
    FixedPointAdder f351(clk,GlobalReset,ReductionII_16,ReductionII_17,ReductionIII_8);
    FixedPointAdder f352(clk,GlobalReset,ReductionII_18,ReductionII_19,ReductionIII_9);
    FixedPointAdder f353(clk,GlobalReset,ReductionII_20,ReductionII_21,ReductionIII_10);
    FixedPointAdder f354(clk,GlobalReset,ReductionII_22,ReductionII_23,ReductionIII_11);
    FixedPointAdder f355(clk,GlobalReset,ReductionII_24,ReductionII_25,ReductionIII_12);
    FixedPointAdder f356(clk,GlobalReset,ReductionII_26,ReductionII_27,ReductionIII_13);
    FixedPointAdder f357(clk,GlobalReset,ReductionII_28,ReductionII_29,ReductionIII_14);
    FixedPointAdder f358(clk,GlobalReset,ReductionII_30,ReductionII_31,ReductionIII_15);
    FixedPointAdder f359(clk,GlobalReset,ReductionII_32,ReductionII_33,ReductionIII_16);
    FixedPointAdder f360(clk,GlobalReset,ReductionII_34,ReductionII_35,ReductionIII_17);
    FixedPointAdder f361(clk,GlobalReset,ReductionII_36,ReductionII_37,ReductionIII_18);
    FixedPointAdder f362(clk,GlobalReset,ReductionII_38,ReductionII_39,ReductionIII_19);
    FixedPointAdder f363(clk,GlobalReset,ReductionII_40,ReductionII_41,ReductionIII_20);
    FixedPointAdder f364(clk,GlobalReset,ReductionII_42,ReductionII_43,ReductionIII_21);
    FixedPointAdder f365(clk,GlobalReset,ReductionII_44,ReductionII_45,ReductionIII_22);
    FixedPointAdder f366(clk,GlobalReset,ReductionII_46,ReductionII_47,ReductionIII_23);
    wire [25:0] ReductionIV_0, ReductionIV_1, ReductionIV_2, ReductionIV_3, ReductionIV_4, ReductionIV_5, ReductionIV_6;
    wire [25:0] ReductionIV_7, ReductionIV_8, ReductionIV_9, ReductionIV_10, ReductionIV_11;
    FixedPointAdder f367(clk,GlobalReset,ReductionIII_0,ReductionIII_1,ReductionIV_0);
    FixedPointAdder f368(clk,GlobalReset,ReductionIII_2,ReductionIII_3,ReductionIV_1);
    FixedPointAdder f369(clk,GlobalReset,ReductionIII_4,ReductionIII_5,ReductionIV_2);
    FixedPointAdder f370(clk,GlobalReset,ReductionIII_6,ReductionIII_7,ReductionIV_3);
    FixedPointAdder f371(clk,GlobalReset,ReductionIII_8,ReductionIII_9,ReductionIV_4);
    FixedPointAdder f372(clk,GlobalReset,ReductionIII_10,ReductionIII_11,ReductionIV_5);
    FixedPointAdder f373(clk,GlobalReset,ReductionIII_12,ReductionIII_13,ReductionIV_6);
    FixedPointAdder f374(clk,GlobalReset,ReductionIII_14,ReductionIII_15,ReductionIV_7);
    FixedPointAdder f375(clk,GlobalReset,ReductionIII_16,ReductionIII_17,ReductionIV_8);
    FixedPointAdder f376(clk,GlobalReset,ReductionIII_18,ReductionIII_19,ReductionIV_9);
    FixedPointAdder f377(clk,GlobalReset,ReductionIII_20,ReductionIII_21,ReductionIV_10);
    FixedPointAdder f378(clk,GlobalReset,ReductionIII_22,ReductionIII_23,ReductionIV_11);
    wire [25:0] ReductionV_0, ReductionV_1, ReductionV_2, ReductionV_3, ReductionV_4, ReductionV_5;
    FixedPointAdder f379(clk,GlobalReset,ReductionIV_0,ReductionIV_1,ReductionV_0);
    FixedPointAdder f380(clk,GlobalReset,ReductionIV_2,ReductionIV_3,ReductionV_1);
    FixedPointAdder f381(clk,GlobalReset,ReductionIV_4,ReductionIV_5,ReductionV_2);
    FixedPointAdder f382(clk,GlobalReset,ReductionIV_6,ReductionIV_7,ReductionV_3);
    FixedPointAdder f383(clk,GlobalReset,ReductionIV_8,ReductionIV_9,ReductionV_4);
    FixedPointAdder f384(clk,GlobalReset,ReductionIV_10,ReductionIV_11,ReductionV_5);
    wire [25:0] ReductionVI_0, ReductionVI_1, ReductionVI_2;
    FixedPointAdder f385(clk,GlobalReset,ReductionV_0,ReductionV_1,ReductionVI_0);
    FixedPointAdder f386(clk,GlobalReset,ReductionV_2,ReductionV_3,ReductionVI_1);
    FixedPointAdder f387(clk,GlobalReset,ReductionV_4,ReductionV_5,ReductionVI_2);
    wire [25:0] ReductionVII_0, ReductionVII_1;
    FixedPointAdder f388(clk,GlobalReset,ReductionVI_0,ReductionVI_1,ReductionVII_0);
    FixedPointAdder f389(clk,GlobalReset,ReductionVI_2,ReductionII_48,ReductionVII_1);
    wire [25:0] out;
    FixedPointAdder f390(clk,GlobalReset,ReductionVII_0,ReductionVII_1,out);
    assign result = out;
    reg [4:0] counter;
    always @(posedge clk) begin
        if(GlobalReset) begin
            counter<=0;
        end else if(counter==finish_cycle) begin
            counter<=0;
        end else begin
            counter<=counter+1;
        end
    end
    assign valid = (counter==finish_cycle);
endmodule