import 'package:tresastronautas_frotend/src/core/forms/user/states/register_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/user_entity.dart';

abstract class IRegisterRepository {
  Future<AccessToken> signUp(RegisterFormState register);
  Future<void> registerUser(UserEntity user);
}
