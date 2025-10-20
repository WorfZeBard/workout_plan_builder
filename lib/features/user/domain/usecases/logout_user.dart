// lib/features/user/domain/usecases/logout_user.dart
import 'package:dartz/dartz.dart';
import '../repositories/user_repository.dart';
import '../../../../core/failures/failure.dart';

class LogoutUser {
  final UserRepository repository;

  LogoutUser(this.repository);

  Future<Either<Failure, void>> call() async {
    return await repository.logoutUser();
  }
}
