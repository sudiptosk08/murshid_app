import 'package:get/get.dart';
import 'package:murshid_app/app/screen/splash_page/controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
