import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'get_home_data_paid_response.g.dart';

@JsonSerializable()
class GetHomeDataPaidResponse extends Equatable {
  final String? status;
  final int? results;
  final Data? data;

  const GetHomeDataPaidResponse({this.status, this.results, this.data});

  factory GetHomeDataPaidResponse.fromJson(Map<String, dynamic> json) =>
      _$GetHomeDataPaidResponseFromJson(json);

  @override
  List<Object?> get props => [status, data, results];
}

@JsonSerializable()
class Data extends Equatable {
  final List<Posts>? posts;
  const Data({this.posts});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  List<Object?> get props => [posts];
}

@JsonSerializable()
class Posts extends Equatable {
  @JsonKey(name: "_id")
  final String? sId;
  final String? content;
  final String? createdAt;
  final User? user;
  final String? location;
  final String? category;
  final List<Images>? images;
  final int? price;
  @JsonKey(name: "__v")
  final int? iv;
  const Posts({
    this.sId,
    this.content,
    this.price,
    this.createdAt,
    this.user,
    this.location,
    this.category,
    this.images,
    this.iv,
  });
  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);

  @override
  List<Object?> get props => [
        sId,
        content,
        createdAt,
        user,
        location,
        category,
        images,
        iv,
      ];
}

@JsonSerializable()
class User extends Equatable {
  final Photo? photo;
  @JsonKey(name: "_id")
  final String? sId;
  final String? name;
  final String? phone;
  @JsonKey(name: "id")
  final String? id;

  const User({
    this.phone,
    this.sId,
    this.name,
    this.photo,
    this.id,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  List<Object?> get props => [
        phone,
        sId,
        name,
        photo,
        id,
      ];
}

@JsonSerializable()
class Photo extends Equatable {
  @JsonKey(name: "public_id")
  final String? publicId;
  final String? url;
  const Photo({this.publicId, this.url});
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  @override
  List<Object?> get props => [publicId, url];
}

@JsonSerializable()
class Images extends Equatable {
  @JsonKey(name: "public_id")
  final String? publicId;
  final String? url;
  @JsonKey(name: "_id")
  final String? sId;

  const Images({this.publicId, this.url, this.sId});
  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  @override
  List<Object?> get props => [publicId, sId, url];
}
