import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? status;
  Data? data;
  String? token;
  LoginResponse({this.data, this.token, this.status});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class Data {
  User? user;
  Data({this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class User {
  Photo? photo;
  String? sId;
  String? name;
  String? email;
  String? phone;
  int? iV;
  String? id;
  User(
      {this.photo,
      this.email,
      this.sId,
      this.name,
      this.iV,
      this.id,
      this.phone});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
@JsonSerializable()
class Photo {
  String? publicId;
  String? url;

  Photo({this.publicId, this.url});
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
