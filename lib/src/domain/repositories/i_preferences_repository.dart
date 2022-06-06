import 'package:tresastronautas_frotend/src/domain/entities/access_token_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_local_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/user_entity.dart';

abstract class IPreferencesRepository {
  String? getUserId();

  Future<bool> setUserId(String? id);

  AccessTokenLocal? getAccessToken();

  Future<bool> setAccessToken(AccessToken? accessToken);

  UserEntity? getUserLocal();

  Future<bool> setUserLocal(UserEntity? user);

  String? getUserImageUrl();

  Future<bool> setUserImageUrl(String? imageUrl);

}
