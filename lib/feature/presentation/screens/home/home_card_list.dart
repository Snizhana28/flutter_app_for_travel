import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/router/router.dart';
import 'package:flutter_app_for_travel/feature/domain/domain_exports.dart';
import 'package:flutter_app_for_travel/feature/presentation/widgets/app_card.dart';
import 'package:get/get.dart';

class HomeCardList extends StatelessWidget {
  const HomeCardList({super.key, required this.places});

  final List<PlaceDto> places;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          const SizedBox(width: 10),
          for (var place in places)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: AppCard(
                place: place,
                onPressed: () => Get.toNamed(AppRouter.about, arguments: place),
              ),
            ),
        ],
      ),
    );
  }
}
