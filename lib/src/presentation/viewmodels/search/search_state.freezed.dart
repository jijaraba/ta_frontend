// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String lng, String lan) success,
    required TResult Function(SearchErrorType type, String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lan)? success,
    TResult Function(SearchErrorType type, String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lan)? success,
    TResult Function(SearchErrorType type, String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateSuccess value) success,
    required TResult Function(_SearchStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$$_SearchStateInitialCopyWith<$Res> {
  factory _$$_SearchStateInitialCopyWith(_$_SearchStateInitial value,
          $Res Function(_$_SearchStateInitial) then) =
      __$$_SearchStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchStateInitialCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateInitialCopyWith<$Res> {
  __$$_SearchStateInitialCopyWithImpl(
      _$_SearchStateInitial _value, $Res Function(_$_SearchStateInitial) _then)
      : super(_value, (v) => _then(v as _$_SearchStateInitial));

  @override
  _$_SearchStateInitial get _value => super._value as _$_SearchStateInitial;
}

/// @nodoc

class _$_SearchStateInitial implements _SearchStateInitial {
  const _$_SearchStateInitial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String lng, String lan) success,
    required TResult Function(SearchErrorType type, String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lan)? success,
    TResult Function(SearchErrorType type, String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lan)? success,
    TResult Function(SearchErrorType type, String? error)? error,
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
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateSuccess value) success,
    required TResult Function(_SearchStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchStateInitial implements SearchState {
  const factory _SearchStateInitial() = _$_SearchStateInitial;
}

/// @nodoc
abstract class _$$_SearchStateLoadingCopyWith<$Res> {
  factory _$$_SearchStateLoadingCopyWith(_$_SearchStateLoading value,
          $Res Function(_$_SearchStateLoading) then) =
      __$$_SearchStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchStateLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateLoadingCopyWith<$Res> {
  __$$_SearchStateLoadingCopyWithImpl(
      _$_SearchStateLoading _value, $Res Function(_$_SearchStateLoading) _then)
      : super(_value, (v) => _then(v as _$_SearchStateLoading));

  @override
  _$_SearchStateLoading get _value => super._value as _$_SearchStateLoading;
}

/// @nodoc

class _$_SearchStateLoading implements _SearchStateLoading {
  const _$_SearchStateLoading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String lng, String lan) success,
    required TResult Function(SearchErrorType type, String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lan)? success,
    TResult Function(SearchErrorType type, String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lan)? success,
    TResult Function(SearchErrorType type, String? error)? error,
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
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateSuccess value) success,
    required TResult Function(_SearchStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchStateLoading implements SearchState {
  const factory _SearchStateLoading() = _$_SearchStateLoading;
}

/// @nodoc
abstract class _$$_SearchStateSuccessCopyWith<$Res> {
  factory _$$_SearchStateSuccessCopyWith(_$_SearchStateSuccess value,
          $Res Function(_$_SearchStateSuccess) then) =
      __$$_SearchStateSuccessCopyWithImpl<$Res>;
  $Res call({String lng, String lan});
}

/// @nodoc
class __$$_SearchStateSuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateSuccessCopyWith<$Res> {
  __$$_SearchStateSuccessCopyWithImpl(
      _$_SearchStateSuccess _value, $Res Function(_$_SearchStateSuccess) _then)
      : super(_value, (v) => _then(v as _$_SearchStateSuccess));

  @override
  _$_SearchStateSuccess get _value => super._value as _$_SearchStateSuccess;

  @override
  $Res call({
    Object? lng = freezed,
    Object? lan = freezed,
  }) {
    return _then(_$_SearchStateSuccess(
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      lan: lan == freezed
          ? _value.lan
          : lan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchStateSuccess implements _SearchStateSuccess {
  const _$_SearchStateSuccess({required this.lng, required this.lan});

  @override
  final String lng;
  @override
  final String lan;

  @override
  String toString() {
    return 'SearchState.success(lng: $lng, lan: $lan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStateSuccess &&
            const DeepCollectionEquality().equals(other.lng, lng) &&
            const DeepCollectionEquality().equals(other.lan, lan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lng),
      const DeepCollectionEquality().hash(lan));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateSuccessCopyWith<_$_SearchStateSuccess> get copyWith =>
      __$$_SearchStateSuccessCopyWithImpl<_$_SearchStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String lng, String lan) success,
    required TResult Function(SearchErrorType type, String? error) error,
  }) {
    return success(lng, lan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lan)? success,
    TResult Function(SearchErrorType type, String? error)? error,
  }) {
    return success?.call(lng, lan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lan)? success,
    TResult Function(SearchErrorType type, String? error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(lng, lan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateSuccess value) success,
    required TResult Function(_SearchStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchStateSuccess implements SearchState {
  const factory _SearchStateSuccess(
      {required final String lng,
      required final String lan}) = _$_SearchStateSuccess;

  String get lng => throw _privateConstructorUsedError;
  String get lan => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SearchStateSuccessCopyWith<_$_SearchStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchStateErrorCopyWith<$Res> {
  factory _$$_SearchStateErrorCopyWith(
          _$_SearchStateError value, $Res Function(_$_SearchStateError) then) =
      __$$_SearchStateErrorCopyWithImpl<$Res>;
  $Res call({SearchErrorType type, String? error});
}

/// @nodoc
class __$$_SearchStateErrorCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateErrorCopyWith<$Res> {
  __$$_SearchStateErrorCopyWithImpl(
      _$_SearchStateError _value, $Res Function(_$_SearchStateError) _then)
      : super(_value, (v) => _then(v as _$_SearchStateError));

  @override
  _$_SearchStateError get _value => super._value as _$_SearchStateError;

  @override
  $Res call({
    Object? type = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SearchStateError(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchErrorType,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchStateError implements _SearchStateError {
  const _$_SearchStateError(this.type, [this.error]);

  @override
  final SearchErrorType type;
  @override
  final String? error;

  @override
  String toString() {
    return 'SearchState.error(type: $type, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStateError &&
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
  _$$_SearchStateErrorCopyWith<_$_SearchStateError> get copyWith =>
      __$$_SearchStateErrorCopyWithImpl<_$_SearchStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String lng, String lan) success,
    required TResult Function(SearchErrorType type, String? error) error,
  }) {
    return error(type, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lan)? success,
    TResult Function(SearchErrorType type, String? error)? error,
  }) {
    return error?.call(type, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lan)? success,
    TResult Function(SearchErrorType type, String? error)? error,
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
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateSuccess value) success,
    required TResult Function(_SearchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchStateError implements SearchState {
  const factory _SearchStateError(final SearchErrorType type,
      [final String? error]) = _$_SearchStateError;

  SearchErrorType get type => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SearchStateErrorCopyWith<_$_SearchStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
