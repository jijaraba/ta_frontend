import 'package:equatable/equatable.dart';
import 'package:tresastronautas_frotend/src/domain/entities/restaurant_address_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/restaurant_info_entity.dart';

class RestaurantEntity extends Equatable {
  const RestaurantEntity({
    required this.id,
    required this.name,
    required this.price,
  });

  final String id;
  final String name;
  final int price;

  @override
  List<Object?> get props => [id, name, price];
}
