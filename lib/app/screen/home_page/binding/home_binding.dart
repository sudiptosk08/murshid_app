import 'package:get/get.dart';
import 'package:murshid_app/app/screen/home_page/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
