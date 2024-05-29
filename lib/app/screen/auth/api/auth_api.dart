import 'package:murshid_app/app/backend/api_method/api_method.dart';
import 'package:murshid_app/app/backend/api_urls/api_urls.dart';
import 'package:murshid_app/app/backend/error_message/error_message.dart';
import 'package:murshid_app/app/screen/auth/model/auth_model.dart';

class AuthApi {
  static Future<AuthModel?> loginApi({
    required Map<String, dynamic> body,
  }) async {
    Map<String, dynamic>? response;
    try {
      response = await ApiMethod(isBasic: true).post(
        ApiUrls.login,
        body: body,
        code: 200,
      );
      if (response != null) {
        return AuthModel.fromJson(response);
      }
    } catch (e) {
      ErrorMessage.message(
        ApiUrls.login,
        e,
      );
      return null;
    }
    return null;
  }
}
