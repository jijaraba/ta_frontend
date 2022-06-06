import 'package:tresastronautas_frotend/src/core/exceptions/data_exceptions.dart';
import 'package:tresastronautas_frotend/src/core/exceptions/domain_exceptions.dart';
import 'package:tresastronautas_frotend/src/core/forms/user/states/register_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/core/utils/entity_extensions.dart';
import 'package:tresastronautas_frotend/src/core/utils/model_extensions.dart';
import 'package:tresastronautas_frotend/src/data/services/register_service.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/user_entity.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_register_repository.dart';

class RegisterRepository implements IRegisterRepository {
  RegisterRepository(this._registerService);

  final RegisterService _registerService;

  @override
  Future<AccessToken> signUp(RegisterFormState register) async {
    try {
      final userModel = await _registerService.signUp(register);
      return userModel.toAccessTokenEntity();
    } catch (e) {
      if (e is EmailAlreadyInUseException) {
        throw const EmailAlreadyUsedException();
      } else {
        throw UnexpectedSignUpException(e.toString());
      }
    }
  }

  @override
  Future<void> registerUser(UserEntity user) async =>
      _registerService.registerUser(user.toUserModel());

}
