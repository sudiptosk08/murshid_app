import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:murshid_app/app/backend/common_response/common_response.dart';
import 'package:murshid_app/app/backend/error_message/error_dialog.dart';
import 'package:murshid_app/app/backend/logger/logger.dart';
import 'package:murshid_app/local_storage/local_storage.dart';
import 'package:murshid_app/routes/routes.dart';
import 'package:murshid_app/utils/toast/toast_message.dart';

 final log = logger(ApiMethod);

class ApiMethod {
  ApiMethod({
    required this.isBasic,
    this.showLog = false,
    this.showStatusCode = false,
    this.barrierDismissible = true,
    this.showTimeoutDialog = false,
  });

  bool isBasic;
  bool showLog;
  bool showStatusCode;
  bool barrierDismissible;
  bool showTimeoutDialog;

  Map<String, String> _basicHeaderInfo() {
    return {
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.contentTypeHeader: "application/json",
    };
  }

  Future<Map<String, String>> _bearerHeaderInfo() async {
    String accessToken = LocalStorage.getApiToken()!;

    return {
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: "Bearer $accessToken",
    };
  }

  Future<Map<String, dynamic>?> get(
    String url, {
    int code = 200,
  }) async {
    if (showLog) {
      log.i(
          '|📍📍📍|----------------- [[ GET ]] method details start -----------------|📍📍📍|');

      log.i(url);

      log.i(
          '|📍📍📍|----------------- [[ GET ]] method details ended -----------------|📍📍📍|');
    }

    try {
      final response = await http
          .get(
            Uri.parse(url),
            headers: isBasic ? _basicHeaderInfo() : await _bearerHeaderInfo(),
          )
          .timeout(const Duration(seconds: 15));

      if (showLog) {
        log.i(
            '|📒📒📒|-----------------[[ GET ]] method response start -----------------|📒📒📒|');

        log.i(response.statusCode);
        log.i(response.body.toString());

        log.i(
            '|📒📒📒|-----------------[[ GET ]] method response end -----------------|📒📒📒|');
      }

      if (response.statusCode == code) {
        return jsonDecode(response.body);
      } else {
        _errorOnStatusCode(response, showStatusCode);
        return null;
      }
    } on SocketException {
      log.e('🐞🐞🐞 Error Alert on Socket Exception 🐞🐞🐞');
      _socketException();

      return null;
    } on TimeoutException {
      _timeOutException(url);

      return null;
    } on http.ClientException catch (err, stackTrace) {
      _errorLogsClientException(err, stackTrace);

      return null;
    } catch (e) {
      _otherError(e);

      return null;
    }
  }

  Future<Map<String, dynamic>?> post(
    String url, {
    Map<String, dynamic>? body,
    int code = 200,
  }) async {
    try {
      if (showLog) {
        log.i(
            '|📍📍📍|-----------------[[ POST ]] method details start -----------------|📍📍📍|');

        log.i(url);

        log.i(body);

        log.i(
            '|📍📍📍|-----------------[[ POST ]] method details end ------------|📍📍📍|');
      }

      final response = await http
          .post(
            Uri.parse(url),
            body: jsonEncode(body),
            headers: isBasic ? _basicHeaderInfo() : await _bearerHeaderInfo(),
          )
          .timeout(const Duration(seconds: 30));

      if (showLog) {
        log.i(
            '|📒📒📒|-----------------[[ POST ]] method response start ------------------|📒📒📒|');

        log.i(response.body.toString());

        log.i(response.statusCode);

        log.i(
            '|📒📒📒|-----------------[[ POST ]] method response end --------------------|📒📒📒|');
      }

      if (response.statusCode == code) {
        return jsonDecode(response.body);
      } else {
        _errorOnStatusCode(response, showStatusCode);

        return null;
      }
    } on SocketException {
      _socketException();
      return null;
    } on TimeoutException {
      _timeOutException(url);

      return null;
    } on http.ClientException catch (err, stackTrace) {
      _errorLogsClientException(err, stackTrace);

      return null;
    } catch (e) {
      _otherError(e);

      return null;
    }
  }

