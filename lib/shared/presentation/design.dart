import 'package:flutter/material.dart';

class MyColors {
  static const Color black = Color(0xff040415);
  static const Color black60 = Color(0xff686873);
  static const Color black40 = Color(0xff9B9BA1);
  static const Color black20 = Color(0xffCDCDD0);
  static const Color black10 = Color(0xffEAECF0);

  static const Color blue = Color(0xff3843FF);
  static const Color darkBlue10 = Color(0xffF3F4F6);

  static const Color orange = Color(0xffF15223);

  static const Color background = Color(0xffF6F9FF);
  static const LinearGradient gradientBlue = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0, 1],
      colors: [Color(0xff6B73FF), Color(0xff000DFF)]);
}

class MyDesign {
  static const BoxDecoration basicBoxDecoration = BoxDecoration(
      color: MyColors.darkBlue10,
      borderRadius: BorderRadius.all(Radius.circular(12)));
  static const List<BoxShadow> basicBoxShadow = <BoxShadow>[
    BoxShadow(
      color: Color(0x0D232C5D),
      spreadRadius: 0,
      blurRadius: 68,
      offset: Offset(58, 26),
    ),
  ];
}
