import 'package:get/get.dart';
import 'package:murshid_app/app/screen/auth/contoller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
