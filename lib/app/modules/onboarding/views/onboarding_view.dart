import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/custom_widgets/custom_button.dart';
import 'package:lawyer_desk/app/custom_widgets/initail_container.dart';
import 'package:lawyer_desk/app/routes/app_pages.dart';
import 'package:lawyer_desk/app/utils/colors.dart';
import 'package:lawyer_desk/app/utils/sizes.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: Column(
                children: [
                  sizedHeight(Get.height * 0.05),
                  const Text(
                    'JOIN AS PUBLIC OR LAWYER',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  sizedHeight(Get.height * 0.04),
                  Obx(
                    () => ToggleButtons(
                      direction: Axis.horizontal,
                      onPressed: (int index) {
                        print(index);
                        for (int i = 0;
                            i < controller.selectedUserType.length;
                            i++) {
                          controller.selectedUserType[i] = i == index;
                        }
                      },
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      selectedColor: Colors.white,
                      fillColor: AppColors.kYellowColor,
                      color: AppColors.kBlackColor,
                      constraints: const BoxConstraints(
                        minHeight: 40.0,
                        minWidth: 80.0,
                      ),
                      isSelected: controller.selectedUserType,
                      children: const [
                        Text(
                          'Public',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lawyer',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  sizedHeight(Get.height * 0.03),
                  SizedBox(
                    width: Get.width * 0.85,
                    height: Get.width * 0.12,
                    child: CustomButton(
                      onpressed: () {
                        Get.toNamed(Routes.MOBILE_NUMBER_INPUT);
                      },
                      text: 'JOIN AS PUBLIC',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
