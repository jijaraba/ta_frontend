import 'package:equatable/equatable.dart';
import 'package:tresastronautas_frotend/src/domain/entities/user_entity.dart';

class AccessToken extends Equatable {
  const AccessToken({
    required this.accessToken,
    required this.success,
    required this.message,
    required this.user,
  });

  final String accessToken;
  final bool success;
  final String message;
  final UserEntity user;

  @override
  List<Object?> get props => [
        accessToken,
        success,
        message,
        user,
      ];
}
