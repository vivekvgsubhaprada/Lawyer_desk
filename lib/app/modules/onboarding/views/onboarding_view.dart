import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/custom_widgets/custion_textfeild.dart';
import 'package:lawyer_desk/app/custom_widgets/custom_button.dart';
import 'package:lawyer_desk/app/modules/mobile_number_input/bindings/mobile_number_input_binding.dart';
import 'package:lawyer_desk/app/modules/mobile_number_input/views/mobile_number_input_view.dart';
import 'package:lawyer_desk/app/routes/app_pages.dart';
import 'package:lawyer_desk/app/utils/colors.dart';
import 'package:lawyer_desk/app/utils/sizes.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/lawyer_desk_logo.png'),
              sizedHeight(Get.height * 0.03),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChoiceChip(
                      label: const Text('Client'),
                      selected:
                          controller.userType.value == 'Client' ? true : false,
                      selectedColor: AppColors.kBlackColor,
                      labelStyle: TextStyle(
                        color: controller.userType.value == 'Client'
                            ? AppColors.kWhiteColor
                            : AppColors.kBlackColor,
                      ),
                      onSelected: (value) {
                        controller.userType.value = 'Client';
                      },
                    ),
                    sizedWidth(Get.height * 0.02),
                    ChoiceChip(
                      label: const Text('Lawyer'),
                      selected:
                          controller.userType.value == 'Lawyer' ? true : false,
                      onSelected: (value) {
                        controller.userType.value = 'Lawyer';
                      },
                      selectedColor: AppColors.kBlackColor,
                      labelStyle: TextStyle(
                        color: controller.userType.value == "Lawyer"
                            ? AppColors.kWhiteColor
                            : AppColors.kBlackColor,
                      ),
                    ),
                  ],
                ),
              ),
              sizedHeight(Get.height * 0.02),
              // Obx(
              //   () => ElevatedButton(
              //     onPressed: () {
              //       Get.to(
              //         () => const MobileNumberInputView(),
              //         binding: MobileNumberInputBinding(),
              //       );
              //     },
              //     style: ElevatedButton.styleFrom(elevation: 0.0),
              //     child: Text('Join as ${controller.userType}'),
              //   ),
              // ),
              SizedBox(
                width: Get.width * 0.85,
                height: Get.height * 0.06,
                child: CustomButton(
                  onpressed: () {},
                  text: 'Join',
                ),
              ),
              CustomTextFeild(text: 'Enter your name')
            ],
          ),
        ),
      ),
    );
  }
}
