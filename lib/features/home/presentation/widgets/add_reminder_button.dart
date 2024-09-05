import 'package:flutter/material.dart';
import 'package:h_project/shared/presentation/components/my_text.dart';
import 'package:h_project/shared/presentation/design.dart';

class AddReminderButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddReminderButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(40),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: MyDesign.basicBoxShadow,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          alignment: Alignment.center,
          child: const MyText.paragraph(
            'Add Reminder',
          ),
        ),
      ),
    );
  }
}
