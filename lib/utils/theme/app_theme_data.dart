import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';

class KTheme {
  static AppBarTheme appBarTheme = AppBarTheme(
    centerTitle: true,
    elevation: 0,
    surfaceTintColor: KColors.white,
    backgroundColor: KColors.background,
    titleTextStyle: TextStyle(
      fontSize: 16.sp,
    ),
    iconTheme: IconThemeData(
      size: 20.sp,
      color: KColors.white,
    ),
  );

  static const BottomAppBarTheme bottomAppBarTheme = BottomAppBarTheme(
    color: KColors.white,
    surfaceTintColor: KColors.white,
  );

  static const BottomSheetThemeData bottomSheetThemeData = BottomSheetThemeData(
    backgroundColor: KColors.background,
    surfaceTintColor: KColors.white,
    shape: RoundedRectangleBorder(),
  );

  static ButtonThemeData buttonTheme = ButtonThemeData(
    buttonColor: KColors.background,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7.r),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: KColors.background,
      primary: KColors.background,
    ),
  );

  static CardTheme cardTheme = CardTheme(
    color: KColors.white,
    surfaceTintColor: KColors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7.r),
    ),
  );

  static ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: KColors.background,
    surfaceTint: KColors.white,
    primary: KColors.background,
    background: KColors.background,
  );

  static DividerThemeData dividerThemeData = DividerThemeData(
    space: 5.h,
  );

  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: KColors.background,
      foregroundColor: KColors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7.r))),
      elevation: 0,
      textStyle: TextStyle(
        fontSize: 14.sp,
        fontFamily: fontFamily,
      ),
    ),
  );

  static String? fontFamily = GoogleFonts.inter().fontFamily;
  // static TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  //   style: TextButton.styleFrom(
  //     textStyle: KTextStyles.bodyText2,
  //     padding: EdgeInsets.all(8.w),
  //   ),
  // );
  static IconThemeData iconThemeData = IconThemeData(
    size: 20.sp,
  );
  static IconButtonThemeData iconButtonThemeData = IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: KColors.background,
      iconSize: 20.sp,
    ),
  );

  static ListTileThemeData listTileThemeData = ListTileThemeData(
    iconColor: KColors.background,
    titleTextStyle: KTextStyles.bodyText2.copyWith(
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.r),
    ),
    subtitleTextStyle: KTextStyles.subtitle1,
  );
}
