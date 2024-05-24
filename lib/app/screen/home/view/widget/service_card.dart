import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.serviceName,
    required this.serviceProviderName,
    required this.rating,
    required this.servicePrice,
    required this.serviceImage,
    required this.ontap,
  });
  final String serviceName;
  final String servicePrice;
  final String serviceImage;
  final String serviceProviderName;
  final String rating;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    double cardHeight = 150.h;

    return InkWell(
      onTap: ontap,
      borderRadius: BorderRadius.circular(5.r),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: cardHeight * 0.65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.r),
                      topRight: Radius.circular(5.r),
                    ),
                    color: KColors.primaryColor.withOpacity(0.45),
                    image: DecorationImage(
                      image: AssetImage(serviceImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: KSizes.hGapMedium,
                      vertical: KSizes.vGapMedium,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: KSizes.hGapSmall,
                            vertical: KSizes.vGapSmall / 2,
                          ),
                          decoration: BoxDecoration(
                            color: KColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.star_rate_rounded,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: KSizes.hGapSmall,
                              ),
                              Text(
                                rating,
                                style: KTextStyles.label2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: KColors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: KSizes.hGapSmall,
                            vertical: KSizes.vGapSmall / 2,
                          ),
                          decoration: BoxDecoration(
                            color: KColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: const Icon(
                            Icons.bookmark_rounded,
                            color: KColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: KSizes.vGapSmall,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: KSizes.hGapSmall),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          serviceName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: KTextStyles.bodyText2.copyWith(
                              fontWeight: FontWeight.normal,
                              color: KColors.white),
                        ),
                      ),
                      SizedBox(
                        width: KSizes.hGapSmall,
                      ),
                      Text(
                        '\$ $servicePrice',
                        style: KTextStyles.bodyText3.copyWith(
                          color: KColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: KSizes.hGapSmall).copyWith(
                bottom: KSizes.vGapSmall * 1.5,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: KColors.primaryColor,
                    size: 16.sp,
                  ),
                  SizedBox(
                    width: KSizes.hGapSmall,
                  ),
                  Expanded(
                    child: Text(
                      serviceProviderName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: KTextStyles.subtitle2.copyWith(
                        fontSize: 9.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
