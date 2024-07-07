import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasksync/controller/onboarding_controller.dart';
import 'package:tasksync/core/constant/color.dart';
import 'package:tasksync/data/datasource/static/static.dart';

class CustomNextButton extends GetView<OnboardingControllerImpl> {
  const CustomNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: GetBuilder<OnboardingControllerImpl>(
        builder: (controller) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildIndicator(controller),
            _buildNextButton(controller),
          ],
        ),
      ),
    );
  }

  Widget _buildIndicator(OnboardingControllerImpl controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onBoardingData.length,
        (index) => AnimatedContainer(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          duration: const Duration(milliseconds: 400),
          width: controller.currentIndex == index ? 20 : 10,
          height: 10,
          decoration: BoxDecoration(
            color: controller.currentIndex == index
                ? AppColors.purple
                : AppColors.grey,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton(OnboardingControllerImpl controller) {
    return GestureDetector(
      onTap: controller.next,
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          color: AppColors.purple,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: controller.currentIndex != onBoardingData.length - 1
              ? const Icon(Icons.arrow_forward, color: Colors.white)
              : const Icon(Icons.check, color: Colors.white),
        ),
      ),
    );
  }
}
