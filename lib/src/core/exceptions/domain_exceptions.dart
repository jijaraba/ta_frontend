abstract class SignUpException implements Exception {
  const SignUpException._(this.name);

  final String name;
}

class EmailAlreadyUsedException extends SignUpException {
  const EmailAlreadyUsedException() : super._('EmailAlreadyUsed');
}

class UnexpectedSignUpException extends SignUpException {
  const UnexpectedSignUpException(this.message)
      : super._('UnexpectedSignUpException');

  final String message;
}
