import 'package:tresastronautas_frotend/src/data/models/access_token_model.dart';
import 'package:tresastronautas_frotend/src/data/models/generic_response_model.dart';

abstract class LoginService {
  Future<AccessTokenModel> login(String email, String password);
}