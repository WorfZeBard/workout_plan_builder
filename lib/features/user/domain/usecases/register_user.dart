// lib/features/user/domain/usecases/register_user.dart
import 'package:dartz/dartz.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';
import '../../../../core/failures/failure.dart';

class RegisterUser {
  final UserRepository repository;

  RegisterUser(this.repository);

  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
    required UserRole role,
    String? name,
  }) async {
    return await repository.registerUser(
      email: email,
      password: password,
      role: role,
      name: name,
    );
  }
}
