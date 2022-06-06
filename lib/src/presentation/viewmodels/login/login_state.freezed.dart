// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool exists, String uid, String email) success,
    required TResult Function(LoginErrorType type, String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool exists, String uid, String email)? success,
    TResult Function(LoginErrorType type, String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool exists, String uid, String email)? success,
    TResult Function(LoginErrorType type, String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateSuccess value) success,
    required TResult Function(_LoginStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$_LoginStateInitialCopyWith<$Res> {
  factory _$$_LoginStateInitialCopyWith(_$_LoginStateInitial value,
          $Res Function(_$_LoginStateInitial) then) =
      __$$_LoginStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateInitialCopyWith<$Res> {
  __$$_LoginStateInitialCopyWithImpl(
      _$_LoginStateInitial _value, $Res Function(_$_LoginStateInitial) _then)
      : super(_value, (v) => _then(v as _$_LoginStateInitial));

  @override
  _$_LoginStateInitial get _value => super._value as _$_LoginStateInitial;
}

/// @nodoc

class _$_LoginStateInitial implements _LoginStateInitial {
  const _$_LoginStateInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool exists, String uid, String email) success,
    required TResult Function(LoginErrorType type, String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool exists, String uid, String email)? success,
    TResult Function(LoginErrorType type, String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool exists, String uid, String email)? success,
    TResult Function(LoginErrorType type, String? error)? error,
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateSuccess value) success,
    required TResult Function(_LoginStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginStateInitial implements LoginState {
  const factory _LoginStateInitial() = _$_LoginStateInitial;
}

/// @nodoc
abstract class _$$_LoginStateLoadingCopyWith<$Res> {
  factory _$$_LoginStateLoadingCopyWith(_$_LoginStateLoading value,
          $Res Function(_$_LoginStateLoading) then) =
      __$$_LoginStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateLoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateLoadingCopyWith<$Res> {
  __$$_LoginStateLoadingCopyWithImpl(
      _$_LoginStateLoading _value, $Res Function(_$_LoginStateLoading) _then)
      : super(_value, (v) => _then(v as _$_LoginStateLoading));

  @override
  _$_LoginStateLoading get _value => super._value as _$_LoginStateLoading;
}

/// @nodoc

class _$_LoginStateLoading implements _LoginStateLoading {
  const _$_LoginStateLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool exists, String uid, String email) success,
    required TResult Function(LoginErrorType type, String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool exists, String uid, String email)? success,
    TResult Function(LoginErrorType type, String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool exists, String uid, String email)? success,
    TResult Function(LoginErrorType type, String? error)? error,
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateSuccess value) success,
    required TResult Function(_LoginStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoginStateLoading implements LoginState {
  const factory _LoginStateLoading() = _$_LoginStateLoading;
}

/// @nodoc
abstract class _$$_LoginStateSuccessCopyWith<$Res> {
  factory _$$_LoginStateSuccessCopyWith(_$_LoginStateSuccess value,
          $Res Function(_$_LoginStateSuccess) then) =
      __$$_LoginStateSuccessCopyWithImpl<$Res>;
  $Res call({bool exists, String uid, String email});
}

/// @nodoc
class __$$_LoginStateSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateSuccessCopyWith<$Res> {
  __$$_LoginStateSuccessCopyWithImpl(
      _$_LoginStateSuccess _value, $Res Function(_$_LoginStateSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoginStateSuccess));

  @override
  _$_LoginStateSuccess get _value => super._value as _$_LoginStateSuccess;

  @override
  $Res call({
    Object? exists = freezed,
    Object? uid = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_LoginStateSuccess(
      exists: exists == freezed
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginStateSuccess implements _LoginStateSuccess {
  const _$_LoginStateSuccess(
      {required this.exists, required this.uid, required this.email});

  @override
  final bool exists;
  @override
  final String uid;
  @override
  final String email;

  @override
  String toString() {
    return 'LoginState.success(exists: $exists, uid: $uid, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginStateSuccess &&
            const DeepCollectionEquality().equals(other.exists, exists) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exists),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateSuccessCopyWith<_$_LoginStateSuccess> get copyWith =>
      __$$_LoginStateSuccessCopyWithImpl<_$_LoginStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool exists, String uid, String email) success,
    required TResult Function(LoginErrorType type, String? error) error,
  }) {
    return success(exists, uid, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool exists, String uid, String email)? success,
    TResult Function(LoginErrorType type, String? error)? error,
  }) {
    return success?.call(exists, uid, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool exists, String uid, String email)? success,
    TResult Function(LoginErrorType type, String? error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(exists, uid, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateSuccess value) success,
    required TResult Function(_LoginStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoginStateSuccess implements LoginState {
  const factory _LoginStateSuccess(
      {required final bool exists,
      required final String uid,
      required final String email}) = _$_LoginStateSuccess;

  bool get exists => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoginStateSuccessCopyWith<_$_LoginStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginStateErrorCopyWith<$Res> {
  factory _$$_LoginStateErrorCopyWith(
          _$_LoginStateError value, $Res Function(_$_LoginStateError) then) =
      __$$_LoginStateErrorCopyWithImpl<$Res>;
  $Res call({LoginErrorType type, String? error});
}

/// @nodoc
class __$$_LoginStateErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateErrorCopyWith<$Res> {
  __$$_LoginStateErrorCopyWithImpl(
      _$_LoginStateError _value, $Res Function(_$_LoginStateError) _then)
      : super(_value, (v) => _then(v as _$_LoginStateError));

  @override
  _$_LoginStateError get _value => super._value as _$_LoginStateError;

  @override
  $Res call({
    Object? type = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_LoginStateError(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LoginErrorType,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginStateError implements _LoginStateError {
  const _$_LoginStateError(this.type, [this.error]);

  @override
  final LoginErrorType type;
  @override
  final String? error;

  @override
  String toString() {
    return 'LoginState.error(type: $type, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginStateError &&
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
  _$$_LoginStateErrorCopyWith<_$_LoginStateError> get copyWith =>
      __$$_LoginStateErrorCopyWithImpl<_$_LoginStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool exists, String uid, String email) success,
    required TResult Function(LoginErrorType type, String? error) error,
  }) {
    return error(type, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool exists, String uid, String email)? success,
    TResult Function(LoginErrorType type, String? error)? error,
  }) {
    return error?.call(type, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool exists, String uid, String email)? success,
    TResult Function(LoginErrorType type, String? error)? error,
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateSuccess value) success,
    required TResult Function(_LoginStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LoginStateError implements LoginState {
  const factory _LoginStateError(final LoginErrorType type,
      [final String? error]) = _$_LoginStateError;

  LoginErrorType get type => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoginStateErrorCopyWith<_$_LoginStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
