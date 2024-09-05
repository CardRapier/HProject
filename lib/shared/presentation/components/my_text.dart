import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/design.dart';

class MyText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final double? letterSpacing;
  final bool? withGradient;
  final TextAlign? textAlign;
  final bool? upperCase;

  const MyText.title(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 18,
    this.color = MyColors.black,
    this.letterSpacing,
    this.withGradient,
    this.textAlign,
    this.upperCase,
  });

  const MyText.paragraph(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.w500,
    this.fontSize,
    this.color,
    this.letterSpacing,
    this.withGradient,
    this.textAlign,
    this.upperCase,
  });

  const MyText.paragraphBook(
    this.text, {
    super.key,
    this.fontWeight,
    this.fontSize,
    this.color = MyColors.black40,
    this.letterSpacing,
    this.withGradient,
    this.textAlign,
    this.upperCase,
  });

  const MyText.alternative(
    this.text, {
    super.key,
    this.fontWeight,
    this.fontSize = 12,
    this.color = MyColors.black40,
    this.letterSpacing,
    this.withGradient,
    this.textAlign,
    this.upperCase,
  });

  const MyText.chip(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 10,
    this.color,
    this.letterSpacing = 1,
    this.withGradient,
    this.textAlign,
    this.upperCase,
  });

  const MyText.h6(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 20,
    this.color,
    this.letterSpacing,
    this.withGradient,
    this.textAlign,
    this.upperCase,
  });

  const MyText.h5(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 24,
    this.color,
    this.letterSpacing = -1,
    this.withGradient,
    this.textAlign,
    this.upperCase,
  });

  @override
  Widget build(BuildContext context) {
    Color? finalColor = color;
    if (withGradient == true) finalColor = null;

    String finalText = text;
    if (upperCase == true) finalText = text.toUpperCase();
    Widget mainText = Text(
      finalText,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: finalColor,
        letterSpacing: letterSpacing ?? 0,
      ),
      textAlign: textAlign,
    );

    if (withGradient == true) mainText = gradientTextStyle(mainText);

    return mainText;
  }
}

ShaderMask gradientTextStyle(child) {
  return ShaderMask(
    blendMode: BlendMode.srcIn,
    shaderCallback: (bounds) => MyColors.gradientBlue
        .createShader(Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height)),
    child: child,
  );
}
