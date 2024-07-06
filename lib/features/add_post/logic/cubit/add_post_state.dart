
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_post_state.freezed.dart';

@freezed
class AddPostState<T> with _$AddPostState {
  const factory AddPostState.initial() = _Initial;
  const factory AddPostState.loading() = AddPostLoading;
  const factory AddPostState.success(T data) = AddPostSuccess<T>;
  const factory AddPostState.failure({required String error}) = AddPostFailure;
}
