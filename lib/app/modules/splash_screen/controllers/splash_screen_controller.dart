import 'package:get/get.dart';
import 'package:lawyer_desk/app/modules/onboarding/views/onboarding_view.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    gotoRegisterPage();
    super.onInit();
  }

  Future<void> gotoRegisterPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.to(
      () => const OnboardingView(),
    );
  }
}
