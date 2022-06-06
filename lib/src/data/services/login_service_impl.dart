import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tresastronautas_frotend/src/data/models/access_token_model.dart';
import 'package:tresastronautas_frotend/src/data/models/generic_response_model.dart';
import 'package:tresastronautas_frotend/src/data/services/login_service.dart';
import 'package:tresastronautas_frotend/src/data/services/preferences_service.dart';

class LoginServiceImpl implements LoginService {
  LoginServiceImpl(this._client, this._preferencesService);

  final Dio _client;
  final PreferencesService _preferencesService;

  @override
  Future<AccessTokenModel> login(String email, String password) async {
    try {
      final response = await _client.post<dynamic>(
        '/auth/signin',
        options: Options(
          contentType: Headers.jsonContentType,
        ),
        data: {
          "username": email,
          "password": password,
        },
      );

      if (response.statusCode == 201 && response.data != null) {
        return AccessTokenModel.fromJson(response.data);
      } else {
        throw Exception('Error on register');
      }
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<GenericResponseModel> signOut() async {
    try {
      throw UnimplementedError();
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Map<String, dynamic> _setHeaders() => <String, dynamic>{
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'Authorization':
            'Bearer ${_preferencesService.getAccessToken()!.accessToken}',
      };
}
