import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_last_10_posts_state.freezed.dart';

@freezed
class GetLast10PostsState<T> with _$GetLast10PostsState<T> {
  const factory GetLast10PostsState.initial() = _Initial;
  const factory GetLast10PostsState.loading() = Loading;
  const factory GetLast10PostsState.success(T posts) = Success<T>;
  const factory GetLast10PostsState.failuer({required String message}) = Error;
}
