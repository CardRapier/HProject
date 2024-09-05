import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/design.dart';

class BoxButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? icon;
  final Widget? content;
  final double borderRadius;
  final double containerPadding;
  final EdgeInsetsGeometry? customPadding;
  final double borderWidth;
  const BoxButton(
      {super.key,
      this.onTap,
      this.icon,
      this.containerPadding = 12,
      this.borderRadius = 16,
      this.borderWidth = 1,
      this.content,
      this.customPadding})
      : assert(icon != null || content != null,
            'Either icon or textIcon must be provided.');

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius:
            BorderRadius.all(Radius.elliptical(borderRadius, borderRadius)),
        onTap: onTap ?? () => print("onTap Header Button"),
        child: Container(
          padding: customPadding ?? EdgeInsets.all(containerPadding),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.elliptical(borderRadius, borderRadius)),
            border: Border.all(color: MyColors.black10, width: borderWidth),
          ),
          child: content ??
              Icon(
                icon,
                size: 24,
              ),
        ),
      ),
    );
  }
}
