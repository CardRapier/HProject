import 'package:flutter/material.dart';
import 'package:h_project/utils/design.dart';

class BodyText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final double? letterSpacing;
  final bool? withGradient;

  const BodyText.title(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 18,
    this.color = MyColors.black,
    this.letterSpacing,
    this.withGradient,
  }) : assert((withGradient == null || withGradient == false) || color == null,
            'Color must be null when withGradient is not null');

  const BodyText.paragraph(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.w500,
    this.fontSize,
    this.color,
    this.letterSpacing,
    this.withGradient,
  }) : assert((withGradient == null || withGradient == false) || color == null,
            'Color must be null when withGradient is not null');

  const BodyText.paragraphBook(
    this.text, {
    super.key,
    this.fontWeight,
    this.fontSize,
    this.color = const Color(0xff9B9BA1),
    this.letterSpacing,
    this.withGradient,
  }) : assert((withGradient == null || withGradient == false) || color == null,
            'Color must be null when withGradient is not null');

  const BodyText.alternative(
    this.text, {
    super.key,
    this.fontWeight,
    this.fontSize = 12,
    this.color = const Color(0xff9B9BA1),
    this.letterSpacing,
    this.withGradient,
  }) : assert((withGradient == null || withGradient == false) || color == null,
            'Color must be null when withGradient is not null');

  const BodyText.chip(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 10,
    this.color,
    this.letterSpacing = 1,
    this.withGradient,
  }) : assert((withGradient == null || withGradient == false) || color == null,
            'Color must be null when withGradient is not null');

  @override
  Widget build(BuildContext context) {
    Widget mainText = Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        letterSpacing: letterSpacing ?? 0,
      ),
    );

    if (withGradient == true) mainText = _gradientTextStyle(mainText);

    return mainText;
  }
}

ShaderMask _gradientTextStyle(child) {
  return ShaderMask(
    blendMode: BlendMode.srcIn,
    shaderCallback: (bounds) => MyColors.gradientBlue
        .createShader(Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height)),
    child: child,
  );
}
