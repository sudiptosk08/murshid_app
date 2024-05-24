import 'package:get/get.dart';
import 'package:murshid_app/app/screen/settings/controller/setting_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingController());
  }
}
