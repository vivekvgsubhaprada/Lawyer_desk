import 'package:flutter/material.dart';
import 'package:lawyer_desk/app/utils/colors.dart';
import 'package:lawyer_desk/app/utils/reusable_values/box_shadows.dart';

class InitialContainer extends StatelessWidget {
  const InitialContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            boxShadow: [initalContainerShadow],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
