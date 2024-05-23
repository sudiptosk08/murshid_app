import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';

class SpecialOfferBanner extends StatelessWidget {
  const SpecialOfferBanner({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 130.0.h,
      margin: EdgeInsets.symmetric(horizontal: KSizes.hGapSmall),
      decoration: BoxDecoration(
        color: KColors.primaryColor,
        borderRadius: BorderRadius.circular(5.r),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
