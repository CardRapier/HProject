import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/components/my_text.dart';
import 'package:h_project/shared/presentation/design.dart';

class ShadowButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? textColor;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const ShadowButton({
    super.key,
    required this.onTap,
    required this.text,
    this.color,
    this.padding,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(40),
      child: Ink(
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: MyDesign.basicBoxShadow,
        ),
        child: Container(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          alignment: Alignment.center,
          child: MyText.paragraph(
            text,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
