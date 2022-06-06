import 'package:json_annotation/json_annotation.dart';

part 'restaurant_address_model.g.dart';

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class RestaurantAddressModel {
  RestaurantAddressModel({
    required this.freeformAddress,
  });

  factory RestaurantAddressModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantAddressModelFromJson(json);

  @JsonKey(name: 'freeformAddress')
  final String freeformAddress;
}
