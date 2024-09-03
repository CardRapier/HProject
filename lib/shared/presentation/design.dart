import 'package:flutter/material.dart';

class MyColors {
  static const Color black = Color(0xff040415);
  static const Color black60 = Color(0xff686873);
  static const Color black40 = Color(0xff9B9BA1);
  static const Color black20 = Color(0xffCDCDD0);
  static const Color background = Color(0xffF6F9FF);
  static const Color blue = Color(0xff3843FF);
  static const LinearGradient gradientBlue = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0, 1],
      colors: [Color(0xff6B73FF), Color(0xff000DFF)]);
}
