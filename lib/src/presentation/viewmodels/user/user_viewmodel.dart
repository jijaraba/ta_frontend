import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_login_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_preferences_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_user_repository.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/user/user_state.dart';

class UserViewModel extends StateNotifier<UserState> {
  UserViewModel(
    this._loginRepository,
    this._userRepository,
    this._preferencesRepository,
  ) : super(const UserState.initial());

  final ILoginRepository _loginRepository;
  final IUserRepository _userRepository;
  final IPreferencesRepository _preferencesRepository;

  Future<void> signOut() async {
    state = const UserState.loading();
    try {
      state = const UserState.success(action: UserAction.logout);
      await _preferencesRepository.setUserId(null);
      await _preferencesRepository.setUserLocal(null);
      await _preferencesRepository.setAccessToken(null);
    } on Exception catch (e) {
      state = UserState.error(e.toString());
    }
  }
}
