import 'package:get/get.dart';
import 'package:murshid_app/app/screen/Navigation/bindings/navigation_bindings.dart';
import 'package:murshid_app/app/screen/Navigation/view/navigation_page.dart';
import 'package:murshid_app/app/screen/auth/binding/auth_binding.dart';
import 'package:murshid_app/app/screen/auth/view/auth_page.dart';
import 'package:murshid_app/app/screen/home_page/binding/home_binding.dart';
import 'package:murshid_app/app/screen/home_page/view/home_page.dart';
import 'package:murshid_app/app/screen/module/hotel/binding/hotel_binding.dart';
import 'package:murshid_app/app/screen/module/hotel/view/hotel_page.dart';
import 'package:murshid_app/app/screen/splash_page/binding/splash_binding.dart';
import 'package:murshid_app/app/screen/splash_page/view/splash_page.dart';

class Routes {
  static const splashPage = '/splashPage';
  static const authPage = '/authPage';
  static const navigationPage = '/navigationPage';
  static const homePage = '/homePage';
  static const hotelPage = '/hotelPage';
  static var routeList = [
    GetPage(
      name: navigationPage,
      page: () => const NavigationPage(),
      bindings: [
        NavigationBinding(),
        HomeBinding(),
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
      name: homePage,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: hotelPage,
      page: () => const HotelPage(),
      binding: HotelBinding(),
    ),
  ];
}
