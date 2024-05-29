import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:murshid_app/routes/routes.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/theme/app_theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
    await GetStorage.init();
  await Future.delayed(const Duration(milliseconds: 300));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 780),
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Murshid',
          builder: (context, widget) {
            ScreenUtil.init(context);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: const TextScaler.linear(1.0),
              ),
              child: widget!,
            );
          },
          theme: ThemeData(
            useMaterial3: true,
            appBarTheme: KTheme.appBarTheme,
            bottomAppBarTheme: KTheme.bottomAppBarTheme,
            bottomSheetTheme: KTheme.bottomSheetThemeData,
            buttonTheme: KTheme.buttonTheme,
            cardTheme: KTheme.cardTheme,
            colorScheme: KTheme.colorScheme,
            dividerTheme: KTheme.dividerThemeData,
            fontFamily: KTheme.fontFamily,
            scaffoldBackgroundColor: KColors.background,
            // textButtonTheme: KTheme.textButtonThemeData,
            listTileTheme: KTheme.listTileThemeData,
            textTheme: GoogleFonts.interTextTheme(
              Theme.of(context).textTheme,
            ),
            iconButtonTheme: KTheme.iconButtonThemeData,
            iconTheme: KTheme.iconThemeData,
          ),
          initialRoute: Routes.splashPage,
          getPages: Routes.routeList,
          navigatorKey: Get.key,
        );
      },
    );
  }
}
