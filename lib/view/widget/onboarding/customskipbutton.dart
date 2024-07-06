import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasksync/controller/onboarding_controller.dart';
import 'package:tasksync/core/constant/color.dart';

class CustomSkipButton extends GetView<OnboardingControllerImpl> {
  const CustomSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.offAllNamed('/login');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(5),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
              foregroundColor: AppColors.blue,
            ),
            child: const Text('Skip',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
