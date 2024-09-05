import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/components/my_text.dart';
import 'package:h_project/shared/presentation/design.dart';

class BasicButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onPressed;
  const BasicButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? MyColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed: onPressed,
        child: MyText.paragraph(
          text,
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }
}
