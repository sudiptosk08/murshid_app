import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:murshid_app/app/screen/navigation/controller/navigation_controller.dart';
import 'package:murshid_app/app/screen/home/view/home_page.dart';
import 'package:murshid_app/app/screen/settings/view/settings_page.dart';
import 'package:murshid_app/app/screen/support/view/support_page.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';

class NavigationPage extends GetView<NavigationController> {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 50.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: controller.selectedIndex.value == 0
                    ? KColors.primaryColor.withOpacity(0.75)
                    : KColors.mute.withOpacity(0.35),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_search,
                color: controller.selectedIndex.value == 1
                    ? KColors.primaryColor.withOpacity(0.75)
                    : KColors.mute.withOpacity(0.35),
              ),
              label: "Info",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: controller.selectedIndex.value == 2
                    ? KColors.primaryColor.withOpacity(0.75)
                    : KColors.mute.withOpacity(0.35),
              ),
              label: "Setting",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.support_agent,
                color: controller.selectedIndex.value == 3
                    ? KColors.primaryColor.withOpacity(0.75)
                    : KColors.mute.withOpacity(0.35),
              ),
              label: "Support",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: KColors.primaryColor,
          showUnselectedLabels: true,
          unselectedItemColor: KColors.mute.withOpacity(0.6),
          selectedLabelStyle: KTextStyles.bodyText2.copyWith(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: KTextStyles.bodyText2,
          onTap: (int index) {
            controller.selectedIndex.value = index;
          },
          backgroundColor: KColors.mute.withOpacity(0.05),
        ),
        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: [
            const HomePage(),
            const Center(
              child: Text("User "),
            ),
            const SettingPage(),
            SupportPage(),
          ],
        ),
      ),
    );
  }
}