  Future<Map<String, dynamic>?> multipart({
    required String url,
    Map<String, String>? body,
    List<String>? filePathList,
    String? filePath,
    required String fileName,
    int code = 200,
  }) async {
    try {
      if (showLog) {
        log.i(
            '|📍📍📍|-----------------[[ Multipart ]] method details start -----------------|📍📍📍|');

        log.i(url);

        log.i(body);
        log.i(filePath);

        log.i(
            '|📍📍📍|-----------------[[ Multipart ]] method details end ------------|📍📍📍|');
      }

      final request = http.MultipartRequest(
        'POST',
        Uri.parse(url),
      )..headers.addAll(
          isBasic ? _basicHeaderInfo() : await _bearerHeaderInfo(),
        );

      if (filePath != null) {
        request.files.add(
          await http.MultipartFile.fromPath(fileName, filePath),
        );
      } else {
        for (int i = 0; i < filePathList!.length; i++) {
          request.files.add(
            await http.MultipartFile.fromPath(fileName, filePathList[i]),
          );
        }
      }

      if (body != null) {
        request.fields.addAll(body);
      }

      var response = await request.send();
      var jsonData = await http.Response.fromStream(response);

      if (showLog) {
        log.i(
            '|📒📒📒|-----------------[[ POST ]] method response start ------------------|📒📒📒|');

        log.i(jsonData.body.toString());

        log.i(response.statusCode);

        log.i(
            '|📒📒📒|-----------------[[ POST ]] method response end --------------------|📒📒📒|');
      }

      if (response.statusCode == code) {
        return jsonDecode(jsonData.body) as Map<String, dynamic>;
      } else {
        _errorOnStatusCode(jsonData, showStatusCode);
        return null;
      }
    } on SocketException {
      _socketException();

      return null;
    } on TimeoutException {
      _timeOutException(url);

      return null;
    } on http.ClientException catch (err, stackTrace) {
      _errorLogsClientException(err, stackTrace);

      return null;
    } catch (e) {
      _otherError(e);

      return null;
    }
  }

  void _errorOnStatusCode(var response, bool showStatusCode) {
    log.e('🐞🐞🐞 Error Alert On Status Code: ${response.statusCode} 🐞🐞🐞');

    log.e(
      'unknown error hitted in status code, body: ${jsonDecode(response.body)}',
    );

    CommonResponse res = CommonResponse.fromJson(jsonDecode(response.body));
    log.e(showStatusCode);
    if (showStatusCode) {
      ErrorDialog.message(
          title: "Under Maintenance",
          message:
              'This app is under maintenance, we will be back soon. Thanks for your patience.',
          statusCode: response.statusCode,
          barrierDismissible: barrierDismissible);
    }

    // if Unauthenticated then redirect the user to login page, and remove previously saved localstorage
    if (res.message.toLowerCase() == "unauthenticated.") {
      Get.offAllNamed(Routes.authPage);
      LocalStorage.logout();
    }

    ToastMessage.error(res.message.toString());
  }

  void _socketException() {
    log.e('🐞🐞🐞 Error Alert on Socket Exception 🐞🐞🐞');
    ErrorDialog.message(
      title: 'No internet',
      message: 'Check your Internet Connection and try again!',
      barrierDismissible: barrierDismissible,
    );
    // ToastMessage.error('Check your Internet Connection and try again!');
  }

  void _timeOutException(String url) {
    log.e('🐞🐞🐞 Error Alert Timeout Exception🐞🐞🐞');

    log.e('Time out exception$url');
    if (showTimeoutDialog) {
      ErrorDialog.message(
          title: 'Poor Internet',
          message: 'Check your Internet Connection and try again!',
          barrierDismissible: barrierDismissible);
      return;
    }
    ToastMessage.error('Poor Internet connection');
  }

  void _errorLogsClientException(
      http.ClientException err, StackTrace stackTrace) {
    log.e('🐞🐞🐞 Error Alert Client Exception🐞🐞🐞');

    log.e('client exception hitted');

    log.e(err.toString());

    log.e(stackTrace.toString());
  }

  void _otherError(Object e) {
    log.e('🐞🐞🐞 Other Error Alert 🐞🐞🐞');

    log.e('❌❌❌ unlisted error received');

    log.e("❌❌❌ $e");
  }
}
