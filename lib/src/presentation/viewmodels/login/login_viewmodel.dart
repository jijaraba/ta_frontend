import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/src/core/exceptions/data_exceptions.dart';
import 'package:tresastronautas_frotend/src/core/forms/login/login_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_login_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_preferences_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_user_repository.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/login/login_state.dart';

class LoginViewModel extends StateNotifier<LoginState> {
  LoginViewModel(
    this._loginRepository,
    this._userRepository,
    this._preferencesRepository,
  ) : super(const LoginState.initial());

  final ILoginRepository _loginRepository;
  final IUserRepository _userRepository;
  final IPreferencesRepository _preferencesRepository;

  Future<void> signInUserPassword(LoginFormState login) async {
    return _run(() async {
      final loginResult = await _loginRepository.login(
        login.email.value,
        login.password.value,
      );
      state = LoginState.success(
        exists: false,
        uid: loginResult.user.id,
        email: loginResult.user.email,
      );

      ///Set Access Token
      _preferencesRepository.setAccessToken(loginResult);

    });
  }

  Future<void> _run(Future<void> Function() action) async {
    state = const LoginState.loading();

    try {
      await action();
    } on Exception catch (e) {
      state = LoginState.error(e.toLoginErrorType(), e.toString());
    }
  }
}

extension ToLoginErrorTypeConverter on Exception {
  LoginErrorType toLoginErrorType() {
    switch (this) {
      case UserNotFoundException():
        return LoginErrorType.userNotFound;
      case WrongPasswordException():
        return LoginErrorType.wrongPassword;
      default:
        return LoginErrorType.undefined;
    }
  }
}
