import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:murshid_app/routes/routes.dart';
import 'package:murshid_app/utils/assets/k_images.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';
import 'package:murshid_app/widgets/custom_button/custom_button.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
    required this.index,
    required this.location,
    required this.hotelName,
    required this.checkIn,
    required this.checkOut,
    required this.lat,
    required this.long,
  });

  final int index;
  final String location;
  final String hotelName;
  final String checkIn;

  final String checkOut;
  final String lat;
  final String long;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(Routes.serviceDetailsPage);
      },
      borderRadius: BorderRadius.circular(5.r),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
        color: KColors.tranparent.withOpacity(0.5),
        elevation: 1,
        shadowColor: KColors.mute.withOpacity(0.3),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: KSizes.vGapSmall,
            horizontal: KSizes.hGapMedium,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: KColors.white,
                            image: DecorationImage(
                                image: AssetImage(KImages.banner2),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(
                        width: KSizes.hGapMedium,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: KSizes.vGapSmall,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(KSizes.hGapSmall),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    color: KColors.mute.withOpacity(0.2),
                                  ),
                                  child: Text(
                                    location,
                                    style: KTextStyles.bodyText2
                                        .copyWith(color: KColors.white),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: KSizes.vGapSmall,
                          ),
                          Text(
                            hotelName,
                            style: KTextStyles.bodyText1.copyWith(
                                fontWeight: FontWeight.bold,
                                color: KColors.white),
                          ),
                          SizedBox(
                            height: KSizes.vGapSmall,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: KColors.primaryColor,
                              ),
                              SizedBox(
                                width: KSizes.hGapSmall,
                              ),
                              Text(
                                "$checkIn (Check In)",
                                style: KTextStyles.subtitle2.copyWith(
                                  color: KColors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: KSizes.vGapSmall,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: KColors.primaryColor,
                              ),
                              SizedBox(
                                width: KSizes.hGapSmall,
                              ),
                              Text(
                                "$checkOut (Check Out)",
                                style: KTextStyles.subtitle2.copyWith(
                                  color: KColors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: KSizes.vGapSmall,
              ),
              Row(
                children: [
                  // Expanded(
                  //   child: CustomButton(
                  //     btnColor: KColors.mute.withOpacity(0.2),
                  //     iconData: Icons.view_timeline,
                  //     iconColor: KColors.white,
                  //     onTap: () {},
                  //     btnText: "View Details",
                  //     iconSize: 25,
                  //     textColor: KColors.white,
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: KSizes.hGapMedium,
                  // ),
                  Expanded(
                    child: CustomButton(
                      btnColor: KColors.mute.withOpacity(0.2),
                      iconData: Icons.location_history,
                      iconColor: KColors.white,
                      onTap: () {
                        Get.toNamed(Routes.mapLocationPage, arguments: {
                          "lat": lat,
                          "long": long,
                          "hotelName": hotelName.toString()
                        });
                      },
                      btnText: "View Direction",
                      iconSize: 26,
                      textColor: KColors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
