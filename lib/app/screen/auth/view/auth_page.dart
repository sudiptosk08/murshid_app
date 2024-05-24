import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:murshid_app/app/screen/auth/contoller/auth_controller.dart';
import 'package:murshid_app/routes/routes.dart';
import 'package:murshid_app/utils/assets/k_images.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';
import 'package:murshid_app/widgets/custom_button/custom_button.dart';
import 'package:murshid_app/widgets/custom_text_field/custom_text_field.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: Padding(
            padding: EdgeInsets.all(KSizes.hGapLarge),
            child: Column(
              children: [
                Image.asset(
                  KImages.murshidLogo,
                  height: 240.h,
                  width: 290.w,
                ),
                SizedBox(
                  height: KSizes.vGapExtraLarge,
                ),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        controller.selectedTab.value = 1;
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 45.h,
                        padding: EdgeInsets.all(KSizes.hGapMedium),
                        decoration: BoxDecoration(
                            color: KColors.tranparent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Text(
                          "Log In",
                          style: KTextStyles.headline3.copyWith(
                              color: controller.selectedTab.value == 1
                                  ? KColors.primaryColor
                                  : KColors.mute),
                        ),
                      ),
                    )),
                    SizedBox(
                      width: KSizes.hGapMedium,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        controller.selectedTab.value = 2;
                      },
                      child: Container(
                        height: 45.h,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(KSizes.hGapMedium),
                        decoration: BoxDecoration(
                            color: KColors.tranparent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Text(
                          "Registration",
                          style: KTextStyles.headline3.copyWith(
                              color: controller.selectedTab.value == 2
                                  ? KColors.primaryColor
                                  : KColors.mute),
                        ),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: KSizes.vGapExtraLarge * 2,
                ),
                controller.selectedTab.value == 1
                    ? Column(
                        children: [
                          KTextField(
                              heightFactor: 50,
                              hintText: "Pilgrim ID",
                              hasPrefixIcon: true,
                              prefixIcon: const Icon(
                                Icons.person,
                                color: KColors.primaryColor,
                                size: 22,
                              ),
                              backgroundColor:
                                  KColors.tranparent.withOpacity(0.1)),
                          SizedBox(
                            height: KSizes.vGapExtraLarge,
                          ),
                          KTextField(
                              heightFactor: 50,
                              hintText: "Password",
                              hasPrefixIcon: true,
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: KColors.primaryColor,
                                size: 22,
                              ),
                              backgroundColor:
                                  KColors.tranparent.withOpacity(0.1)),
                          SizedBox(
                            height: KSizes.vGapExtraLarge * 2,
                          ),
                          CustomButton(
                            btnColor: KColors.tranparent.withOpacity(0.2),
                            btnText: "Submit",
                            textColor: KColors.white,
                            onTap: () {},
                          )
                        ],
                      )
                    : Column(
                        children: [
                          KTextField(
                              heightFactor: 50,
                              hintText: "Pilgrim Name",
                              hasPrefixIcon: true,
                              prefixIcon: const Icon(
                                Icons.person,
                                color: KColors.primaryColor,
                                size: 22,
                              ),
                              backgroundColor:
                                  KColors.tranparent.withOpacity(0.1)),
                          SizedBox(
                            height: KSizes.vGapExtraLarge,
                          ),
                          KTextField(
                              heightFactor: 50,
                              hintText: "Phone Number",
                              hasPrefixIcon: true,
                              prefixIcon: const Icon(
                                Icons.call,
                                color: KColors.primaryColor,
                                size: 22,
                              ),
                              backgroundColor:
                                  KColors.tranparent.withOpacity(0.1)),
                          SizedBox(
                            height: KSizes.vGapExtraLarge,
                          ),
                          KTextField(
                              heightFactor: 50,
                              hintText: "Password",
                              hasPrefixIcon: true,
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: KColors.primaryColor,
                                size: 22,
                              ),
                              backgroundColor:
                                  KColors.tranparent.withOpacity(0.1)),
                          SizedBox(
                            height: KSizes.vGapExtraLarge * 2,
                          ),
                          CustomButton(
                            btnColor: KColors.tranparent.withOpacity(0.2),
                            btnText: "Submit",
                            onTap: () {
                              Get.offAllNamed(Routes.navigationPage);
                            },
                          )
                        ],
                      )
              ],
            ),
          ),
        ));
  }
}
