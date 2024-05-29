import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:murshid_app/routes/routes.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';
import 'package:murshid_app/widgets/custom_appbar/k_appbar.dart';
import 'package:murshid_app/widgets/custom_button/custom_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(
        title: Text(
          'Your Profile',
          style: TextStyle(
            color: KColors.white,
          ),
        ),
        backgroundColor: KColors.background,
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: KSizes.hGapMedium,
            vertical: KSizes.vGapSmall,
          ),
          child: CustomButton(
            btnText: "Update",
            btnColor: KColors.tranparent.withOpacity(0.2),
            onTap: () {
              Get.toNamed(Routes.updateProfilePage);
            },
          )),
      body: ListView(
        padding: EdgeInsets.all(KSizes.vGapMedium),
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: 90.w,
                  height: 90.h,
                  child: Image.asset(
                    "assets/icon/user.png",
                  ),
                ),
                Positioned(
                  right: 3.0,
                  bottom: 5,
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: KColors.white,
                    child: CircleAvatar(
                      radius: 18.r,
                      backgroundColor: KColors.primaryColor,
                      child: const Icon(
                        Icons.photo_camera,
                        color: KColors.background,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(KSizes.hGapMedium),
            decoration: BoxDecoration(
                color: KColors.tranparent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.r)),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 30,
                  color: KColors.primaryColor,
                ),
                SizedBox(
                  width: KSizes.hGapMedium * 1.2,
                ),
                RichText(
                    text: TextSpan(
                        text: "Name\n",
                        style: KTextStyles.bodyText2.copyWith(
                          color: KColors.primaryColor,
                        ),
                        children: [
                      TextSpan(
                        text: "Roman Sayed",
                        style: KTextStyles.bodyText1.copyWith(
                          color: KColors.white,
                        ),
                      )
                    ])),
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(KSizes.hGapMedium),
            decoration: BoxDecoration(
                color: KColors.tranparent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.r)),
            child: Row(
              children: [
                const Icon(
                  Icons.verified_user_rounded,
                  size: 30,
                  color: KColors.primaryColor,
                ),
                SizedBox(
                  width: KSizes.hGapMedium * 1.2,
                ),
                RichText(
                    text: TextSpan(
                        text: "Pilgrim ID\n",
                        style: KTextStyles.bodyText2.copyWith(
                          color: KColors.primaryColor,
                        ),
                        children: [
                      TextSpan(
                        text: "P039342",
                        style: KTextStyles.bodyText1.copyWith(
                          color: KColors.white,
                        ),
                      )
                    ])),
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(KSizes.hGapMedium),
            decoration: BoxDecoration(
                color: KColors.tranparent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.r)),
            child: Row(
              children: [
                const Icon(
                  Icons.contact_emergency,
                  size: 30,
                  color: KColors.primaryColor,
                ),
                SizedBox(
                  width: KSizes.hGapMedium * 1.2,
                ),
                RichText(
                    text: TextSpan(
                        text: "BD Mobile Number\n",
                        style: KTextStyles.bodyText2.copyWith(
                          color: KColors.primaryColor,
                        ),
                        children: [
                      TextSpan(
                        text: "01758-039342",
                        style: KTextStyles.bodyText1.copyWith(
                          color: KColors.white,
                        ),
                      )
                    ])),
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(KSizes.hGapMedium),
            decoration: BoxDecoration(
                color: KColors.tranparent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.r)),
            child: Row(
              children: [
                const Icon(
                  Icons.contact_emergency,
                  size: 30,
                  color: KColors.primaryColor,
                ),
                SizedBox(
                  width: KSizes.hGapMedium * 1.2,
                ),
                RichText(
                    text: TextSpan(
                        text: "Saudi Mobile Number\n",
                        style: KTextStyles.bodyText2.copyWith(
                          color: KColors.primaryColor,
                        ),
                        children: [
                      TextSpan(
                        text: "+99758-039342",
                        style: KTextStyles.bodyText1.copyWith(
                          color: KColors.white,
                        ),
                      )
                    ])),
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(KSizes.hGapMedium),
            decoration: BoxDecoration(
                color: KColors.tranparent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.r)),
            child: Row(
              children: [
                const Icon(
                  Icons.contact_phone,
                  size: 30,
                  color: KColors.primaryColor,
                ),
                SizedBox(
                  width: KSizes.hGapMedium * 1.2,
                ),
                RichText(
                    text: TextSpan(
                        text: "Agency Number\n",
                        style: KTextStyles.bodyText2.copyWith(
                          color: KColors.primaryColor,
                        ),
                        children: [
                      TextSpan(
                        text: "+99758-039342",
                        style: KTextStyles.bodyText1.copyWith(
                          color: KColors.white,
                        ),
                      )
                    ])),
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(KSizes.hGapMedium),
            decoration: BoxDecoration(
                color: KColors.tranparent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.r)),
            child: Row(
              children: [
                const Icon(
                  Icons.contact_phone,
                  size: 30,
                  color: KColors.primaryColor,
                ),
                SizedBox(
                  width: KSizes.hGapMedium * 1.2,
                ),
                RichText(
                    text: TextSpan(
                        text: "Team Number\n",
                        style: KTextStyles.bodyText2.copyWith(
                          color: KColors.primaryColor,
                        ),
                        children: [
                      TextSpan(
                        text: "+99758-039342",
                        style: KTextStyles.bodyText1.copyWith(
                          color: KColors.white,
                        ),
                      )
                    ])),
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(KSizes.hGapMedium),
            decoration: BoxDecoration(
                color: KColors.tranparent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.r)),
            child: Row(
              children: [
                const Icon(
                  Icons.lock,
                  size: 30,
                  color: KColors.primaryColor,
                ),
                SizedBox(
                  width: KSizes.hGapMedium * 1.2,
                ),
                RichText(
                    text: TextSpan(
                        text: "Password\n",
                        style: KTextStyles.bodyText2.copyWith(
                          color: KColors.primaryColor,
                        ),
                        children: [
                      TextSpan(
                        text: "Dipu32422",
                        style: KTextStyles.bodyText1.copyWith(
                          color: KColors.white,
                        ),
                      )
                    ])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
