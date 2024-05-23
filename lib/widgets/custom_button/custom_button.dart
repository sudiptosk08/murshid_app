import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onTap,
    required this.btnText,
    this.height,
    this.iconData,
    this.iconSize,
    super.key,
    this.iconColor,
    this.radius,
    this.btnColor,
    this.textColor = KColors.white,
    this.isFill = false,
    this.padding = 0,
  });

  final VoidCallback onTap;
  final String btnText;
  final double? iconSize;
  final double? radius;
  final Color? btnColor;
  final Color? iconColor;
  final Color textColor;
  final double? height;
  final IconData? iconData;
  final bool isFill;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: padding),
        height: height ?? 45.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 5.r),
          border: !isFill
              ? null
              : Border.all(
                  color: KColors.primaryColor,
                ),
          color: btnColor,
          // gradient: btnColor == null && !isFill
          //     ? LinearGradient(
          //         colors:,
          //       )
          //     : null,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconData != null)
                Row(
                  children: [
                    Icon(
                      iconData,
                      size: iconSize,
                      color: iconColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              Text(
                btnText,
                style: KTextStyles.subtitle1.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
