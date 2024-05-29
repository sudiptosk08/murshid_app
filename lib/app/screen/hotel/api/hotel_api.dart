import 'package:murshid_app/app/backend/api_method/api_method.dart';
import 'package:murshid_app/app/backend/api_urls/api_urls.dart';
import 'package:murshid_app/app/backend/error_message/error_message.dart';
import 'package:murshid_app/app/screen/hotel/model/hotel_model.dart';

class HotelDetailsApi {
  static Future<HotelModel?> getHotelDetails({required int id}) async {
    Map<String, dynamic>? res;
    try {
      res = await ApiMethod(
        isBasic: false,
      ).get("${ApiUrls.userHotels}/$id");

      if (res != null) {
        HotelModel hotelModel = HotelModel.fromJson(res);
        return hotelModel;
      }
    } catch (e) {
      ErrorMessage.message('GET Hotel Details', e);
      return null;
    }
    return null;
  }
}
