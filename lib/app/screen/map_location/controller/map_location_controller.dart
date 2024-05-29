import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

var latitude = double.parse(Get.arguments['lat']);
var longitude = double.parse(Get.arguments['long']);
var hotelName = Get.arguments['hotelName'];
Completer<GoogleMapController> mapController = Completer();

class MapLocationController extends GetxController {
  @override
  void onInit() {
    markerList;
    super.onInit();
  }

  static CameraPosition initialPosition =
      CameraPosition(target: LatLng(latitude, longitude), zoom: 16);
  static List<Marker> myMarker = [];

  static List<Marker> markerList = [
    Marker(
      position: LatLng(
        latitude,
        longitude,
      ),
      markerId: const MarkerId('First'),
      visible: true,
      infoWindow: InfoWindow(
        title: hotelName,
      ),
    )
  ];
}
