import 'package:formz/formz.dart';
import 'package:tresastronautas_frotend/src/core/utils/common_extensions.dart';

//region User and Register Form Data

enum NameValidation { empty, invalid }

class NameForm extends FormzInput<String, NameValidation> {
  const NameForm.pure() : super.pure('');

  const NameForm.dirty(String value) : super.dirty(value);

  @override
  NameValidation? validator(String value) {
    if (value.isEmpty) return NameValidation.empty;
    if (!value.validateStrings) return NameValidation.invalid;
    return null;
  }
}

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

enum PhoneValidation { empty, invalid }

class PhoneForm extends FormzInput<String, PhoneValidation> {
  const PhoneForm.pure() : super.pure('');

  const PhoneForm.dirty(String value) : super.dirty(value);

  @override
  PhoneValidation? validator(String value) {
    if (value.isEmpty) return PhoneValidation.empty;
    if (!value.validatePhone) return PhoneValidation.invalid;
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

//endregion
