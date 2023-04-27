import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/utils/colors.dart';

// ignore: must_be_immutable
class CustomTextFeild extends GetView {
  CustomTextFeild({
    super.key,
    required this.text,
    this.prefixIcon,
    this.validateText,
  });

  final String text;
  IconData? prefixIcon;
  String? validateText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) {
        if (val == null || val.isEmpty) {
          return validateText;
        }
        return null;
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        fillColor: AppColors.klightBlue,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
