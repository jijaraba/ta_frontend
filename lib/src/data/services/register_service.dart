
import 'package:tresastronautas_frotend/src/core/forms/user/states/register_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/data/models/access_token_model.dart';
import 'package:tresastronautas_frotend/src/data/models/user_model.dart';

abstract class RegisterService {
  Future<AccessTokenModel> signUp(RegisterFormState register);
  Future<void> registerUser(UserModel user);
}
