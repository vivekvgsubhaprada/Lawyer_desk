import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onpressed,
    required this.text,
  });

  final VoidCallback onpressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 5.0,
          shape: const StadiumBorder(),
          backgroundColor: const Color(0xffFFCC00)),
      onPressed: onpressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
