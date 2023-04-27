import 'package:get/get.dart';

import '../controllers/otp_input_controller.dart';

class OtpInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpInputController>(
      () => OtpInputController(),
    );
  }
}
