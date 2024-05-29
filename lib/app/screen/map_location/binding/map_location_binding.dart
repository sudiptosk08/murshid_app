import 'package:get/get.dart';
import 'package:murshid_app/app/screen/map_location/controller/map_location_controller.dart';

class MapLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapLocationController());
  }
}
