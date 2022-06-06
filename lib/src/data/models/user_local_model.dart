import 'package:json_annotation/json_annotation.dart';

part 'user_local_model.g.dart';

@JsonSerializable()
class UserLocalModel {
  UserLocalModel({
    required this.id,
    required this.name,
    required this.email,
  });

  factory UserLocalModel.fromJson(Map<String, dynamic> json) =>
      _$UserLocalModelFromJson(json);

  final String id;
  final String name;
  final String email;

  Map<String, dynamic> toJson() => _$UserLocalModelToJson(this);
}
