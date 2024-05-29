import 'package:flutter/material.dart';
import 'package:murshid_app/utils/toast/toast_message.dart';

class ErrorMessage {
  static void message(String apiName, Object error) {
    debugPrint('Error from $apiName api service ==> $error');
    ToastMessage.error('Something went Wrong!');
  }
}
