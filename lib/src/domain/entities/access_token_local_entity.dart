import 'package:equatable/equatable.dart';
import 'package:tresastronautas_frotend/src/data/models/user_local_model.dart';

class AccessTokenLocal extends Equatable {
  const AccessTokenLocal({
    required this.accessToken,
    required this.success,
    required this.message,
    required this.user,
  });

  final String accessToken;
  final bool success;
  final String message;
  final UserLocalModel user;

  @override
  List<Object?> get props => [
        accessToken,
        success,
        message,
        user,
      ];
}
