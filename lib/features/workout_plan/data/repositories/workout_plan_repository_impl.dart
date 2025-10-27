import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/workout_plan_entity.dart';
import '../../domain/repositories/workout_plan_repository.dart';
import '../datasources/workout_plan_remote_data_source.dart';
import '../models/workout_plan_model.dart';

class WorkoutPlanRepositoryImpl implements WorkoutPlanRepository {
  final WorkoutPlanRemoteDataSource remoteDataSource;

  WorkoutPlanRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, WorkoutPlanEntity>> createWorkoutPlan(
      WorkoutPlanEntity plan) async {
    try {
      final model = WorkoutPlanModel.fromEntity(plan);
      await remoteDataSource.createWorkoutPlan(model);
      return Right(plan);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, WorkoutPlanEntity>> updateWorkoutPlan(
      WorkoutPlanEntity plan) async {
    try {
      final model = WorkoutPlanModel.fromEntity(plan);
      await remoteDataSource.updateWorkoutPlan(model);
      return Right(plan);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, WorkoutPlanEntity>> deleteWorkoutPlan(
      WorkoutPlanEntity plan) async {
    try {
      await remoteDataSource.deleteWorkoutPlan(plan.id);
      return Right(plan);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<WorkoutPlanEntity>>> getTrainerPlans(
      String trainerId) async {
    try {
      final models = await remoteDataSource.getTrainerPlans(trainerId);
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<WorkoutPlanEntity>>> getWorkoutPlansByUser(
      String userId) async {
    try {
      final models = await remoteDataSource.getWorkoutPlansByUser(userId);
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
