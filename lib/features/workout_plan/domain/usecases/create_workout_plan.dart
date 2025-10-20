// create_workout_plan.dart
class CreateWorkoutPlan {
  final WorkoutPlanRepository repository;
  CreateWorkoutPlan(this.repository);

  Future<Either<Failure, WorkoutPlanEntity>> call(WorkoutPlanEntity plan) {
    return repository.createWorkoutPlan(plan);
  }
}