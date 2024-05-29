import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:murshid_app/app/screen/map_location/controller/map_location_controller.dart';

class MapLocationPage extends GetView<MapLocationController> {
  const MapLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: MapLocationController.initialPosition,
        onMapCreated: (GoogleMapController controller) {
          mapController.complete(controller);
        },
        mapType: MapType.normal,
        markers: Set<Marker>.of(MapLocationController.markerList),
      ),
    );
  }
}
