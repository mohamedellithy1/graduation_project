// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_home_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHomeDataResponse _$GetHomeDataResponseFromJson(Map<String, dynamic> json) =>
    GetHomeDataResponse(
      status: json['status'] as String?,
      results: json['results'] as int?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetHomeDataResponseToJson(
        GetHomeDataResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Posts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'posts': instance.posts,
    };

Posts _$PostsFromJson(Map<String, dynamic> json) => Posts(
      sId: json['_id'] as String?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      location: json['location'] as String?,
      category: json['category'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      iv: json['__v'] as int?,
    );

Map<String, dynamic> _$PostsToJson(Posts instance) => <String, dynamic>{
      '_id': instance.sId,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'user': instance.user,
      'location': instance.location,
      'category': instance.category,
      'images': instance.images,
      '__v': instance.iv,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      phone: json['phone'] as String?,
      sId: json['_id'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'photo': instance.photo,
      '_id': instance.sId,
      'name': instance.name,
      'phone': instance.phone,
      'id': instance.id,
    };

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      publicId: json['public_id'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'public_id': instance.publicId,
      'url': instance.url,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      publicId: json['public_id'] as String?,
      url: json['url'] as String?,
      sId: json['_id'] as String?,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'public_id': instance.publicId,
      'url': instance.url,
      '_id': instance.sId,
    };
