import 'package:equatable/equatable.dart';

class RestaurantAddressEntity extends Equatable {
  const RestaurantAddressEntity({
    required this.freeformAddress,
  });

  final String freeformAddress;


  @override
  List<Object?> get props => [freeformAddress];
}