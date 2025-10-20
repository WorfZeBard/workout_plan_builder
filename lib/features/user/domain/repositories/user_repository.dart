// lib/features/user/domain/repositories/user_repository.dart
import 'package:dartz/dartz.dart';
import '../entities/user_entity.dart';
import '../../../../core/failures/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> registerUser({
    required String email,
    required String password,
    required UserRole role,
    String? name,
  });

  Future<Either<Failure, UserEntity>> loginUser({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity?>> getCurrentUser();

  Future<Either<Failure, void>> logoutUser();
}
