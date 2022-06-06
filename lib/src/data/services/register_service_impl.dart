import 'package:dio/dio.dart';
import 'package:tresastronautas_frotend/src/core/forms/user/states/register_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/data/models/access_token_model.dart';
import 'package:tresastronautas_frotend/src/data/models/user_model.dart';
import 'package:tresastronautas_frotend/src/data/services/register_service.dart';

class RegisterServiceImpl implements RegisterService {
  RegisterServiceImpl(this._client, {required this.appName});

  final Dio _client;
  final String appName;

  @override
  Future<void> registerUser(UserModel user) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }

  @override
  Future<AccessTokenModel> signUp(RegisterFormState register) async {
    try {
      final response = await _client.post<dynamic>(
        '/auth/signup',
        options: Options(
          contentType: Headers.jsonContentType,
        ),
        data: {
          "name": register.name.value,
          "username": register.email.value,
          "email": register.email.value,
          "password": register.password.value,
        },
      );

      if (response.statusCode == 201 && response.data != null) {
        return AccessTokenModel.fromJson(response.data);
      } else {
        throw Exception('Error on register');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
