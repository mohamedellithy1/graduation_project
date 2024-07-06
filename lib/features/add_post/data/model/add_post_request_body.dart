import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'add_post_request_body.g.dart';
// @JsonSerializable()
class AddPostRequestBody extends Equatable {
  final List<File>? images;
  final String? content;
  final String? category;
  final String? location;

  AddPostRequestBody(
      {required this.images,
      required this.content,
      required this.category,
      required this.location});

  //  Map<String, dynamic> toJson() =>_$AddPostRequestBodyToJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [images, content, category, location];
}
