import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_last_10_posts_paid_state.freezed.dart';

@freezed
class GetLast10PostsPaidState<T> with _$GetLast10PostsPaidState<T> {
  const factory GetLast10PostsPaidState.initial() = _Initial;
  const factory GetLast10PostsPaidState.loading() = Loading;
  const factory GetLast10PostsPaidState.success(T posts) = Success<T>;
  const factory GetLast10PostsPaidState.failuer({required String message}) = Error;
}
