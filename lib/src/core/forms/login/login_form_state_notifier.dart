import 'package:formz/formz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/src/core/forms/user/generic_user_form.dart';

class LoginFormState with FormzMixin {
  LoginFormState({
    this.email = const EmailForm.pure(),
    this.password = const PasswordForm.pure(),
  });

  final EmailForm email;
  final PasswordForm password;

  LoginFormState copyWith({EmailForm? email, PasswordForm? password}) {
    return LoginFormState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<FormzInput> get inputs => [email, password];
}

class LoginFormNotifier extends StateNotifier<LoginFormState> {
  LoginFormNotifier() : super(LoginFormState());

  void changeEmail(String value) {
    state = state.copyWith(email: EmailForm.dirty(value));
  }

  void changePassword(String value) {
    state = state.copyWith(password: PasswordForm.dirty(value));
  }
}

final loginNotifierPod =
    StateNotifierProvider.autoDispose<LoginFormNotifier, LoginFormState>(
  (_) => LoginFormNotifier(),
);
