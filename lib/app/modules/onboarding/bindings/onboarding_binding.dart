import 'package:get/get.dart';
import 'package:lawyer_desk/app/modules/mobile_number_input/controllers/mobile_number_input_controller.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(
      () => OnboardingController(),
    );
  }
}
