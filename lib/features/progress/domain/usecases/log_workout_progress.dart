import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/workout_progress_entity.dart';
import '../repositories/progress_repository.dart';

class LogWorkoutProgressUseCase {
  final ProgressRepository repository;
  LogWorkoutProgressUseCase(this.repository);

  Future<Either<Failure, void>> call(WorkoutProgressEntity progress) {
    return repository.logWorkoutProgress(progress);
  }
}