import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';

class HomeCustomAppBar extends StatelessWidget {
  ///Widget for custom app bar which incude text and image of user
  const HomeCustomAppBar({super.key, required this.text, required this.image});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text, style: AppTextStyle.primaryText),
            const SizedBox(height: 5),
            Text('Explore the world', style: AppTextStyle.secondaryText),
          ],
        ),
        CircleAvatar(radius: 30, backgroundImage: NetworkImage(image)),
      ],
    );
  }
}
