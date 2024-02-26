import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = SignupLoading;
  const factory SignUpState.success(T data) = SignUpSuccess<T>;
  const factory SignUpState.failure({required String error}) = SignUpFailure;
}
