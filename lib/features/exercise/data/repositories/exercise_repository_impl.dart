import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/exercise_entity.dart';
import '../../domain/repositories/exercise_repository.dart';
import '../datasources/exercise_remote_data_source.dart';
import '../models/exercise_model.dart';

class ExerciseRepositoryImpl implements ExerciseRepository {
  final ExerciseRemoteDataSource remoteDataSource;

  ExerciseRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<ExerciseEntity>>> getExercises() async {
    try {
      final result = await remoteDataSource.getExercises();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> addExercise(ExerciseEntity exercise) async {
    try {
      final model = ExerciseModel(
        id: exercise.id,
        name: exercise.name,
        description: exercise.description,
        imageUrl: exercise.imageUrl,
        category: exercise.category,
      );
      await remoteDataSource.addExercise(model);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteExercise(String id) async {
    try {
      await remoteDataSource.deleteExercise(id);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
