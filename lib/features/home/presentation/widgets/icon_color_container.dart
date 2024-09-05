import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/components/basic_card.dart';
import 'package:h_project/shared/presentation/components/my_text.dart';
import 'package:h_project/shared/presentation/design.dart';

class IconAndColorContainer extends StatelessWidget {
  const IconAndColorContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BasicCard(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: MyDesign.basicBoxDecoration,
              child: const Center(
                child: MyText.h6('🚶🏽'),
              ),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText.paragraph('Walking'),
                MyText.alternative('Icon')
              ],
            ),
            const SizedBox(width: 24),
          ],
        ),
        BasicCard(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                color: MyColors.orange,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText.paragraph('Orange'),
                MyText.alternative('Color')
              ],
            ),
            const SizedBox(width: 12),
          ],
        )
      ],
    );
  }
}
