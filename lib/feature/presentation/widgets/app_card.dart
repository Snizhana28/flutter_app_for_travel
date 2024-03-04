import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';
import 'package:flutter_app_for_travel/feature/domain/models/place_dto.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.place,
    this.onPressed,
  });

  final PlaceDto place;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 5)),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              IntrinsicWidth(
                stepHeight: 320,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  child: Image.network(
                    place.imageUrl,
                    fit: BoxFit.cover,
                    width: 250,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: BlurryContainer(
                    blur: 10,
                    width: 225,
                    height: 75,
                    elevation: 0,
                    color: const Color(0xFF1D1D1D).withOpacity(0.4),
                    padding: const EdgeInsets.all(10),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("${place.name}, ",
                                  style: AppTextStyle.cardTitel),
                              Text(place.locationDto.city,
                                  style: AppTextStyle.cardTitel
                                      .copyWith(fontWeight: FontWeight.w400))
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(children: [
                            SvgPicture.asset(
                              'assets/icons/location_icon.svg',
                              width: 16,
                              height: 16,
                            ),
                            const SizedBox(width: 10),
                            Text(
                                "${place.locationDto.city}, ${place.locationDto.country}",
                                style: AppTextStyle.cardSubTitel),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
