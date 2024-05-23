import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:murshid_app/routes/routes.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("ami bujlam na bepar");
    navigateToNextPage();
    super.onInit();
  }

  var loadingIndicator = const CupertinoActivityIndicator(
    color: KColors.primaryColor,
  );
  Future<void> navigateToNextPage() async {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.toNamed(Routes.authPage);
      },
    );
  }
}
