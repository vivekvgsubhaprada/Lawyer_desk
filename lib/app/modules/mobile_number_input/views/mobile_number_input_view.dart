import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/utils/sizes.dart';
import '../controllers/mobile_number_input_controller.dart';

class MobileNumberInputView extends GetView<MobileNumberInputController> {
  const MobileNumberInputView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: Get.width / 7,
                        child: TextFormField(
                          controller: controller.contryCodeController,
                          enabled: false,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    sizedWidth(Get.width / 26),
                    SizedBox(
                      width: Get.width * 0.7,
                      child: TextFormField(
                        controller: controller.mobileNumberController,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: const InputDecoration(
                          labelText: 'Enter your mobile number',
                          border: OutlineInputBorder(),
                        ),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'please enter phone number';
                          } else if (val.length < 10) {
                            return 'Mobile Number must be of 10 digit';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                sizedHeight(Get.height * 0.02),
                ElevatedButton(
                  onPressed: () {
                    controller.onSendOtpButtonClicked();
                  },
                  child: const Text('Send Otp'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
