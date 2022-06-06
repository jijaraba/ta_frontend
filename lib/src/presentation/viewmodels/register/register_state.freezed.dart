// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool success, AccessToken accessToken) success,
    required TResult Function(ErrorType type, String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool success, AccessToken accessToken)? success,
    TResult Function(ErrorType type, String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool success, AccessToken accessToken)? success,
    TResult Function(ErrorType type, String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStateInitial value) initial,
    required TResult Function(_RegisterStateLoading value) loading,
    required TResult Function(_RegisterStateSuccess value) success,
    required TResult Function(_RegisterError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateSuccess value)? success,
    TResult Function(_RegisterError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateSuccess value)? success,
    TResult Function(_RegisterError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;
}

/// @nodoc
abstract class _$$_RegisterStateInitialCopyWith<$Res> {
  factory _$$_RegisterStateInitialCopyWith(_$_RegisterStateInitial value,
          $Res Function(_$_RegisterStateInitial) then) =
      __$$_RegisterStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterStateInitialCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterStateInitialCopyWith<$Res> {
  __$$_RegisterStateInitialCopyWithImpl(_$_RegisterStateInitial _value,
      $Res Function(_$_RegisterStateInitial) _then)
      : super(_value, (v) => _then(v as _$_RegisterStateInitial));

  @override
  _$_RegisterStateInitial get _value => super._value as _$_RegisterStateInitial;
}

/// @nodoc

class _$_RegisterStateInitial implements _RegisterStateInitial {
  const _$_RegisterStateInitial();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool success, AccessToken accessToken) success,
    required TResult Function(ErrorType type, String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool success, AccessToken accessToken)? success,
    TResult Function(ErrorType type, String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool success, AccessToken accessToken)? success,
    TResult Function(ErrorType type, String? error)? error,
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
    required TResult Function(_RegisterStateInitial value) initial,
    required TResult Function(_RegisterStateLoading value) loading,
    required TResult Function(_RegisterStateSuccess value) success,
    required TResult Function(_RegisterError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateSuccess value)? success,
    TResult Function(_RegisterError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateSuccess value)? success,
    TResult Function(_RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RegisterStateInitial implements RegisterState {
  const factory _RegisterStateInitial() = _$_RegisterStateInitial;
}

/// @nodoc
abstract class _$$_RegisterStateLoadingCopyWith<$Res> {
  factory _$$_RegisterStateLoadingCopyWith(_$_RegisterStateLoading value,
          $Res Function(_$_RegisterStateLoading) then) =
      __$$_RegisterStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterStateLoadingCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterStateLoadingCopyWith<$Res> {
  __$$_RegisterStateLoadingCopyWithImpl(_$_RegisterStateLoading _value,
      $Res Function(_$_RegisterStateLoading) _then)
      : super(_value, (v) => _then(v as _$_RegisterStateLoading));

  @override
  _$_RegisterStateLoading get _value => super._value as _$_RegisterStateLoading;
}

/// @nodoc

class _$_RegisterStateLoading implements _RegisterStateLoading {
  const _$_RegisterStateLoading();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool success, AccessToken accessToken) success,
    required TResult Function(ErrorType type, String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool success, AccessToken accessToken)? success,
    TResult Function(ErrorType type, String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool success, AccessToken accessToken)? success,
    TResult Function(ErrorType type, String? error)? error,
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
    required TResult Function(_RegisterStateInitial value) initial,
    required TResult Function(_RegisterStateLoading value) loading,
    required TResult Function(_RegisterStateSuccess value) success,
    required TResult Function(_RegisterError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateSuccess value)? success,
    TResult Function(_RegisterError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateSuccess value)? success,
    TResult Function(_RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RegisterStateLoading implements RegisterState {
  const factory _RegisterStateLoading() = _$_RegisterStateLoading;
}

/// @nodoc
abstract class _$$_RegisterStateSuccessCopyWith<$Res> {
  factory _$$_RegisterStateSuccessCopyWith(_$_RegisterStateSuccess value,
          $Res Function(_$_RegisterStateSuccess) then) =
      __$$_RegisterStateSuccessCopyWithImpl<$Res>;
  $Res call({bool success, AccessToken accessToken});
}

/// @nodoc
class __$$_RegisterStateSuccessCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterStateSuccessCopyWith<$Res> {
  __$$_RegisterStateSuccessCopyWithImpl(_$_RegisterStateSuccess _value,
      $Res Function(_$_RegisterStateSuccess) _then)
      : super(_value, (v) => _then(v as _$_RegisterStateSuccess));

  @override
  _$_RegisterStateSuccess get _value => super._value as _$_RegisterStateSuccess;

  @override
  $Res call({
    Object? success = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$_RegisterStateSuccess(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as AccessToken,
    ));
  }
}

/// @nodoc

class _$_RegisterStateSuccess implements _RegisterStateSuccess {
  const _$_RegisterStateSuccess(
      {required this.success, required this.accessToken});

  @override
  final bool success;
  @override
  final AccessToken accessToken;

  @override
  String toString() {
    return 'RegisterState.success(success: $success, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterStateSuccess &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(accessToken));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterStateSuccessCopyWith<_$_RegisterStateSuccess> get copyWith =>
      __$$_RegisterStateSuccessCopyWithImpl<_$_RegisterStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool success, AccessToken accessToken) success,
    required TResult Function(ErrorType type, String? error) error,
  }) {
    return success(this.success, accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool success, AccessToken accessToken)? success,
    TResult Function(ErrorType type, String? error)? error,
  }) {
    return success?.call(this.success, accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool success, AccessToken accessToken)? success,
    TResult Function(ErrorType type, String? error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success, accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStateInitial value) initial,
    required TResult Function(_RegisterStateLoading value) loading,
    required TResult Function(_RegisterStateSuccess value) success,
    required TResult Function(_RegisterError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateSuccess value)? success,
    TResult Function(_RegisterError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateSuccess value)? success,
    TResult Function(_RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RegisterStateSuccess implements RegisterState {
  const factory _RegisterStateSuccess(
      {required final bool success,
      required final AccessToken accessToken}) = _$_RegisterStateSuccess;

  bool get success => throw _privateConstructorUsedError;
  AccessToken get accessToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RegisterStateSuccessCopyWith<_$_RegisterStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterErrorCopyWith<$Res> {
  factory _$$_RegisterErrorCopyWith(
          _$_RegisterError value, $Res Function(_$_RegisterError) then) =
      __$$_RegisterErrorCopyWithImpl<$Res>;
  $Res call({ErrorType type, String? error});
}

/// @nodoc
class __$$_RegisterErrorCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterErrorCopyWith<$Res> {
  __$$_RegisterErrorCopyWithImpl(
      _$_RegisterError _value, $Res Function(_$_RegisterError) _then)
      : super(_value, (v) => _then(v as _$_RegisterError));

  @override
  _$_RegisterError get _value => super._value as _$_RegisterError;

  @override
  $Res call({
    Object? type = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_RegisterError(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ErrorType,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterError implements _RegisterError {
  const _$_RegisterError(this.type, [this.error]);

  @override
  final ErrorType type;
  @override
  final String? error;

  @override
  String toString() {
    return 'RegisterState.error(type: $type, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterError &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterErrorCopyWith<_$_RegisterError> get copyWith =>
      __$$_RegisterErrorCopyWithImpl<_$_RegisterError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool success, AccessToken accessToken) success,
    required TResult Function(ErrorType type, String? error) error,
  }) {
    return error(type, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool success, AccessToken accessToken)? success,
    TResult Function(ErrorType type, String? error)? error,
  }) {
    return error?.call(type, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool success, AccessToken accessToken)? success,
    TResult Function(ErrorType type, String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(type, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStateInitial value) initial,
    required TResult Function(_RegisterStateLoading value) loading,
    required TResult Function(_RegisterStateSuccess value) success,
    required TResult Function(_RegisterError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateSuccess value)? success,
    TResult Function(_RegisterError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateSuccess value)? success,
    TResult Function(_RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RegisterError implements RegisterState {
  const factory _RegisterError(final ErrorType type, [final String? error]) =
      _$_RegisterError;

  ErrorType get type => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RegisterErrorCopyWith<_$_RegisterError> get copyWith =>
      throw _privateConstructorUsedError;
}
