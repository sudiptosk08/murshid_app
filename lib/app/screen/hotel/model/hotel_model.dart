// To parse this JSON data, do
//
//     final hotelModel = hotelModelFromJson(jsonString);

import 'dart:convert';

HotelModel hotelModelFromJson(String str) =>
    HotelModel.fromJson(json.decode(str));

String hotelModelToJson(HotelModel data) => json.encode(data.toJson());

class HotelModel {
  final bool success;
  final String message;
  final HotelData data;

  HotelModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        success: json["success"],
        message: json["message"],
        data: HotelData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class HotelData {
  final int id;
  final String name;
  final String leadId;
  final String status;
  final String createdAt;
  final String updatedAt;
  final List<HotelMap> hotelMap;

  HotelData({
    required this.id,
    required this.name,
    required this.leadId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.hotelMap,
  });

  factory HotelData.fromJson(Map<String, dynamic> json) => HotelData(
        id: json["id"],
        name: json["name"],
        leadId: json["lead_id"],
        status: json["status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        hotelMap: List<HotelMap>.from(
            json["hotel_map"].map((x) => HotelMap.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "lead_id": leadId,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "hotel_map": List<dynamic>.from(hotelMap.map((x) => x.toJson())),
      };
}

class HotelMap {
  final int id;
  final String leadId;
  final String hotelId;
  final String startDate;
  final String endDate;
  final String createdAt;
  final String updatedAt;
  final Hotel hotel;

  HotelMap({
    required this.id,
    required this.leadId,
    required this.hotelId,
    required this.startDate,
    required this.endDate,
    required this.createdAt,
    required this.updatedAt,
    required this.hotel,
  });

  factory HotelMap.fromJson(Map<String, dynamic> json) => HotelMap(
        id: json["id"],
        leadId: json["lead_id"],
        hotelId: json["hotel_id"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        hotel: Hotel.fromJson(json["hotel"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "lead_id": leadId,
        "hotel_id": hotelId,
        "start_date": startDate,
        "end_date": endDate,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "hotel": hotel.toJson(),
      };
}

class Hotel {
  final int id;
  final String name;
  final String phone;
  final String location;
  final String status;
  final String latitude;
  final String longitude;
  final String createdAt;
  final String updatedAt;

  Hotel({
    required this.id,
    required this.name,
    required this.phone,
    required this.location,
    required this.status,
    required this.latitude,
    required this.longitude,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        location: json["location"],
        status: json["status"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "location": location,
        "status": status,
        "latitude": latitude,
        "longitude": longitude,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
