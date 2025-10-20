// add_exercises.dart
import 'package:dartz/dartz.dart';
import '../entities/exercise_entity.dart';
import '../repositories/exercise_repository.dart';
import '../../../../core/error/failure.dart';

class AddExercises {
  final ExerciseRepository repository;
  AddExercises(this.repository);

  Future<Either<Failure, List<ExerciseEntity>>> call() async {
    return await repository.addExercises();
  }
}
