import 'package:get/get.dart';
import 'package:murshid_app/app/screen/hotel/controller/hotel_controller.dart';

class HotelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelController());
  }
}
