import 'package:json_annotation/json_annotation.dart';

part 'generic_response_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GenericResponseModel {
  GenericResponseModel({
    required this.communicationId,
    required this.favorite,
    required this.isSuccessful,
    this.status,
  });

  factory GenericResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GenericResponseModelFromJson(json);

  final String communicationId;
  final String favorite;
  @JsonKey(name: 'isSuccessful')
  final bool isSuccessful;
  final String? status;


  Map<String, dynamic> toJson() => _$GenericResponseModelToJson(this);
}
