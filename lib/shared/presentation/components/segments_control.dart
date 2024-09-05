import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/design.dart';

class SegmentsControl extends StatelessWidget {
  final List<Widget> tabs;
  const SegmentsControl({super.key, required this.tabs});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          color: MyColors.black10),
      child: DefaultTabController(
        initialIndex: 0,
        length: tabs.length,
        child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            indicatorColor: MyColors.blue,
            indicatorPadding:
                const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            labelColor: MyColors.blue,
            indicator: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: MyDesign.basicBoxShadow),
            tabs: tabs),
      ),
    );
  }
}
