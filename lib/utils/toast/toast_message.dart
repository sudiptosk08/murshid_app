import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToastMessage {
  static const double _padding = 8;
  static const double _borderWidth = 1;
  static const double _borderRadius = 10;
  static const double _opacity = 0.5;
  static const Color _colorText = Colors.black;
  static const int _duration = 1500;
  static const bool _shouldIconPulse = true;

  static success(String message) {
    return Get.snackbar(
      'Success',
      message,
      padding: const EdgeInsets.all(_padding),
      borderWidth: _borderWidth,
      borderRadius: _borderRadius,
      borderColor: Colors.green,
      backgroundColor: Colors.green[300]!.withOpacity(_opacity),
      colorText: _colorText,
      icon: const Icon(
        Icons.done_outline_outlined,
        color: Colors.green,
      ),
      duration: const Duration(milliseconds: _duration),
      shouldIconPulse: _shouldIconPulse,
    );
  }

  static error(String message) {
    return Get.snackbar(
      'Alert',
      message,
      padding: const EdgeInsets.all(_padding),
      borderWidth: _borderWidth,
      borderRadius: _borderRadius,
      borderColor: Colors.red,
      backgroundColor: Colors.red[300]!.withOpacity(_opacity),
      colorText: _colorText,
      icon: const Icon(
        Icons.error_outlined,
        color: Colors.red,
      ),
      duration: const Duration(milliseconds: _duration),
      shouldIconPulse: _shouldIconPulse,
    );
  }
}
