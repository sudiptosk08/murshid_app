import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:murshid_app/app/screen/home_page/controller/home_controller.dart';
import 'package:murshid_app/utils/assets/k_images.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';
import 'package:murshid_app/widgets/custom_appbar/k_appbar.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: KAppBar(
          title: Row(
            children: [
              CircleAvatar(
                radius: 25.w,
                backgroundImage: AssetImage(
                  KImages.profile,
                ),
              ),
              SizedBox(
                width: KSizes.hGapMedium,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello!",
                    style: KTextStyles.bodyText3.copyWith(color: KColors.mute),
                  ),
                  Text(
                    "Roman Sayed",
                    style: KTextStyles.subtitle1.copyWith(
                      color: KColors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          centerTitle: false,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: KSizes.hGapLarge),
              child: CircleAvatar(
                backgroundColor: KColors.primaryColor,
                radius: 25.w,
                child: const Icon(
                  Icons.notifications_active,
                  size: 27,
                  color: KColors.background,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(
              vertical: KSizes.vGapSmall,
            ),
            children: [
              SizedBox(
                height: KSizes.vGapExtraLarge,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: KSizes.hGapLarge,
                  right: KSizes.hGapSmall,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Location Share',
                      style:
                          KTextStyles.subtitle1.copyWith(color: KColors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: KSizes.hGapMedium,
                        vertical: KSizes.vGapSmall,
                      ),
                      child: ToggleSwitch(
                        minWidth: 90.0,
                        minHeight: 30,
                        cornerRadius: 5.0,
                        activeBgColors: [
                          [Colors.green[800]!],
                          [Colors.red[800]!]
                        ],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        initialLabelIndex: 1,
                        totalSwitches: 2,
                        labels: ['ON', 'OFF'],
                        radiusStyle: true,
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: KSizes.vGapLarge * 1.5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: KSizes.hGapMedium),
                child: CarouselSlider.builder(
                  itemCount: controller.specialBanners.length,
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    autoPlay: true,
                    height: 135.h,
                    viewportFraction: 1,
                  ),
                  itemBuilder: (ctx, index, realIdx) {
                    return Container(
                        width: double.infinity,
                        margin:
                            EdgeInsets.symmetric(horizontal: KSizes.hGapSmall),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                          child: Image.asset(
                            controller.specialBanners[index],
                            fit: BoxFit.cover,
                          ),
                        ));
                  },
                ),
              ),
              SizedBox(
                height: KSizes.vGapMedium,
              ),
              Padding(
                padding: EdgeInsets.all(KSizes.hGapLarge),
                child: SizedBox(
                  height: 390.h,
                  width: 380.w,
                  child: GridView.builder(
                    shrinkWrap: true,
                    clipBehavior: Clip.hardEdge,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      vertical: KSizes.vGapMedium,
                    ),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 110.w,
                      mainAxisExtent: 105.w,
                      mainAxisSpacing: KSizes.hGapMedium,
                      crossAxisSpacing: KSizes.hGapMedium,
                    ),
                    itemCount: controller.categories.length,
                    itemBuilder: (context, index) =>
                        controller.categories[index],
                  ),
                ),
              ),
            ]));
  }
}

class CategoryColumn extends StatelessWidget {
  const CategoryColumn({
    super.key,
    required this.name,
    required this.icon,
    required this.tap,
  });
  final String name;
  final String icon;
  final VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
          width: 120.w,
          height: 130.h,
          decoration: BoxDecoration(
              color: KColors.tranparent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                width: 55.w,
                height: 60.h,
              ),
              Text(
                name,
                style: KTextStyles.subtitle1.copyWith(
                  color: KColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
    );
  }
}
