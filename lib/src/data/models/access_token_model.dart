import 'package:json_annotation/json_annotation.dart';
import 'package:tresastronautas_frotend/src/data/models/user_model.dart';

part 'access_token_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AccessTokenModel {
  AccessTokenModel({
    required this.success,
    required this.message,
    required this.accessToken,
    required this.user,
  });

  factory AccessTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenModelFromJson(json);

  final bool success;
  final String message;
  @JsonKey(name: 'access_token')
  final String accessToken;
  final UserModel user;

  Map<String, dynamic> toJson() => _$AccessTokenModelToJson(this);
}
