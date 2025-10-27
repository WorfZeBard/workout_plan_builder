// delete_workout_plan.dart
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/workout_plan_entity.dart';
import '../repositories/workout_plan_repository.dart';

class DeleteWorkoutPlan {
  final WorkoutPlanRepository repository;
  DeleteWorkoutPlan(this.repository);

  Future<Either<Failure, WorkoutPlanEntity>> call(WorkoutPlanEntity plan) {
    return repository.deleteWorkoutPlan(plan);
  }
}
