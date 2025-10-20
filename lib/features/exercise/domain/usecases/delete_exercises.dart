// delete_exercises.dart
import 'package:dartz/dartz.dart';
import '../entities/exercise_entity.dart';
import '../repositories/exercise_repository.dart';
import '../../../../core/error/failures.dart';

class DeleteExercises {
  final ExerciseRepository repository;
  DeleteExercises(this.repository);

  Future<Either<Failure, List<ExerciseEntity>>> call() async {
    return await repository.deleteExercises();
  }
}
