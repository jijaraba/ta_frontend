import 'package:equatable/equatable.dart';

class AccountEntity extends Equatable {
  const AccountEntity({
    required this.uid,
    this.displayName,
  });

  final String uid;
  final String? displayName;

  @override
  List<Object?> get props => [uid, displayName];
}