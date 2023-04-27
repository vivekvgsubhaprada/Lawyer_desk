import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileNumberInputController extends GetxController {
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController contryCodeController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    contryCodeController.text = '+91';
    super.onInit();
  }

  Future<void> onSendOtpButtonClicked() async {
    if (formKey.currentState!.validate()) {
      print('${contryCodeController.text} ${mobileNumberController.text})');
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber:
            '${contryCodeController.text} ${mobileNumberController.text}',
        verificationCompleted: (PhoneAuthCredential credential) {
          print(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          print('Exception on verification ${e.message}');
        },
        codeSent: (String verificationId, int? resendToken) {},
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }
  }
}
