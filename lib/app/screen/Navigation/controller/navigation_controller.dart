import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:murshid_app/app/screen/home/view/home_page.dart';

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
}
