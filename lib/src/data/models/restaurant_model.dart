import 'package:json_annotation/json_annotation.dart';
import 'package:tresastronautas_frotend/src/data/models/restaurant_address_model.dart';
import 'package:tresastronautas_frotend/src/data/models/restaurant_info_model.dart';

part 'restaurant_model.g.dart';

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class RestaurantModel {
  RestaurantModel({
    required this.id,
    required this.name,
    required this.price,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);

  @JsonKey(name: '_id')
  final String id;
  final String name;
  final int price;
}
