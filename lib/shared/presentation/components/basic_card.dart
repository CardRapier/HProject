import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/design.dart';

class BasicCard extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final bool? useColumn;

  const BasicCard(
      {super.key,
      required this.children,
      this.padding,
      this.width,
      this.useColumn,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ??
          const EdgeInsets.only(right: 16, left: 16, top: 12, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: MyColors.black10, width: 1),
          boxShadow: MyDesign.basicBoxShadow),
      child: useColumn == true
          ? Column(children: children)
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: children,
            ),
    );
  }
}
