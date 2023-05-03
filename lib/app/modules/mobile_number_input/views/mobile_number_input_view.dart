import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/custom_widgets/custom_button.dart';
import 'package:lawyer_desk/app/custom_widgets/initail_container.dart';
import 'package:lawyer_desk/app/custom_widgets/phone_number_feild.dart';
import 'package:lawyer_desk/app/modules/otp_input/views/otp_input_view.dart';
import 'package:lawyer_desk/app/utils/colors.dart';
import 'package:lawyer_desk/app/utils/sizes.dart';
import '../controllers/mobile_number_input_controller.dart';

class MobileNumberInputView extends GetView<MobileNumberInputController> {
  MobileNumberInputView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.klightBlue,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sizedHeight(Get.height * 0.09),
              Image.asset('assets/lawyer_desk_logo.png'),
              sizedHeight(Get.height * 0.09),
              InitialContainer(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 17.5),
                              child: Container(
                                height: Get.height * 0.078,
                                width: Get.width * 0.14,
                                decoration: BoxDecoration(
                                  color: AppColors.klightBlue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(
                                  child: Text(
                                    '+91',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            sizedWidth(Get.width * 0.02),
                            Expanded(
                              child: PhoneNumberTextFeild(
                                textEditingController:
                                    controller.mobileNumberController,
                                validateText: "Phone numebr can't be empty",
                                text: "Phone Number",
                              ),
                            ),
                          ],
                        ),
                        sizedHeight(Get.height * 0.03),
                        SizedBox(
                          width: double.infinity,
                          height: Get.height * 0.055,
                          child: CustomButton(
                            onpressed: () {
                              Get.to(const OtpInputView());
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
      ),
    );
  }
}
