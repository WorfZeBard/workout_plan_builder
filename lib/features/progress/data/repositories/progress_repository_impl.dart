import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/progress_entity.dart';
import '../../domain/repositories/progress_repository.dart';
import '../datasources/progress_remote_data_source.dart';
import '../models/progress_model.dart';

class ProgressRepositoryImpl implements ProgressRepository {
  final ProgressRemoteDataSource remoteDataSource;

  ProgressRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, void>> logWorkoutProgress(
      ProgressEntity progress) async {
    try {
      final model = WorkoutProgressModel(
        id: progress.id,
        clientId: progress.clientId,
        workoutId: progress.workoutId,
        date: progress.date,
        completedSets: progress.completedSets,
        completedReps: progress.completedReps,
      );

      await remoteDataSource.logWorkoutProgress(model);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProgressEntity>>> getClientProgress(
      String clientId) async {
    try {
      final result = await remoteDataSource.getClientProgress(clientId);

      // convert models -> entities
      final entities = result
          .map((model) => ProgressEntity(
                id: model.id,
                clientId: model.clientId,
                workoutId: model.workoutId,
                date: model.date,
                completedSets: model.completedSets,
                completedReps: model.completedReps,
              ))
          .toList();

      return Right(entities);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
