import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:murshid_app/app/screen/splash_page/controller/splash_controller.dart';
import 'package:murshid_app/utils/assets/k_images.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              KImages.murshidLogo,
              height: 320.h,
              width: 320.w,
            ),
            SizedBox(
              height: KSizes.vGapMedium,
            ),
            controller.loadingIndicator
          ],
        ),
      ),
    );
  }
}
