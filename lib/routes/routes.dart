import 'package:get/get.dart';
import 'package:murshid_app/app/screen/map_location/binding/map_location_binding.dart';
import 'package:murshid_app/app/screen/map_location/view/map_location_page.dart';
import 'package:murshid_app/app/screen/navigation/bindings/navigation_bindings.dart';
import 'package:murshid_app/app/screen/navigation/view/navigation_page.dart';
import 'package:murshid_app/app/screen/auth/binding/auth_binding.dart';
import 'package:murshid_app/app/screen/auth/view/auth_page.dart';
import 'package:murshid_app/app/screen/home/binding/home_binding.dart';
import 'package:murshid_app/app/screen/home/view/home_page.dart';
import 'package:murshid_app/app/screen/hotel/binding/hotel_binding.dart';
import 'package:murshid_app/app/screen/hotel/view/hotel_page.dart';
import 'package:murshid_app/app/screen/profile/view/profile_page.dart';
import 'package:murshid_app/app/screen/profile/view/update_profile_page.dart';
import 'package:murshid_app/app/screen/settings/binding/settings_binding.dart';
import 'package:murshid_app/app/screen/settings/view/settings_page.dart';
import 'package:murshid_app/app/screen/splash_page/binding/splash_binding.dart';
import 'package:murshid_app/app/screen/splash_page/view/splash_page.dart';
import 'package:murshid_app/app/screen/support/binding/support_binding.dart';
import 'package:murshid_app/app/screen/support/view/support_page.dart';

class Routes {
  static const splashPage = '/splashPage';
  static const authPage = '/authPage';
  static const navigationPage = '/navigationPage';
  static const homePage = '/homePage';
  static const hotelPage = '/hotelPage';
  static const settingPage = '/settingPage';
  static const supportPage = '/supportPage';
  static const profilePage = '/profilepage';
  static const updateProfilePage = '/updateProfilePage';
  static const mapLocationPage = '/mapLocationPage';

  static var routeList = [
    GetPage(
      name: navigationPage,
      page: () => const NavigationPage(),
      bindings: [
        NavigationBinding(),
        HomeBinding(),
        SettingBinding(),
      ],
    ),
    GetPage(
      name: authPage,
      page: () => const AuthPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: splashPage,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: profilePage,
      page: () => const ProfilePage(),
      // binding: SplashBinding(),
    ),
    GetPage(
      name: updateProfilePage,
      page: () => const UpdateProfilePage(),
      // binding: SplashBinding(),
    ),
    GetPage(
      name: homePage,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: hotelPage,
      page: () => const HotelPage(),
      binding: HotelBinding(),
    ),
    GetPage(
      name: settingPage,
      page: () => const SettingPage(),
      // binding: SettingBinding(),
    ),
    GetPage(
      name: supportPage,
      page: () => SupportPage(),
      binding: SupportBinding(),
    ),
    GetPage(
      name: mapLocationPage,
      page: () => const MapLocationPage(),
      binding: MapLocationBinding(),
    ),
  ];
}
