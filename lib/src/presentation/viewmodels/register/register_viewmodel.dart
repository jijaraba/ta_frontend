import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/src/core/forms/user/states/register_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_preferences_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_register_repository.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/register/register_state.dart';

class RegisterViewModel extends StateNotifier<RegisterState> {
  RegisterViewModel(this._registerRepository, this._preferencesRepository)
      : super(const RegisterState.initial());

  final IRegisterRepository _registerRepository;
  final IPreferencesRepository _preferencesRepository;

  Future<void> registerUser(RegisterFormState register) async {
    state = const RegisterState.loading();

    try {
      final loginResult = await _registerRepository.signUp(register);
      state = RegisterState.success(
        success: true,
        accessToken: loginResult,
      );

      ///Set Access Token
      _preferencesRepository.setAccessToken(loginResult);

    } on Exception catch (e) {
      state = RegisterState.error(ErrorType.userExists, e.toString());
    }
  }
}
