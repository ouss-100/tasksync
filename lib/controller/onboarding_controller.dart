import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tasksync/data/datasource/static/static.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnboardingControllerImpl extends OnboardingController {
  late PageController pageController;
  int currentIndex = 0;

  // Variables for circle positions
  double circle1Left = 25;
  double circle1Top = 50;
  double circle2Right = 10;
  double circle2Bottom = 100;
  double circle3Left = 100;
  double circle3Top = 200;

  @override
  next() {
    currentIndex++;
    updateCirclePositions();

    if (currentIndex > onBoardingData.length - 1) {
      Get.offAllNamed('/login');
    } else {
      pageController.animateToPage(currentIndex,
          duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
    }
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  onPageChanged(int index) {
    currentIndex = index;
    updateCirclePositions();
    update();
  }

  // Method to update circle positions
  void updateCirclePositions() {
    circle1Left = (circle1Left + 30) % Get.width;
    circle1Top = (circle1Top + 50) % Get.height;
    circle2Right = (circle2Right + 40) % Get.width;
    circle2Bottom = (circle2Bottom + 60) % Get.height;
    circle3Left = (circle3Left + 50) % Get.width;
    circle3Top = (circle3Top + 70) % Get.height;
    update(); // Notify listeners to update the UI
  }
}
