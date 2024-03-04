import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/theme/app_button_style/app_button_style.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.isActive});

  final Function() onPressed;
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: onPressed,
        style: (isActive) ? AppButtonStyle.active : AppButtonStyle.disable,
        child: Text(text,
            style: (isActive == true)
                ? AppTextStyle.buttonTextActive
                : AppTextStyle.buttonTextDisable));
  }
}
