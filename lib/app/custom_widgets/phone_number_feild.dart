import 'package:flutter/material.dart';
import 'package:lawyer_desk/app/utils/colors.dart';

class PhoneNumberTextFeild extends StatelessWidget {
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
      },
      maxLength: 10,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        contentPadding: const EdgeInsets.only(left: 20),
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
      ),
      keyboardType: TextInputType.phone,
    );
  }
}
