import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/design.dart';

class BasicCard extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final double? width;

  const BasicCard(
      {super.key, required this.children, this.padding, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding ??
          const EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: MyColors.black10, width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
