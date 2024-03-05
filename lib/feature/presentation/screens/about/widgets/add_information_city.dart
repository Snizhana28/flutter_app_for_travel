import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/theme/app_colors/app_colors.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';

class AddInformationPlace extends StatelessWidget {
  const AddInformationPlace({
    super.key,
    required this.time,
    required this.temp,
    required this.rating,
  });

  final String time;
  final int temp;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.silver,
              ),
              child: const Icon(
                Icons.schedule_sharp,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              time,
              style: AppTextStyle.buttonTextActive
                  .copyWith(color: AppColors.lightGrey),
            )
          ],
        ),
        Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.silver,
              ),
              child: const Icon(
                Icons.cloud,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              '$temp °C',
              style: AppTextStyle.buttonTextActive
                  .copyWith(color: AppColors.lightGrey),
            )
          ],
        ),
        Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.silver,
              ),
              child: const Icon(
                Icons.star,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              rating.toString(),
              style: AppTextStyle.buttonTextActive
                  .copyWith(color: AppColors.lightGrey),
            )
          ],
        ),
      ],
    );
  }
}
