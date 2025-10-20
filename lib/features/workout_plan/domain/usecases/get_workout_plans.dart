// get_workout_plans.dart
import '../../../../core/error/failures.dart';

class GetWorkoutPlans {
  final WorkoutPlanRepository repository;
  GetWorkoutPlans(this.repository);

  Future<Either<Failure, List<WorkoutPlanEntity>>> call(String trainerId) {
    return repository.getWorkoutPlans(trainerId);
  }
}