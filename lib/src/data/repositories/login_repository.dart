import 'package:tresastronautas_frotend/src/core/utils/model_extensions.dart';
import 'package:tresastronautas_frotend/src/data/services/login_service.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_entity.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_login_repository.dart';

class LoginRepository implements ILoginRepository {
  LoginRepository(this._loginService);

  final LoginService _loginService;

  @override
  Future<AccessToken> login(String email, String password) async {
    final accessTokenModel = await _loginService.login(email, password);
    return accessTokenModel.toAccessTokenEntity();
  }

}