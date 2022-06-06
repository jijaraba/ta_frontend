import 'package:formz/formz.dart';
import 'package:tresastronautas_frotend/src/core/utils/common_extensions.dart';

enum EmailValidation { empty, invalid }

class EmailForm extends FormzInput<String, EmailValidation> {
  const EmailForm.pure() : super.pure('');

  const EmailForm.dirty(String value) : super.dirty(value);

  @override
  EmailValidation? validator(String value) {
    if (value.isEmpty) return EmailValidation.empty;
    if (!value.validateEmail) return EmailValidation.invalid;
    return null;
  }
}

enum PasswordValidation { empty, invalid }

class PasswordForm extends FormzInput<String, PasswordValidation> {
  const PasswordForm.pure() : super.pure('');

  const PasswordForm.dirty(String value) : super.dirty(value);

  @override
  PasswordValidation? validator(String value) {
    if (value.isEmpty) return PasswordValidation.empty;
    if (!value.validatePassword) return PasswordValidation.invalid;
    return null;
  }
}
