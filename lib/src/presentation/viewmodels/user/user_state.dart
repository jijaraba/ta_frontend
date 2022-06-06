import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

enum UserAction { save, upload, logout }

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _UserStateInitial;

  const factory UserState.loading() = _UserStateLoading;

  const factory UserState.success({
    required UserAction action,
  }) = _UserStateSuccess;

  const factory UserState.error([String? error]) = _UserStateError;
}

extension UserStateX on UserState {
  bool get isLoading => this is _UserStateLoading;

  bool get isSuccess => this is _UserStateSuccess;

  UserAction get action => (this as _UserStateSuccess).action;

  bool get isError => this is _UserStateError;

  String? get errorMessage => (this as _UserStateError).errorMessage;
}
