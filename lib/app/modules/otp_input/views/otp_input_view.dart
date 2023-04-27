import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/custom_widgets/custion_textfeild.dart';
import 'package:lawyer_desk/app/custom_widgets/custom_button.dart';
import 'package:lawyer_desk/app/custom_widgets/initail_container.dart';
import 'package:lawyer_desk/app/routes/app_pages.dart';
import 'package:lawyer_desk/app/utils/colors.dart';
import 'package:lawyer_desk/app/utils/sizes.dart';
import '../controllers/otp_input_controller.dart';

class OtpInputView extends GetView<OtpInputController> {
  const OtpInputView({Key? key}) : super(key: key);
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
                        'Enter OTP',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      sizedHeight(Get.height * 0.005),
                      Text(
                        'A four digit otp has send to\n +91 8921912219',
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
                            Get.toNamed(Routes.PROFILE_DETAILS_INPUT);
                          },
                          text: 'Verify OTP',
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
