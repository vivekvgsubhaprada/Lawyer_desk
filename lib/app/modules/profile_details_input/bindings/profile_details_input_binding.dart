import 'package:get/get.dart';

import '../controllers/profile_details_input_controller.dart';

class ProfileDetailsInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileDetailsInputController>(
      () => ProfileDetailsInputController(),
    );
  }
}
