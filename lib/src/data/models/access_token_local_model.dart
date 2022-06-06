import 'package:json_annotation/json_annotation.dart';
import 'package:tresastronautas_frotend/src/data/models/user_local_model.dart';
import 'package:tresastronautas_frotend/src/data/models/user_model.dart';

part 'access_token_local_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AccessTokenLocalModel {
  AccessTokenLocalModel({
    required this.accessToken,
    required this.success,
    required this.message,
    required this.user,
  });

  factory AccessTokenLocalModel.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenLocalModelFromJson(json);

  @JsonKey(name: 'access_token')
  final String accessToken;
  final bool success;
  final String message;
  final UserLocalModel user;

  Map<String, dynamic> toJson() => _$AccessTokenLocalModelToJson(this);
}
