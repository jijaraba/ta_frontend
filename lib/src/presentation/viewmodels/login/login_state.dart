import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tresastronautas_frotend/src/config/localizations.dart';

part 'login_state.freezed.dart';

enum LoginErrorType { userNotFound, wrongPassword, undefined }

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginStateInitial;
  const factory LoginState.loading() = _LoginStateLoading;
  const factory LoginState.success({
    required bool exists,
    required String uid,
    required String email,
  }) = _LoginStateSuccess;

  const factory LoginState.error(LoginErrorType type, [String? error]) =
  _LoginStateError;
}

extension LoginStateX on LoginState {
  bool get isLoading => this is _LoginStateLoading;
  bool get isSuccess => this is _LoginStateSuccess;
  bool get isError => this is _LoginStateError;
  LoginErrorType get erroType => (this as _LoginStateError).type;
  String? get errorMessage => (this as _LoginStateError).error;
}

extension LoginErrorMessageToLocalizations on AppLocalizations {
  String loginErrorMessage(LoginErrorType errorType) {
    if (errorType == LoginErrorType.userNotFound) {
      return text('loginErrorUserNotFound');
    } else if (errorType == LoginErrorType.wrongPassword) {
      return text('loginErrorWrongPassword');
    } else {
      return text('genericError');
    }
  }
}
