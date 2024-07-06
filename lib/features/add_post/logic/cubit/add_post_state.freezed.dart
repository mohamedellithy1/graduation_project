// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddPostState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddPostLoading<T> value) loading,
    required TResult Function(AddPostSuccess<T> value) success,
    required TResult Function(AddPostFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddPostLoading<T> value)? loading,
    TResult? Function(AddPostSuccess<T> value)? success,
    TResult? Function(AddPostFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddPostLoading<T> value)? loading,
    TResult Function(AddPostSuccess<T> value)? success,
    TResult Function(AddPostFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPostStateCopyWith<T, $Res> {
  factory $AddPostStateCopyWith(
          AddPostState<T> value, $Res Function(AddPostState<T>) then) =
      _$AddPostStateCopyWithImpl<T, $Res, AddPostState<T>>;
}

/// @nodoc
class _$AddPostStateCopyWithImpl<T, $Res, $Val extends AddPostState<T>>
    implements $AddPostStateCopyWith<T, $Res> {
  _$AddPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$AddPostStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AddPostState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddPostLoading<T> value) loading,
    required TResult Function(AddPostSuccess<T> value) success,
    required TResult Function(AddPostFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddPostLoading<T> value)? loading,
    TResult? Function(AddPostSuccess<T> value)? success,
    TResult? Function(AddPostFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddPostLoading<T> value)? loading,
    TResult Function(AddPostSuccess<T> value)? success,
    TResult Function(AddPostFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AddPostState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$AddPostLoadingImplCopyWith<T, $Res> {
  factory _$$AddPostLoadingImplCopyWith(_$AddPostLoadingImpl<T> value,
          $Res Function(_$AddPostLoadingImpl<T>) then) =
      __$$AddPostLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddPostLoadingImplCopyWithImpl<T, $Res>
    extends _$AddPostStateCopyWithImpl<T, $Res, _$AddPostLoadingImpl<T>>
    implements _$$AddPostLoadingImplCopyWith<T, $Res> {
  __$$AddPostLoadingImplCopyWithImpl(_$AddPostLoadingImpl<T> _value,
      $Res Function(_$AddPostLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddPostLoadingImpl<T> implements AddPostLoading<T> {
  const _$AddPostLoadingImpl();

  @override
  String toString() {
    return 'AddPostState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddPostLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddPostLoading<T> value) loading,
    required TResult Function(AddPostSuccess<T> value) success,
    required TResult Function(AddPostFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddPostLoading<T> value)? loading,
    TResult? Function(AddPostSuccess<T> value)? success,
    TResult? Function(AddPostFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddPostLoading<T> value)? loading,
    TResult Function(AddPostSuccess<T> value)? success,
    TResult Function(AddPostFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddPostLoading<T> implements AddPostState<T> {
  const factory AddPostLoading() = _$AddPostLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AddPostSuccessImplCopyWith<T, $Res> {
  factory _$$AddPostSuccessImplCopyWith(_$AddPostSuccessImpl<T> value,
          $Res Function(_$AddPostSuccessImpl<T>) then) =
      __$$AddPostSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AddPostSuccessImplCopyWithImpl<T, $Res>
    extends _$AddPostStateCopyWithImpl<T, $Res, _$AddPostSuccessImpl<T>>
    implements _$$AddPostSuccessImplCopyWith<T, $Res> {
  __$$AddPostSuccessImplCopyWithImpl(_$AddPostSuccessImpl<T> _value,
      $Res Function(_$AddPostSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AddPostSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AddPostSuccessImpl<T> implements AddPostSuccess<T> {
  const _$AddPostSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AddPostState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPostSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPostSuccessImplCopyWith<T, _$AddPostSuccessImpl<T>> get copyWith =>
      __$$AddPostSuccessImplCopyWithImpl<T, _$AddPostSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddPostLoading<T> value) loading,
    required TResult Function(AddPostSuccess<T> value) success,
    required TResult Function(AddPostFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddPostLoading<T> value)? loading,
    TResult? Function(AddPostSuccess<T> value)? success,
    TResult? Function(AddPostFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddPostLoading<T> value)? loading,
    TResult Function(AddPostSuccess<T> value)? success,
    TResult Function(AddPostFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AddPostSuccess<T> implements AddPostState<T> {
  const factory AddPostSuccess(final T data) = _$AddPostSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$AddPostSuccessImplCopyWith<T, _$AddPostSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPostFailureImplCopyWith<T, $Res> {
  factory _$$AddPostFailureImplCopyWith(_$AddPostFailureImpl<T> value,
          $Res Function(_$AddPostFailureImpl<T>) then) =
      __$$AddPostFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddPostFailureImplCopyWithImpl<T, $Res>
    extends _$AddPostStateCopyWithImpl<T, $Res, _$AddPostFailureImpl<T>>
    implements _$$AddPostFailureImplCopyWith<T, $Res> {
  __$$AddPostFailureImplCopyWithImpl(_$AddPostFailureImpl<T> _value,
      $Res Function(_$AddPostFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddPostFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddPostFailureImpl<T> implements AddPostFailure<T> {
  const _$AddPostFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AddPostState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPostFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPostFailureImplCopyWith<T, _$AddPostFailureImpl<T>> get copyWith =>
      __$$AddPostFailureImplCopyWithImpl<T, _$AddPostFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddPostLoading<T> value) loading,
    required TResult Function(AddPostSuccess<T> value) success,
    required TResult Function(AddPostFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddPostLoading<T> value)? loading,
    TResult? Function(AddPostSuccess<T> value)? success,
    TResult? Function(AddPostFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddPostLoading<T> value)? loading,
    TResult Function(AddPostSuccess<T> value)? success,
    TResult Function(AddPostFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AddPostFailure<T> implements AddPostState<T> {
  const factory AddPostFailure({required final String error}) =
      _$AddPostFailureImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$AddPostFailureImplCopyWith<T, _$AddPostFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
