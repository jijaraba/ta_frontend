import 'package:tresastronautas_frotend/src/domain/entities/user_entity.dart';

abstract class IUserRepository {
  Future<bool> existsUser(String uid);
  Stream<UserEntity> getUserData(String uid);
}