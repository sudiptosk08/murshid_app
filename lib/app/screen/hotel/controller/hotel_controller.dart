import 'package:get/get.dart';
import 'package:murshid_app/app/screen/hotel/api/hotel_api.dart';
import 'package:murshid_app/app/screen/hotel/model/hotel_model.dart';

class HotelController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getHotelDetails();
  }

  late HotelData hotelData;
  RxBool isLoading = false.obs;
  RxBool isDataFetchFailed = false.obs;

  Future<void> getHotelDetails() async {
    isLoading.value = true;
    HotelModel? res =
        await HotelDetailsApi.getHotelDetails(id: Get.arguments["id"]); 
    if (res != null) {
      hotelData = res.data;

      isLoading.value = false;
    } else {
      isDataFetchFailed.value = true;
    }
  }
  
  
            

      
}
