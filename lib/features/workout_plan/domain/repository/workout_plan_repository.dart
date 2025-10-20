// lib/features/workout_plan/domain/repositories/workout_plan_repository.dart
import 'package:dartz/dartz.dart';
import '../entities/workout_plan_entity.dart';
import '../../../user/domain/failures/failure.dart';
import '../../../../core/failures/failure.dart';

abstract class WorkoutPlanRepository {
  Future<Either<Failure, void>> createWorkoutPlan(WorkoutPlanEntity plan);
  Future<Either<Failure, List<WorkoutPlanEntity>>> getWorkoutPlans(String trainerId);
  Future<Either<Failure, void>> deleteWorkoutPlan(String planId);
}
