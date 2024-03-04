import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/home/controllers/home_controller.dart';
import 'package:flutter_app_for_travel/feature/presentation/widgets/app_button.dart';
import 'package:get/get.dart';

class HomeScrollButtons extends StatelessWidget {
  const HomeScrollButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeController) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: [
            const SizedBox(width: 10),
            for (var item in homeController.buttonTextMap.entries)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: AppButton(
                  onPressed: () {
                    homeController.changeButtonState(item.key);
                  },
                  isActive: item.value,
                  text: item.key,
                ),
              ),
          ],
        ),
      );
    });
  }
}
