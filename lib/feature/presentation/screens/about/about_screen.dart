import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/theme/app_button_style/app_button_style.dart';
import 'package:flutter_app_for_travel/core/theme/app_colors/app_colors.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';
import 'package:flutter_app_for_travel/feature/domain/models/place_dto.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/about/widgets/add_information_city.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/about/widgets/background_card_city.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/about/widgets/description_place.dart';
import 'package:get/get.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final PlaceDto place = Get.arguments;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Wrap(
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              BackgroundCardPlace(place: place),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Overview',
                    style: AppTextStyle.title,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    'Details',
                    style: AppTextStyle.subTitle,
                  ),
                ],
              ),
              AddInformationPlace(
                time: place.time,
                temp: place.temp,
                rating: place.rating,
              ),
              DescriptionPlace(description: place.description),
              FilledButton(
                style: AppButtonStyle.active.copyWith(
                  backgroundColor:
                      const MaterialStatePropertyAll(AppColors.mainButtonColor),
                ),
                onPressed: () {
                  //TODO: Add functionality button
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Book Now',
                      style: AppTextStyle.buttonText,
                    ),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.send,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
