import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/utils/colors.dart';

class PhoneNumberTextFeild extends GetView {
  const PhoneNumberTextFeild({
    super.key,
    required this.validateText,
    required this.text,
    required this.textEditingController,
  });

  final String validateText;
  final String text;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return validateText;
        } else if (val.length != 10) {
          return 'Phone must be 10 digits';
        }
        return null;
      },
      maxLength: 10,
      decoration: InputDecoration(
        isDense: true,
        border: InputBorder.none,
        hintText: text,
        contentPadding: const EdgeInsets.only(
          left: 20,
          top: 20,
          bottom: 20,
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        fillColor: AppColors.klightBlue,
      ),
      keyboardType: TextInputType.phone,
    );
  }
}
