import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/app/utils/colors.dart';
import 'package:lawyer_desk/app/utils/reusable_values/box_shadows.dart';

class ContainerIcon extends GetView {
  const ContainerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.068,
      width: Get.width * 0.14,
      decoration: BoxDecoration(
        color: AppColors.kYellowColor,
        borderRadius: BorderRadius.circular(11),
        boxShadow: [cardShadow],
      ),
      child: const Icon(Icons.newspaper, size: 30),
    );
  }
}
