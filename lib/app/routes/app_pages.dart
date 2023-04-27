import 'package:get/get.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mobile_number_input/bindings/mobile_number_input_binding.dart';
import '../modules/mobile_number_input/views/mobile_number_input_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/otp_input/bindings/otp_input_binding.dart';
import '../modules/otp_input/views/otp_input_view.dart';
import '../modules/profile_details_input/bindings/profile_details_input_binding.dart';
import '../modules/profile_details_input/views/profile_details_input_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.MOBILE_NUMBER_INPUT,
      page: () => const MobileNumberInputView(),
      binding: MobileNumberInputBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_DETAILS_INPUT,
      page: () => ProfileDetailsInputView(),
      binding: ProfileDetailsInputBinding(),
    ),
    GetPage(
      name: _Paths.OTP_INPUT,
      page: () => const OtpInputView(),
      binding: OtpInputBinding(),
    ),
  ];
}
