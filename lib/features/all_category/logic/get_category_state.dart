import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_category_state.freezed.dart';

@freezed
class GetCategoryState<T> with _$GetCategoryState<T> {
  const factory GetCategoryState.initial() = _Initial;
  const factory GetCategoryState.loading() = Loading;
  const factory GetCategoryState.success(T category) = Success<T>;
  const factory GetCategoryState.failuer({required String message}) = Error;
}
