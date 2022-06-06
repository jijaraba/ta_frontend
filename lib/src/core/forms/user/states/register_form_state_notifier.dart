import 'package:formz/formz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/src/core/forms/user/generic_user_form.dart';

class RegisterFormState with FormzMixin {
  RegisterFormState({
    this.email = const EmailForm.pure(),
    this.name = const NameForm.pure(),
    this.password = const PasswordForm.pure(),
  });

  final EmailForm email;
  final NameForm name;
  final PasswordForm password;

  RegisterFormState copyWith({
    EmailForm? email,
    NameForm? name,
    PasswordForm? password,
  }) =>
      RegisterFormState(
        email: email ?? this.email,
        name: name ?? this.name,
        password: password ?? this.password,
      );

  @override
  List<FormzInput> get inputs => [
    email,
    name,
    password,
  ];
}

class RegisterFormNotifier extends StateNotifier<RegisterFormState> {
  RegisterFormNotifier() : super(RegisterFormState());

  void changeEmail(String value) {
    state = state.copyWith(email: EmailForm.dirty(value));
  }

  void changeName(String value) {
    state = state.copyWith(name: NameForm.dirty(value));
  }

  void changePassword(String value) {
    state = state.copyWith(password: PasswordForm.dirty(value));
  }
}

final registerNotifierPod =
StateNotifierProvider.autoDispose<RegisterFormNotifier, RegisterFormState>(
      (_) => RegisterFormNotifier(),
);
