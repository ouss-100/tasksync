import 'package:flutter/material.dart';
import 'package:tasksync/core/constant/color.dart';


class CustomLangButton extends StatelessWidget {
  const CustomLangButton({super.key, required this.name, this.onPressed});
  final String name;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColors.primaryColor,
        textColor: AppColors.white,
        onPressed: onPressed,
        child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
