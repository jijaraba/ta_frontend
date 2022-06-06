import 'package:equatable/equatable.dart';

class GenericResponse extends Equatable {
  const GenericResponse({
    required this.communicationId,
    required this.favorite,
    required this.isSuccessful,
    this.status,
  });

  final String communicationId;
  final String favorite;
  final bool isSuccessful;
  final String? status;

  @override
  List<Object?> get props => [
        communicationId,
        favorite,
        isSuccessful,
        status,
      ];
}
