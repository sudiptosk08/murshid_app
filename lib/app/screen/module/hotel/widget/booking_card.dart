import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:murshid_app/utils/assets/k_images.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';
import 'package:murshid_app/widgets/custom_button/custom_button.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
    required this.index,
    this.leftBtn,
    this.rightBtn,
  });

  final int index;
  final Widget? leftBtn;
  final Widget? rightBtn;

  @override
  Widget build(BuildContext context) {
    RxList<int> expandedIndex = <int>[].obs;
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
                                  color: KColors.primaryColor.withOpacity(0.6),
                                ),
                                child: index == 2 || index == 4
                                    ? Text(
                                        'Mokka',
                                        style: KTextStyles.bodyText2.copyWith(
                                            color: KColors.background),
                                      )
                                    : Text(
                                        'Madinah',
                                        style: KTextStyles.bodyText2.copyWith(
                                            color: KColors.background),
                                      ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: KSizes.vGapSmall,
                          ),
                          Text(
                            "Al Madinah Golden",
                            style: KTextStyles.bodyText1.copyWith(
                                fontWeight: FontWeight.bold,
                                color: KColors.white),
                          ),
                          SizedBox(
                            height: KSizes.vGapSmall,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: KColors.primaryColor,
                              ),
                              SizedBox(
                                width: KSizes.hGapSmall,
                              ),
                              Text(
                                "5 April , 2024 (Check In)",
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
                              Icon(
                                Icons.call,
                                color: KColors.primaryColor,
                              ),
                              SizedBox(
                                width: KSizes.hGapSmall,
                              ),
                              Text(
                                "+ 96-4478-966621",
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
              CustomButton(
                btnColor: KColors.primaryColor.withOpacity(0.6),
                iconData: Icons.location_pin,
                iconColor: KColors.red,
                onTap: () {},
                btnText: "Direction",
                iconSize: 28,
                textColor: KColors.background,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
