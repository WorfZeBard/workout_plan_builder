import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/exercise_entity.dart';

abstract class ExerciseRepository {
  Future<Either<Failure, List<ExerciseEntity>>> getExercises();
  Future<Either<Failure, void>> addExercise(ExerciseEntity exercise);
  Future<Either<Failure, void>> deleteExercise(String id);
}
