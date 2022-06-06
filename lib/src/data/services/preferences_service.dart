import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tresastronautas_frotend/src/data/models/access_token_local_model.dart';
import 'package:tresastronautas_frotend/src/data/models/user_local_model.dart';

class PreferencesService {
  PreferencesService(this._preferences);

  final SharedPreferences _preferences;

  static const _userIdKey = 'userId';
  static const _userImageKey = 'imageUrl';
  static const _userLocalKey = 'userLocal';
  static const _accessTokenLocalKey = 'accessTokenLocal';

  String? getUserId() {
    final userId = _preferences.getString(_userIdKey);
    return (userId ?? '').isNotEmpty ? userId : null;
  }

  Future<bool> setUserId(String? id) async =>
      _preferences.setString(_userIdKey, id ?? '');

  AccessTokenLocalModel? getAccessToken() {
    final userEncoded = _preferences.getString(_accessTokenLocalKey);
    return (userEncoded ?? '').isNotEmpty
        ? AccessTokenLocalModel.fromJson(
            json.decode(userEncoded!) as Map<String, dynamic>,
          )
        : null;
  }

  Future<bool> setAccessTokenLocal(AccessTokenLocalModel? accessTokenLocal) =>
      accessTokenLocal != null
          ? _preferences.setString(
              _accessTokenLocalKey,
              json.encode(
                accessTokenLocal.toJson(),
              ),
            )
          : _preferences.setString(_accessTokenLocalKey, '');

  UserLocalModel? getUserLocal() {
    final userEncoded = _preferences.getString(_userLocalKey);
    return (userEncoded ?? '').isNotEmpty
        ? UserLocalModel.fromJson(
            json.decode(userEncoded!) as Map<String, dynamic>,
          )
        : null;
  }

  Future<bool> setUserLocal(UserLocalModel? user) => user != null
      ? _preferences.setString(_userLocalKey, json.encode(user.toJson()))
      : _preferences.setString(_userLocalKey, '');

  String? getUserImageUrl() {
    final imageUrl = _preferences.getString(_userImageKey);
    return (imageUrl ?? '').isNotEmpty ? imageUrl : null;
  }

  Future<bool> setUserImageUrl(String? imageUrl) => imageUrl != null
      ? _preferences.setString(_userImageKey, imageUrl)
      : _preferences.setString(_userImageKey, '');
}
