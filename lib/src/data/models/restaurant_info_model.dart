import 'package:json_annotation/json_annotation.dart';

part 'restaurant_info_model.g.dart';

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class RestaurantInfoModel {
  RestaurantInfoModel({
    required this.name,
  });

  factory RestaurantInfoModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantInfoModelFromJson(json);

  final String name;
}
