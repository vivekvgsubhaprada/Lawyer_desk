import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/modules/language_selection/views/language_selection_view.dart';
import 'package:lawyer_desk/app/ustils/colors.dart';
import 'package:lawyer_desk/app/ustils/sizes.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/lawyer_desk_logo.png'),
            const Text(
              'Join as client or lawyer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
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
            Obx(
              () => ElevatedButton(
                onPressed: () {
                  print(controller.userType);
                  // Get.to(const LanguageSelectionView());
                },
                style: ElevatedButton.styleFrom(elevation: 0.0),
                child: Text('Join as ${controller.userType}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
