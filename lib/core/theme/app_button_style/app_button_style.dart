import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/consts/consts.dart';
import 'package:flutter_app_for_travel/core/theme/app_colors/app_colors.dart';

abstract class AppButtonStyle {
  static ButtonStyle get active => ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.mainButtonColor),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 35, vertical: 18)),
        shape: MaterialStateProperty.all(const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppConsts.borderRadius)),
        )),
      );

  static ButtonStyle get disable => active.copyWith(
        backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
      );
}
