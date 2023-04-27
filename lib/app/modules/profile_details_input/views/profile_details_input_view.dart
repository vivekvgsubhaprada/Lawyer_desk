import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/custom_widgets/custion_textfeild.dart';
import 'package:lawyer_desk/app/custom_widgets/custom_button.dart';
import 'package:lawyer_desk/app/custom_widgets/initail_container.dart';
import 'package:lawyer_desk/app/utils/colors.dart';
import 'package:lawyer_desk/app/utils/sizes.dart';
import '../controllers/profile_details_input_controller.dart';

class ProfileDetailsInputView extends GetView<ProfileDetailsInputController> {
  ProfileDetailsInputView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.klightBlue,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              sizedHeight(Get.height * 0.035),
              CircleAvatar(
                backgroundImage: const NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxT8tDB5GEv6ZvOTaTIAgxvNEBS7LTFobs8HD32kl0Rw&ec=48665698',
                ),
                radius: 75,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    backgroundColor: AppColors.kYellowColor,
                    child: Icon(
                      Icons.camera_alt,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                ),
              ),
              sizedHeight(Get.height * 0.035),
              InitialContainer(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        sizedHeight(Get.height * 0.05),
                        CustomTextFeild(
                          text: 'First Name',
                          prefixIcon: Icons.person,
                        ),
                        sizedHeight(Get.height * 0.03),
                        CustomTextFeild(
                          text: 'Last Name',
                          prefixIcon: Icons.person,
                          validateText: '',
                        ),
                        sizedHeight(Get.height * 0.03),
                        CustomTextFeild(
                          text: 'Email',
                          prefixIcon: Icons.mail,
                        ),
                        sizedHeight(Get.height * 0.04),
                        SizedBox(
                          width: double.infinity,
                          height: Get.height * 0.055,
                          child: CustomButton(
                            onpressed: () {},
                            text: 'Submit',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
