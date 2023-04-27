import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/custom_widgets/custion_textfeild.dart';
import 'package:lawyer_desk/app/custom_widgets/custom_button.dart';
import 'package:lawyer_desk/app/custom_widgets/initail_container.dart';
import 'package:lawyer_desk/app/routes/app_pages.dart';
import 'package:lawyer_desk/app/utils/colors.dart';
import 'package:lawyer_desk/app/utils/sizes.dart';
import '../controllers/mobile_number_input_controller.dart';

class MobileNumberInputView extends GetView<MobileNumberInputController> {
  const MobileNumberInputView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.klightBlue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            sizedHeight(Get.height * 0.09),
            Image.asset('assets/lawyer_desk_logo.png'),
            sizedHeight(Get.height * 0.09),
            InitialContainer(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedHeight(Get.height * 0.04),
                      const Text(
                        'Enter your mobile number',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      sizedHeight(Get.height * 0.005),
                      Text(
                        'You will receive a 6 digit code\n to verify next.',
                        style: TextStyle(
                          color: AppColors.kGreyColor,
                          fontSize: 16,
                        ),
                      ),
                      sizedHeight(Get.height * 0.03),
                      CustomTextFeild(text: 'Enter your phone number'),
                      sizedHeight(Get.height * 0.03),
                      SizedBox(
                        width: double.infinity,
                        height: Get.height * 0.055,
                        child: CustomButton(
                          onpressed: () {
                            Get.toNamed(Routes.OTP_INPUT);
                          },
                          text: 'Send Otp',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
