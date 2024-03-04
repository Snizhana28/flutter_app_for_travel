import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/consts/consts.dart';
import 'package:flutter_app_for_travel/core/theme/app_colors/app_colors.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';
import 'package:flutter_app_for_travel/feature/data/local/local_data.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/home/controllers/home_controller.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/home/home_card_list.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/home/home_custom_app_bar.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/home/home_scroll_buttons.dart';
import 'package:flutter_app_for_travel/feature/presentation/widgets/app_bottom_bar.dart';
import 'package:flutter_app_for_travel/feature/presentation/widgets/app_drop_down_button.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  initState() {
    super.initState();
    Get.put(HomeController());
  }

  Map<String, String> values = {
    'New York': 'new_york',
    'Chikago': 'chikago',
    'Washington': 'washigton',
  };

  final Map<String, Map<Icon, Icon>> items = {
    'Home': {
      const Icon(Iconsax.house, size: 30, color: AppColors.primaryIconsColor):
          const Icon(Iconsax.home,
              size: 30, color: AppColors.secondaryIconsColor),
    },
    'Clock': {
      const Icon(Iconsax.clock, size: 30, color: AppColors.primaryIconsColor):
          const Icon(Iconsax.clock,
              size: 30, color: AppColors.secondaryIconsColor),
    },
    'Favorite': {
      const Icon(Iconsax.heart, size: 30, color: AppColors.primaryIconsColor):
          const Icon(Iconsax.heart,
              size: 30, color: AppColors.secondaryIconsColor),
    },
    'Profile': {
      const Icon(Iconsax.user, size: 30, color: AppColors.primaryIconsColor):
          const Icon(Iconsax.user,
              size: 30, color: AppColors.secondaryIconsColor),
    },
  };

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeController) {
      return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: HomeCustomAppBar(
                    text: 'Hi, Bobr 👋',
                    image: AppConsts.avatarImage,
                  ),
                ),
                const SizedBox(height: AppConsts.paddingHeightMedium),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AppDropDownButton(values: values),
                ),
                const SizedBox(height: AppConsts.paddingHeightMedium),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular places',
                          style:
                              AppTextStyle.primaryText.copyWith(fontSize: 20)),
                      Text('View all',
                          style: AppTextStyle.secondaryText
                              .copyWith(fontSize: 16)),
                    ],
                  ),
                ),
                const SizedBox(height: AppConsts.paddingHeightMedium),
                const HomeScrollButtons(),
                const SizedBox(height: AppConsts.paddingHeightMedium),
                HomeCardList(places: LocalData.places),
              ],
            ),
          ),
          bottomNavigationBar: AppBottomBar(items: items));
    });
  }
}
