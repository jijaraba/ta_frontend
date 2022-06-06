
import 'package:tresastronautas_frotend/src/data/models/access_token_local_model.dart';
import 'package:tresastronautas_frotend/src/data/models/access_token_model.dart';
import 'package:tresastronautas_frotend/src/data/models/user_local_model.dart';
import 'package:tresastronautas_frotend/src/data/models/user_model.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/user_entity.dart';

extension ToAccessTokenEntityX on AccessToken {
  AccessTokenModel toAccessTokenModel() {
    return AccessTokenModel(
      accessToken: accessToken,
      success: success,
      message: message,
      user: user.toUserModel(),
    );
  }

  AccessTokenLocalModel toAccessTokenLocalModel() {
    return AccessTokenLocalModel(
      accessToken: accessToken,
      success: success,
      message: message,
      user: user.toUserLocalModel(),
    );
  }
}

extension ToUserEntityX on UserEntity {
  UserModel toUserModel() {
    return UserModel(
      id: id,
      name: name,
      email: email,
    );
  }

  UserLocalModel toUserLocalModel() {
    return UserLocalModel(
      id: id,
      name: name,
      email: email,
    );
  }
}

