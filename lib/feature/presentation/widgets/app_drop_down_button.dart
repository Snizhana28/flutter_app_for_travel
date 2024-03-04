import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/consts/consts.dart';
import 'package:flutter_app_for_travel/core/theme/app_colors/app_colors.dart';
import 'package:iconsax/iconsax.dart';

class AppDropDownButton extends StatelessWidget {
  const AppDropDownButton({super.key, required this.values});

  ///Key value pair for dropdown. Key is the name of the dropdown and value is the value of the dropdown.
  final Map<String, String> values;

  @override
  Widget build(BuildContext context) {
    return DropDownTextField(
      initialValue: values.entries.first.key,
      clearIconProperty: IconProperty(
        icon: Iconsax.filter,
        color: AppColors.primaryIconsColor,
      ),
      textFieldDecoration: InputDecoration(
        hintText: 'Where do you want to go?',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConsts.borderRadius),
          borderSide:
              const BorderSide(width: 2, color: AppColors.disableBorderColor),
        ),
      ),
      searchDecoration: InputDecoration(
        hintText: 'Search for places',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConsts.borderRadius),
          borderSide:
              const BorderSide(width: 2, color: AppColors.disableBorderColor),
        ),
      ),
      dropDownList: [
        for (var entry in values.entries)
          DropDownValueModel(name: entry.key, value: entry.value),
      ],
    );
  }
}
