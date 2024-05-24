import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/widgets/custom_appbar/k_appbar.dart';
import 'package:murshid_app/widgets/custom_button/custom_button.dart';
import 'package:murshid_app/widgets/custom_text_field/custom_text_field.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

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
            onTap: () {},
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
          KTextField(
            labelText: "Name",
            laveltextColor: KColors.primaryColor,
            heightFactor: 50,
            hintText: "Update your name !",
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          KTextField(
            labelText: "Pilgrim Id",
            laveltextColor: KColors.primaryColor,
            heightFactor: 50,
            hintText: "Up your name !",
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          KTextField(
            labelText: "Phone Number",
            laveltextColor: KColors.primaryColor,
            heightFactor: 50,
            hintText: "Enter your name !",
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          KTextField(
            labelText: "Agency Number",
            laveltextColor: KColors.primaryColor,
            heightFactor: 50,
            hintText: "Enter your name !",
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          KTextField(
            labelText: "Team Number",
            laveltextColor: KColors.primaryColor,
            heightFactor: 50,
            hintText: "Enter your name !",
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          KTextField(
            labelText: "Name",
            laveltextColor: KColors.primaryColor,
            heightFactor: 50,
            hintText: "Enter your name !",
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          KTextField(
            labelText: "Name",
            laveltextColor: KColors.primaryColor,
            heightFactor: 50,
            hintText: "Enter your name !",
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          KTextField(
            labelText: "Name",
            laveltextColor: KColors.primaryColor,
            heightFactor: 50,
            hintText: "Enter your name !",
          ),
          SizedBox(
            height: KSizes.vGapMedium,
          ),
          KTextField(
            labelText: "Name",
            laveltextColor: KColors.primaryColor,
            heightFactor: 50,
            hintText: "Enter your name !",
          ),
        ],
      ),
    );
  }
}
