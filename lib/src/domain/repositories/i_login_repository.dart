
import 'package:tresastronautas_frotend/src/domain/entities/access_token_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/generic_response_entity.dart';

abstract class ILoginRepository {
  Future<AccessToken> login(String email, String password);

  Future<GenericResponse> signOut();
}
