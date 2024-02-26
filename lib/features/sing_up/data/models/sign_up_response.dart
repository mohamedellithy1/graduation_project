import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? status;
  String? token;
  Data? data;

  SignUpResponse({this.status, this.token, this.data});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class Data {
  User? user;

  Data({this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class User {
  String? name;
  String? email;
  Photo? photo;
  String? phone;
  bool? active;
  String? sId;
  int? iv;
  String? id;

  User(
      {this.name,
      this.email,
      this.photo,
      this.phone,
      this.active,
      this.sId,
      this.id,
      this.iv});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@JsonSerializable()
class Photo {
  String? url;
  Photo({this.url});
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
