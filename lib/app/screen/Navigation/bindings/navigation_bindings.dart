import 'package:get/get.dart';
import 'package:murshid_app/app/screen/Navigation/controller/navigation_controller.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
  }
}
