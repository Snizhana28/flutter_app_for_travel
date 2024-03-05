import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/theme/app_colors/app_colors.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.transparent],
            ).createShader(bounds);
          },
          blendMode: BlendMode.modulate,
          child: Text(
            description,
            style: AppTextStyle.textDescription
                .copyWith(color: AppColors.lightGrey),
            overflow: TextOverflow.fade,
          ),
        ),
      ),
    );
  }
}
