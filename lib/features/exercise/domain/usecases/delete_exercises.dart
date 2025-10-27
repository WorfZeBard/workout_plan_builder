import 'package:dartz/dartz.dart';
import '../repositories/exercise_repository.dart';
import '../../../../core/error/failures.dart';

class DeleteExercise {
  final ExerciseRepository repository;
  DeleteExercise(this.repository);

  Future<Either<Failure, void>> call(String exerciseId) async {
    return await repository.deleteExercise(exerciseId);
  }
}
