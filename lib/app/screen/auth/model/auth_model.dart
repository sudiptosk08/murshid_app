// To parse this JSON data, do
//
//     final AuthModel = userModelFromJson(jsonString);

import 'dart:convert';

AuthModel userModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String userModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  final bool success;
  final String message;
  final Data data;

  AuthModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  final String accessToken;
  final String tokenType;
  final User user;

  Data({
    required this.accessToken,
    required this.tokenType,
    required this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "user": user.toJson(),
      };
}

class User {
  final int id;
  final String name;
  final dynamic email;
  final dynamic emailVerifiedAt;
  final String pilgrimId;
  final dynamic phoneBd;
  final dynamic phoneSd;
  final dynamic agencyNumber;
  final dynamic teamNumber;
  final String status;
  final String userType;
  final String passportNumber;
  final dynamic passportImage;
  final dynamic visaFile;
  final dynamic familyContact;
  final dynamic image;
  final dynamic latitude;
  final dynamic longitude;
  final dynamic bearing;
  final String teamId;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.pilgrimId,
    required this.phoneBd,
    required this.phoneSd,
    required this.agencyNumber,
    required this.teamNumber,
    required this.status,
    required this.userType,
    required this.passportNumber,
    required this.passportImage,
    required this.visaFile,
    required this.familyContact,
    required this.image,
    required this.latitude,
    required this.longitude,
    required this.bearing,
    required this.teamId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        pilgrimId: json["pilgrim_id"],
        phoneBd: json["phone_bd"],
        phoneSd: json["phone_sd"],
        agencyNumber: json["agency_number"],
        teamNumber: json["team_number"],
        status: json["status"],
        userType: json["user_type"],
        passportNumber: json["passport_number"],
        passportImage: json["passport_image"],
        visaFile: json["visa_file"],
        familyContact: json["family_contact"],
        image: json["image"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        bearing: json["bearing"],
        teamId: json["team_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "pilgrim_id": pilgrimId,
        "phone_bd": phoneBd,
        "phone_sd": phoneSd,
        "agency_number": agencyNumber,
        "team_number": teamNumber,
        "status": status,
        "user_type": userType,
        "passport_number": passportNumber,
        "passport_image": passportImage,
        "visa_file": visaFile,
        "family_contact": familyContact,
        "image": image,
        "latitude": latitude,
        "longitude": longitude,
        "bearing": bearing,
        "team_id": teamId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
