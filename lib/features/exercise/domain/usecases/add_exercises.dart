import 'package:dartz/dartz.dart';
import '../entities/exercise_entity.dart';
import '../repositories/exercise_repository.dart';
import '../../../../core/error/failures.dart';

class AddExercise {
  final ExerciseRepository repository;
  AddExercise(this.repository);

  Future<Either<Failure, void>> call(ExerciseEntity exercise) async {
    return await repository.addExercise(exercise);
  }
}
