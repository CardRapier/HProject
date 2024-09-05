import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/components/basic_card.dart';
import 'package:h_project/shared/presentation/components/my_text.dart';
import 'package:h_project/shared/presentation/design.dart';

class RemindersContainer extends StatelessWidget {
  const RemindersContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
      useColumn: true,
      children: [
        Row(
          children: [
            const Flexible(
                child: MyText.alternative(
                    'Remember to set off time for a work out today')),
            Switch(value: true, onChanged: (value) {})
          ],
        ),
        Container(
          decoration: MyDesign.basicBoxDecoration,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      color: MyColors.blue,
                      size: 18,
                    ),
                    SizedBox(width: 4),
                    MyText.alternative(
                      '09:30',
                      color: MyColors.black,
                    )
                  ],
                ),
                SizedBox(width: 12),
                Row(
                  children: [
                    Icon(
                      Icons.notifications_active_outlined,
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
