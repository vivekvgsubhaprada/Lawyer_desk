import 'package:get/get.dart';
import 'package:lawyer_desk/app/modules/onboarding/controllers/onboarding_controller.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(
      () => SplashScreenController(),
    );
    Get.lazyPut<OnboardingController>(
      () => OnboardingController(),
    );
  }
}
