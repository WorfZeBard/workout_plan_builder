// get_exercises.dart
import 'package:dartz/dartz.dart';
import '../entities/exercise_entity.dart';
import '../repositories/exercise_repository.dart';
import '../../../../core/error/failures.dart';

class GetExercises {
  final ExerciseRepository repository;
  GetExercises(this.repository);

  Future<Either<Failure, List<ExerciseEntity>>> call() async {
    return await repository.getExercises();
  }
}
