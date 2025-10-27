// lib/features/user/domain/entities/user_entity.dart
import 'package:equatable/equatable.dart';

enum UserRole {
  trainer,
  client,
}

class UserEntity extends Equatable {
  final String uid; // Firebase UID
  final String email;
  final String? name;
  final UserRole role;

  const UserEntity({
    required this.uid,
    required this.email,
    this.name,
    required this.role,
  });

  @override
  List<Object?> get props => [uid, email, name, role];
}
