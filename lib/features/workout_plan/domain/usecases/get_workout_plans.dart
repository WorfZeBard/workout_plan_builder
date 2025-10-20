// get_workout_plans.dart
import '../../../../core/failures/failure.dart';

class GetWorkoutPlans {
  final WorkoutPlanRepository repository;
  GetWorkoutPlans(this.repository);

  Future<Either<Failure, List<WorkoutPlanEntity>>> call(String trainerId) {
    return repository.getWorkoutPlans(trainerId);
  }
}