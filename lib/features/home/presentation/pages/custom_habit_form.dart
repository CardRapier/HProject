import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/components/shadow_button.dart';
import 'package:h_project/features/home/presentation/widgets/goals_container.dart';
import 'package:h_project/features/home/presentation/widgets/icon_color_container.dart';
import 'package:h_project/features/home/presentation/widgets/reminder_container.dart';
import 'package:h_project/shared/presentation/components/basic_button.dart';
import 'package:h_project/shared/presentation/components/box_button.dart';
import 'package:h_project/shared/presentation/components/my_text.dart';
import 'package:h_project/shared/presentation/components/segments_control.dart';
import 'package:h_project/shared/presentation/design.dart';

class CustomHabitForm extends StatelessWidget {
  const CustomHabitForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(24, 16, 32, 14),
            child: const SafeArea(
              bottom: false,
              child: Row(
                children: [
                  BoxButton(icon: Icons.arrow_back_ios_new),
                  SizedBox(width: 8),
                  MyText.h5('Create Custom Habit')
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ListView(
                  padding: const EdgeInsets.only(bottom: 100),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Name
                          const MyText.chip('Name', upperCase: true),
                          const TextField(),
                          const SizedBox(height: 16),

                          //Icon And Color
                          const MyText.chip('Icon and Color', upperCase: true),
                          const SizedBox(height: 8),
                          const IconAndColorContainer(),

                          //Goal
                          const SizedBox(height: 16),
                          const MyText.chip('Goal', upperCase: true),
                          const SizedBox(height: 8),
                          const GoalsContainer(),

                          //Reminders
                          const SizedBox(height: 16),
                          const MyText.chip('Reminders', upperCase: true),
                          const SizedBox(height: 8),
                          const RemindersContainer(),
                          const SizedBox(height: 8),
                          ShadowButton(
                            onTap: () {
                              print('lmao');
                            },
                            text: 'Add Reminder',
                          ),

                          //Habit Type
                          const SizedBox(height: 16),
                          const MyText.chip('Habit Type', upperCase: true),
                          const SizedBox(height: 8),
                          const SegmentsControl(tabs: [
                            MyText.paragraph('Build'),
                            MyText.paragraph('Quit'),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 46,
                  child: SizedBox(
                    height: 52,
                    child: BasicButton(
                      text: 'Add Habit',
                      onPressed: () {
                        print('Add habit');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
