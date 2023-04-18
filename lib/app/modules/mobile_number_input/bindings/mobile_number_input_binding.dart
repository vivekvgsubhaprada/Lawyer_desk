import 'package:get/get.dart';

import '../controllers/mobile_number_input_controller.dart';

class MobileNumberInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MobileNumberInputController>(
      () => MobileNumberInputController(),
    );
  }
}
