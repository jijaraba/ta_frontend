//region Google exceptions

class GoogleCanceledException implements Exception {
  const GoogleCanceledException();
}

class GoogleErrorException implements Exception {
  const GoogleErrorException();
}

//endregion

//region Apple exceptions

class AppleCanceledException implements Exception {
  const AppleCanceledException();
}

class AppleErrorException implements Exception {
  const AppleErrorException();
}

//endregion

//region Firebase Auth exceptions

abstract class AuthGenericException implements Exception {
  const AuthGenericException();
}

class AuthExistsProviderException implements AuthGenericException {
  const AuthExistsProviderException();
}

class InvalidCredentialException implements AuthGenericException {
  const InvalidCredentialException();
}

class UserDisabledException implements AuthGenericException {
  const UserDisabledException();
}

class UserNotFoundException implements AuthGenericException {
  const UserNotFoundException();
}

class EmailAlreadyInUseException implements AuthGenericException {
  const EmailAlreadyInUseException();
}

class WrongPasswordException implements AuthGenericException {
  const WrongPasswordException();
}

class OperationNotAllowedException implements AuthGenericException {
  const OperationNotAllowedException();
}

//endregion

//region Common exceptions

class UserAlreadyExistsException implements Exception {
  const UserAlreadyExistsException();
}

//endregion
