import 'package:flutter/material.dart';
import 'package:lawyer_desk/app/utils/colors.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
        filled: true,
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        fillColor: AppColors.klightBlue,
      ),
    );
  }
}
