// delete_workout_plan.dart
import '../../../../core/error/failures.dart';

class DeleteWorkoutPlan {
  final WorkoutPlanRepository repository;
  DeleteWorkoutPlan(this.repository);

  Future<Either<Failure, WorkoutPlanEntity>> call(WorkoutPlanEntity plan) {
    return repository.deleteWorkoutPlan(plan);
  }
}