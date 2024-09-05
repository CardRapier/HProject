import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/components/basic_card.dart';
import 'package:h_project/shared/presentation/components/box_button.dart';
import 'package:h_project/shared/presentation/components/my_text.dart';
import 'package:h_project/shared/presentation/design.dart';

class GoalsContainer extends StatelessWidget {
  const GoalsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
      useColumn: true,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText.paragraph('1 times'),
                MyText.alternative('or more per day')
              ],
            ),
            BoxButton(
              containerPadding: 8,
              icon: Icons.edit,
            )
          ],
        ),
        const SizedBox(height: 8),
        Container(
          decoration: MyDesign.basicBoxDecoration,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.cached_rounded,
                      color: MyColors.blue,
                      size: 18,
                    ),
                    SizedBox(width: 4),
                    MyText.alternative(
                      'Daily',
                      color: MyColors.black,
                    )
                  ],
                ),
                SizedBox(width: 12),
                Row(
                  children: [
                    Icon(
                      Icons.pause_presentation,
                      color: MyColors.blue,
                      size: 18,
                    ),
                    SizedBox(width: 4),
                    MyText.alternative(
                      'Every day',
                      color: MyColors.black,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
