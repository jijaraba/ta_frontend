import 'package:tresastronautas_frotend/src/core/utils/model_extensions.dart';
import 'package:tresastronautas_frotend/src/core/utils/entity_extensions.dart';
import 'package:tresastronautas_frotend/src/data/services/preferences_service.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_local_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/user_entity.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_preferences_repository.dart';

class PreferencesRepository implements IPreferencesRepository {
  PreferencesRepository(this._preferenceService);

  final PreferencesService _preferenceService;

  @override
  String? getUserId() => _preferenceService.getUserId();

  @override
  Future<bool> setUserId(String? id) => _preferenceService.setUserId(id);

  @override
  AccessTokenLocal? getAccessToken() =>
      _preferenceService.getAccessToken()?.toAccessToken();

  @override
  Future<bool> setAccessToken(AccessToken? accessToken) =>
      _preferenceService.setAccessTokenLocal(
        accessToken?.toAccessTokenLocalModel(),
      );

  @override
  UserEntity? getUserLocal() =>
      _preferenceService.getUserLocal()?.toUserEntity();

  @override
  Future<bool> setUserLocal(UserEntity? user) =>
      _preferenceService.setUserLocal(user?.toUserLocalModel());

  @override
  String? getUserImageUrl() => _preferenceService.getUserImageUrl();

  @override
  Future<bool> setUserImageUrl(String? imageUrl) =>
      _preferenceService.setUserImageUrl(imageUrl);
}
