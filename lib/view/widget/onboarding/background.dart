import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasksync/controller/onboarding_controller.dart';
import 'package:tasksync/core/constant/color.dart';

class Background extends GetView<OnboardingControllerImpl> {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImpl>(
      builder: (conttroller) {
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
              Positioned(
                left: 25,
                top: 50,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.white.withOpacity(0.3),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 100,
                child: Container(
                  width: 90,
                  height: 400,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.white.withOpacity(0.3),
                  ),
                ),
              ),
              Positioned(
                left: 100,
                top: 200,
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
      }
    );
  }
}
