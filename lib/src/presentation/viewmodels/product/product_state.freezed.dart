// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ProductErrorType type, String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ProductErrorType type, String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ProductErrorType type, String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductStateInitial value) initial,
    required TResult Function(_ProductStateLoading value) loading,
    required TResult Function(_ProductStateSuccess value) success,
    required TResult Function(_ProductStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProductStateInitial value)? initial,
    TResult Function(_ProductStateLoading value)? loading,
    TResult Function(_ProductStateSuccess value)? success,
    TResult Function(_ProductStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductStateInitial value)? initial,
    TResult Function(_ProductStateLoading value)? loading,
    TResult Function(_ProductStateSuccess value)? success,
    TResult Function(_ProductStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class _$$_ProductStateInitialCopyWith<$Res> {
  factory _$$_ProductStateInitialCopyWith(_$_ProductStateInitial value,
          $Res Function(_$_ProductStateInitial) then) =
      __$$_ProductStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductStateInitialCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_ProductStateInitialCopyWith<$Res> {
  __$$_ProductStateInitialCopyWithImpl(_$_ProductStateInitial _value,
      $Res Function(_$_ProductStateInitial) _then)
      : super(_value, (v) => _then(v as _$_ProductStateInitial));

  @override
  _$_ProductStateInitial get _value => super._value as _$_ProductStateInitial;
}

/// @nodoc

class _$_ProductStateInitial implements _ProductStateInitial {
  const _$_ProductStateInitial();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ProductErrorType type, String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ProductErrorType type, String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ProductErrorType type, String? error)? error,
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
    required TResult Function(_ProductStateInitial value) initial,
    required TResult Function(_ProductStateLoading value) loading,
    required TResult Function(_ProductStateSuccess value) success,
    required TResult Function(_ProductStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProductStateInitial value)? initial,
    TResult Function(_ProductStateLoading value)? loading,
    TResult Function(_ProductStateSuccess value)? success,
    TResult Function(_ProductStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductStateInitial value)? initial,
    TResult Function(_ProductStateLoading value)? loading,
    TResult Function(_ProductStateSuccess value)? success,
    TResult Function(_ProductStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProductStateInitial implements ProductState {
  const factory _ProductStateInitial() = _$_ProductStateInitial;
}

/// @nodoc
abstract class _$$_ProductStateLoadingCopyWith<$Res> {
  factory _$$_ProductStateLoadingCopyWith(_$_ProductStateLoading value,
          $Res Function(_$_ProductStateLoading) then) =
      __$$_ProductStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductStateLoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_ProductStateLoadingCopyWith<$Res> {
  __$$_ProductStateLoadingCopyWithImpl(_$_ProductStateLoading _value,
      $Res Function(_$_ProductStateLoading) _then)
      : super(_value, (v) => _then(v as _$_ProductStateLoading));

  @override
  _$_ProductStateLoading get _value => super._value as _$_ProductStateLoading;
}

/// @nodoc

class _$_ProductStateLoading implements _ProductStateLoading {
  const _$_ProductStateLoading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ProductErrorType type, String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ProductErrorType type, String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ProductErrorType type, String? error)? error,
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
    required TResult Function(_ProductStateInitial value) initial,
    required TResult Function(_ProductStateLoading value) loading,
    required TResult Function(_ProductStateSuccess value) success,
    required TResult Function(_ProductStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProductStateInitial value)? initial,
    TResult Function(_ProductStateLoading value)? loading,
    TResult Function(_ProductStateSuccess value)? success,
    TResult Function(_ProductStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductStateInitial value)? initial,
    TResult Function(_ProductStateLoading value)? loading,
    TResult Function(_ProductStateSuccess value)? success,
    TResult Function(_ProductStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProductStateLoading implements ProductState {
  const factory _ProductStateLoading() = _$_ProductStateLoading;
}

/// @nodoc
abstract class _$$_ProductStateSuccessCopyWith<$Res> {
  factory _$$_ProductStateSuccessCopyWith(_$_ProductStateSuccess value,
          $Res Function(_$_ProductStateSuccess) then) =
      __$$_ProductStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductStateSuccessCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_ProductStateSuccessCopyWith<$Res> {
  __$$_ProductStateSuccessCopyWithImpl(_$_ProductStateSuccess _value,
      $Res Function(_$_ProductStateSuccess) _then)
      : super(_value, (v) => _then(v as _$_ProductStateSuccess));

  @override
  _$_ProductStateSuccess get _value => super._value as _$_ProductStateSuccess;
}

/// @nodoc

class _$_ProductStateSuccess implements _ProductStateSuccess {
  const _$_ProductStateSuccess();

  @override
  String toString() {
    return 'ProductState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ProductErrorType type, String? error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ProductErrorType type, String? error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ProductErrorType type, String? error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductStateInitial value) initial,
    required TResult Function(_ProductStateLoading value) loading,
    required TResult Function(_ProductStateSuccess value) success,
    required TResult Function(_ProductStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProductStateInitial value)? initial,
    TResult Function(_ProductStateLoading value)? loading,
    TResult Function(_ProductStateSuccess value)? success,
    TResult Function(_ProductStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductStateInitial value)? initial,
    TResult Function(_ProductStateLoading value)? loading,
    TResult Function(_ProductStateSuccess value)? success,
    TResult Function(_ProductStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ProductStateSuccess implements ProductState {
  const factory _ProductStateSuccess() = _$_ProductStateSuccess;
}

/// @nodoc
abstract class _$$_ProductStateErrorCopyWith<$Res> {
  factory _$$_ProductStateErrorCopyWith(_$_ProductStateError value,
          $Res Function(_$_ProductStateError) then) =
      __$$_ProductStateErrorCopyWithImpl<$Res>;
  $Res call({ProductErrorType type, String? error});
}

/// @nodoc
class __$$_ProductStateErrorCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_ProductStateErrorCopyWith<$Res> {
  __$$_ProductStateErrorCopyWithImpl(
      _$_ProductStateError _value, $Res Function(_$_ProductStateError) _then)
      : super(_value, (v) => _then(v as _$_ProductStateError));

  @override
  _$_ProductStateError get _value => super._value as _$_ProductStateError;

  @override
  $Res call({
    Object? type = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ProductStateError(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductErrorType,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductStateError implements _ProductStateError {
  const _$_ProductStateError(this.type, [this.error]);

  @override
  final ProductErrorType type;
  @override
  final String? error;

  @override
  String toString() {
    return 'ProductState.error(type: $type, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductStateError &&
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
  _$$_ProductStateErrorCopyWith<_$_ProductStateError> get copyWith =>
      __$$_ProductStateErrorCopyWithImpl<_$_ProductStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ProductErrorType type, String? error) error,
  }) {
    return error(type, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ProductErrorType type, String? error)? error,
  }) {
    return error?.call(type, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ProductErrorType type, String? error)? error,
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
    required TResult Function(_ProductStateInitial value) initial,
    required TResult Function(_ProductStateLoading value) loading,
    required TResult Function(_ProductStateSuccess value) success,
    required TResult Function(_ProductStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProductStateInitial value)? initial,
    TResult Function(_ProductStateLoading value)? loading,
    TResult Function(_ProductStateSuccess value)? success,
    TResult Function(_ProductStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductStateInitial value)? initial,
    TResult Function(_ProductStateLoading value)? loading,
    TResult Function(_ProductStateSuccess value)? success,
    TResult Function(_ProductStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ProductStateError implements ProductState {
  const factory _ProductStateError(final ProductErrorType type,
      [final String? error]) = _$_ProductStateError;

  ProductErrorType get type => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProductStateErrorCopyWith<_$_ProductStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
