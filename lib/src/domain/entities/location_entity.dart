import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  const LocationEntity({
    required this.lng,
    required this.lan,
  });

  final String lng;
  final String lan;

  @override
  List<Object?> get props => [
        lng,
        lan,
      ];
}
