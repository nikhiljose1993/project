import 'package:flutter/material.dart';

class UiSizes {
  static late double width;
  static late double height;

  static late double height_1;
  static late double height_2;
  static late double height_4;
  static late double height_5;
  static late double height_5_8;
  static late double height_7;
  static late double height_8;
  static late double height_10;
  static late double height_12;
  static late double height_14;
  static late double height_15;
  static late double height_16;
  static late double height_18;
  static late double height_20;
  static late double height_22_5;
  static late double height_24_6;
  static late double height_26;
  static late double height_30;
  static late double height_33;
  static late double height_35;
  static late double height_40;
  static late double height_45;
  static late double height_55;
  static late double height_56;
  static late double height_60;
  static late double height_66;
  static late double height_70;
  static late double height_76;
  static late double height_80;
  static late double height_82;
  static late double height_90;
  static late double height_102_5;
  static late double height_110;
  static late double height_131;
  static late double height_140;
  static late double height_160;
  static late double height_170;
  static late double height_180;
  static late double height_200;
  static late double height_246;
  static late double height_375;
  static late double height_516_6;
  static late double height_600;
  static late double height_660;
  static late double height_700;
  static late double height_710;
  static late double height_740;
  static late double height_756;
  static late double height_765;
  static late double height_780;

  // Width expressions
  static late double width_1;
  static late double width_1_5;
  static late double width_2;
  static late double width_3;
  static late double width_4;
  static late double width_5;
  static late double width_6;
  static late double width_8;
  static late double width_10;
  static late double width_15;
  static late double width_16;
  static late double width_25;
  static late double width_30;
  static late double width_33;
  static late double width_35;
  static late double width_40;
  static late double width_45;
  static late double width_56;
  static late double width_66;
  static late double width_80;
  static late double width_100;
  static late double width_111;
  static late double width_123_4;
  static late double width_140;
  static late double width_160;
  static late double width_170;
  static late double width_180;
  static late double width_185;
  static late double width_190;
  static late double width_200;
  static late double width_241;
  static late double width_294;
  static late double width_300;
  static late double width_304;
  static late double width_320;

  static void init(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    // Height expressions
    height_1 = screenHight * 0.0012;
    height_2 = screenHight * 0.0024;
    height_4 = screenHight * 0.005;
    height_5 = screenHight * 0.006;
    height_5_8 = screenHight * 0.007;
    height_7 = screenHight * 0.0085;
    height_8 = screenHight * 0.0097;
    height_10 = screenHight * 0.012;
    height_12 = screenHight * 0.015;
    height_14 = screenHight * 0.017;
    height_15 = screenHight * 0.018;
    height_16 = screenHight * 0.0206888;
    height_18 = screenHight * 0.0216;
    height_20 = screenHight * 0.024;
    height_22_5 = screenHight * 0.027;
    height_24_6 = screenHight * 0.03;
    height_26 = screenHight * 0.0316;
    height_30 = screenHight * 0.036;
    height_33 = screenHight * 0.04;
    height_35 = screenHight * 0.0425;
    height_40 = screenHight * 0.045;
    height_45 = screenHight * 0.05476;
    height_55 = screenHight * 0.067;
    height_56 = screenHight * 0.06815;
    height_60 = screenHight * 0.073;
    height_66 = screenHight * 0.08;
    height_70 = screenHight * 0.085;
    height_76 = screenHight * 0.0921;
    height_80 = screenHight * 0.0973;
    height_82 = screenHight * 0.1;
    height_90 = screenHight * 0.1095;
    height_102_5 = screenHight * 0.123;
    height_110 = screenHight * 0.133;
    height_131 = screenHight * 0.16;
    height_140 = screenHight * 0.17;
    height_160 = screenHight * 0.1945;
    height_170 = screenHight * 0.2;
    height_180 = screenHight * 0.219;
    height_200 = screenHight * 0.243;
    height_246 = screenHight * 0.3;
    height_375 = screenHight * 0.45;
    height_516_6 = screenHight * 0.62;
    height_600 = screenHight * 0.73;
    height_660 = screenHight * 0.8;
    height_700 = screenHight * 0.85;
    height_710 = screenHight * 0.864;
    height_740 = screenHight * 0.9;
    height_756 = screenHight * 0.92;
    height_765 = screenHight * 0.93;
    height_780 = screenHight * 0.95;

    // Width expressions
    width_1 = 0.0024 * screenWidth;
    width_1_5 = 0.00364 * screenWidth;
    width_2 = 0.00486 * screenWidth;
    width_3 = 0.0072 * screenWidth;
    width_4 = 0.009 * screenWidth;
    width_5 = 0.012 * screenWidth;
    width_6 = 0.015 * screenWidth;
    width_8 = 0.02 * screenWidth;
    width_10 = 0.024 * screenWidth;
    width_15 = 0.036 * screenWidth;
    width_16 = 0.0486 * screenWidth;
    width_25 = 0.0608 * screenWidth;
    width_30 = 0.072 * screenWidth;
    width_33 = 0.08 * screenWidth;
    width_35 = 0.085 * screenWidth;
    width_40 = 0.0972 * screenWidth;
    width_45 = 0.109 * screenWidth;
    width_56 = 0.1361 * screenWidth;
    width_66 = 0.16 * screenWidth;
    width_80 = 0.1944 * screenWidth;
    width_100 = 0.243 * screenWidth;
    width_111 = 0.27 * screenWidth;
    width_123_4 = 0.30 * screenWidth;
    width_140 = 0.34 * screenWidth;
    width_160 = 0.3889 * screenWidth;
    width_170 = 0.413 * screenWidth;
    width_180 = 0.437 * screenWidth;
    width_185 = 0.444 * screenWidth;
    width_190 = 0.461 * screenWidth;
    width_200 = 0.486 * screenWidth;
    width_241 = 0.5784 * screenWidth;
    width_294 = 0.7146 * screenWidth;
    width_300 = 0.729 * screenWidth;
    width_304 = 0.74 * screenWidth;
    width_320 = 0.77783 * screenWidth;
  }
}
