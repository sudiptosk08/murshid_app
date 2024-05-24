import 'package:get/get.dart';
import 'package:murshid_app/app/screen/home/controller/home_controller.dart';

class SupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
