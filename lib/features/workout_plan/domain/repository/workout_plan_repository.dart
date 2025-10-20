// lib/features/workout_plan/domain/repositories/workout_plan_repository.dart
import 'package:dartz/dartz.dart';
import '../entities/workout_plan_entity.dart';
import '../../../../core/error/failures.dart';

abstract class WorkoutPlanRepository {
  Future<Either<Failure, void>> createWorkoutPlan(WorkoutPlanEntity plan);
  Future<Either<Failure, List<WorkoutPlanEntity>>> getWorkoutPlans(String trainerId);
  Future<Either<Failure, void>> deleteWorkoutPlan(String planId);
}
