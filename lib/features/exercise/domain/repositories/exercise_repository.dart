// lib/features/exercise/domain/repositories/exercise_repository.dart
import 'package:dartz/dartz.dart';
import '../entities/exercise_entity.dart';
import '../../../../core/error/failure.dart';

abstract class ExerciseRepository {
  Future<Either<Failure, List<ExerciseEntity>>> getExercises();
  Future<Either<Failure, void>> addExercise(ExerciseEntity exercise);
  Future<Either<Failure, void>> deleteExercise(String exerciseId);
}
