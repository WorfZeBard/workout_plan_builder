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
