import 'package:equatable/equatable.dart';

class RestaurantInfoEntity extends Equatable {
  const RestaurantInfoEntity({
    required this.name,
  });

  final String name;


  @override
  List<Object?> get props => [name];
}