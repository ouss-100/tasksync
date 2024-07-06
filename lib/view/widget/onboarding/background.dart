import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasksync/controller/onboarding_controller.dart';
import 'package:tasksync/core/constant/color.dart';

class Background extends GetView<OnboardingControllerImpl> {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImpl>(builder: (controller) {
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.purple, AppColors.white],
          ),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              left: controller.circle1Left,
              top: controller.circle1Top,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white.withOpacity(0.3),
                ),
              ),
            ),
            AnimatedPositioned(
              right: controller.circle2Right,
              bottom: controller.circle2Bottom,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              child: Container(
                width: 90,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white.withOpacity(0.3),
                ),
              ),
            ),
            AnimatedPositioned(
              left: controller.circle3Left,
              top: controller.circle3Top,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white.withOpacity(0.3),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
