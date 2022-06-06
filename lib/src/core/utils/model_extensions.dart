import 'package:tresastronautas_frotend/src/data/models/access_token_local_model.dart';
import 'package:tresastronautas_frotend/src/data/models/access_token_model.dart';
import 'package:tresastronautas_frotend/src/data/models/generic_response_model.dart';
import 'package:tresastronautas_frotend/src/data/models/restaurant_address_model.dart';
import 'package:tresastronautas_frotend/src/data/models/restaurant_info_model.dart';
import 'package:tresastronautas_frotend/src/data/models/restaurant_model.dart';
import 'package:tresastronautas_frotend/src/data/models/user_local_model.dart';
import 'package:tresastronautas_frotend/src/data/models/user_model.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_local_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/generic_response_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/restaurant_address_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/restaurant_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/restaurant_info_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/user_entity.dart';

extension ToAccessTokenModelX on AccessTokenModel {
  AccessToken toAccessTokenEntity() {
    return AccessToken(
      accessToken: accessToken,
      success: success,
      message: message,
      user: user.toUserEntity(),
    );
  }
}

extension ToAccessTokenLocalModelX on AccessTokenLocalModel {
  AccessTokenLocal toAccessToken() {
    return AccessTokenLocal(
      accessToken: accessToken,
      success: success,
      user: user,
      message: message,
    );
  }
}

extension ToUserModelX on UserModel {
  UserEntity toUserEntity() {
    return UserEntity(
      name: name,
      id: id,
      email: email,
    );
  }
}

extension ToUserLocalModelX on UserLocalModel {
  UserEntity toUserEntity() {
    return UserEntity(
      name: name,
      id: id,
      email: email,
    );
  }
}

extension ToRestaurantModelX on RestaurantModel {
  RestaurantEntity toRestaurantEntity() {
    return RestaurantEntity(
      id: id,
      name: name,
      price: price,
    );
  }
}

extension ToRestaurantInfoModelX on RestaurantInfoModel {
  RestaurantInfoEntity toRestaurantInfoEntity() {
    return RestaurantInfoEntity(
      name: name,
    );
  }
}

extension ToRestaurantAddressModelX on RestaurantAddressModel {
  RestaurantAddressEntity toRestaurantAddressEntity() {
    return RestaurantAddressEntity(freeformAddress: freeformAddress);
  }
}

extension ToGenericModelModelX on GenericResponseModel {
  GenericResponse toGenericEntity() {
    return GenericResponse(
      communicationId: communicationId,
      favorite: favorite,
      isSuccessful: isSuccessful,
      status: status,
    );
  }
}