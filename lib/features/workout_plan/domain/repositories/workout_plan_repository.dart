// workout_plan_repository.dart
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/workout_plan_entity.dart';

abstract class WorkoutPlanRepository {
  Future<Either<Failure, WorkoutPlanEntity>> createWorkoutPlan(
      WorkoutPlanEntity plan);
  Future<Either<Failure, WorkoutPlanEntity>> deleteWorkoutPlan(
      WorkoutPlanEntity plan);
  Future<Either<Failure, WorkoutPlanEntity>> updateWorkoutPlan(
      WorkoutPlanEntity plan);
  Future<Either<Failure, List<WorkoutPlanEntity>>> getWorkoutPlansByUser(
      String userId);
}

@override
Future<Either<Failure, WorkoutPlanEntity>> createWorkoutPlan(
    WorkoutPlanEntity plan) async {
  try {
    final model = WorkoutPlanModel(
      id: plan.id,
      name: plan.name,
      description: plan.description,
      days: plan.days,
    );
    await remoteDataSource.createWorkoutPlan(model);
    return Right(plan); // return the entity, not null
  } catch (e) {
    return Left(ServerFailure(e.toString()));
  }
}
