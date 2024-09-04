import 'package:flutter/material.dart';
import 'package:h_project/main.dart';
import 'package:h_project/shared/presentation/components/basic_card.dart';
import 'package:h_project/shared/presentation/components/my_text.dart';
import 'package:h_project/shared/presentation/design.dart';

class CustomHabitForm extends StatelessWidget {
  const CustomHabitForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(24, 16, 32, 14),
            child: const SafeArea(
              bottom: false,
              child: Row(
                children: [
                  HeaderButton(icon: Icons.arrow_back_ios_new),
                  SizedBox(width: 8),
                  MyText.h5('Create Custom Habit')
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyText.chip('Name', upperCase: true),
                const TextField(),
                const SizedBox(height: 16),
                const MyText.chip('Icon and Color', upperCase: true),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BasicCard(
                      padding: const EdgeInsets.all(16),
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: const BoxDecoration(
                            color: MyColors.darkBlue10,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
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
                ),
                const SizedBox(height: 16),
                const MyText.chip('Goal', upperCase: true),
                const SizedBox(height: 16),
                const MyText.chip('Reminders', upperCase: true),
                const SizedBox(height: 16),
                const MyText.chip('Habit Type', upperCase: true)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
