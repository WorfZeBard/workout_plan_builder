import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/workout_progress_entity.dart';
import '../repositories/progress_repository.dart';

class GetClientProgressUseCase {
  final ProgressRepository repository;
  GetClientProgressUseCase(this.repository);

  Future<Either<Failure, List<WorkoutProgressEntity>>> call(String clientId) {
    return repository.getClientProgress(clientId);
  }
}