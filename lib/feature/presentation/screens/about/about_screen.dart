import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/theme/app_button_style/app_button_style.dart';
import 'package:flutter_app_for_travel/core/theme/app_colors/app_colors.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';
import 'package:flutter_app_for_travel/feature/domain/models/place_dto.dart';
import 'package:flutter_svg/svg.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 460,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 75,
                            spreadRadius: 10,
                            offset: const Offset(0, 20),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(place.imageUrl),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: CircleAvatar(
                                    backgroundColor:
                                        AppColors.grey.withOpacity(0.4),
                                    radius: 20,
                                    child: IconButton(
                                      onPressed: () => Get.back(),
                                      icon: const Icon(
                                        Icons.navigate_before_outlined,
                                        size: 24,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: CircleAvatar(
                                    backgroundColor:
                                        AppColors.grey.withOpacity(0.4),
                                    radius: 20,
                                    child: const Icon(
                                      Icons.bookmark_border_outlined,
                                      size: 24,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 20, left: 30, right: 30),
                              child: BlurryContainer(
                                blur: 10,
                                width: double.infinity,
                                height: 75,
                                elevation: 0,
                                color: const Color(0xFF1D1D1D).withOpacity(0.4),
                                padding: const EdgeInsets.all(10),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("${place.name}, ",
                                                  style:
                                                      AppTextStyle.cardTitel),
                                              Text(place.locationDto.city,
                                                  style: AppTextStyle.cardTitel
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w400))
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
                                                style:
                                                    AppTextStyle.cardSubTitel),
                                          ]),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Price',
                                            style: AppTextStyle.cardSubTitel,
                                          ),
                                          Text(
                                            '${place.price.toString()} \$',
                                            style: AppTextStyle.cardSubTitel,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
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
              const SizedBox(height: 30),
              Row(
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
                        place.time,
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
                        '${place.temp} °C',
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
                        place.rating.toString(),
                        style: AppTextStyle.buttonTextActive
                            .copyWith(color: AppColors.lightGrey),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 135,
                child: Text(
                  place.description,
                  style: AppTextStyle.textDescription,
                  overflow: TextOverflow.fade,
                ),
              ),
              FilledButton(
                style: AppButtonStyle.active.copyWith(
                    backgroundColor: const MaterialStatePropertyAll(
                        AppColors.mainButtonColor)),
                onPressed: () {},
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
