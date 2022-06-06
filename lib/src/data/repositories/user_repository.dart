import 'package:tresastronautas_frotend/src/core/utils/model_extensions.dart';
import 'package:tresastronautas_frotend/src/data/services/user_service.dart';
import 'package:tresastronautas_frotend/src/domain/entities/user_entity.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_user_repository.dart';

class UserRepository implements IUserRepository {
  UserRepository();

  UserService get _userService => UserService();

  @override
  Future<bool> existsUser(String uid) async => _userService.existsUser(uid);

  @override
  Stream<UserEntity> getUserData(String uid) {
    final userModelStream = _userService.getUserData(uid);
    return userModelStream.map((item) => item.toUserEntity());
  }
}
