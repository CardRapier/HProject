import 'package:flutter/material.dart';
import 'package:h_project/main.dart';
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText.chip('Name', upperCase: true),
                TextField(),
                SizedBox(height: 16),
                MyText.chip('Icon and Color', upperCase: true),
                SizedBox(height: 16),
                MyText.chip('Goal', upperCase: true),
                SizedBox(height: 16),
                MyText.chip('Reminders', upperCase: true),
                SizedBox(height: 16),
                MyText.chip('Habit Type', upperCase: true)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
