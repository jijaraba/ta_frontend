import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_entity.dart';

part 'register_state.freezed.dart';

enum ErrorType { userExists }

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _RegisterStateInitial;
  const factory RegisterState.loading() = _RegisterStateLoading;
  const factory RegisterState.success({
    required bool success,
    required AccessToken accessToken,
  }) = _RegisterStateSuccess;
  const factory RegisterState.error(ErrorType type, [String? error]) =
  _RegisterError;
}

extension RegisterStateX on RegisterState {
  bool get isLoading => this is _RegisterStateLoading;
  bool get isSuccess => this is _RegisterStateSuccess;
  bool get isError => this is _RegisterError;
  ErrorType get errorType => (this as _RegisterError).type;
  String? get errorMessage => (this as _RegisterError).error;
}
