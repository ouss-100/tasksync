import 'package:tasksync/core/constant/imageassets.dart';
import 'package:tasksync/data/model/onboardingmodel.dart';

List<OnboardingModel> onBoardingData = [
  OnboardingModel(
    title: 'Welcome to TaskSync',
    body:
        'Manage tasks efficiently with customizable alarms and insightful statistics.',
    image: ImageAssets.onBoardingImage1,
  ),
  OnboardingModel(
    title: 'Easy to Use',
    body: 'Simplified interface for seamless task management.',
    image: ImageAssets.onBoardingImage2,
  ),
  OnboardingModel(
    title: 'Customizable Alarms',
    body: 'Set reminders to stay on top of your schedule.',
    image: ImageAssets.onBoardingImage3,
  ),
  OnboardingModel(
    title: 'Daily Task Management',
    body: 'Efficiently manage your daily tasks with ease.',
    image: ImageAssets.onBoardingImage4,
  ),
  OnboardingModel(
    title: 'Detailed Statistics',
    body: 'Visualize your productivity and track your performance over time.',
    image: ImageAssets.onBoardingImage5,
  ),
];
