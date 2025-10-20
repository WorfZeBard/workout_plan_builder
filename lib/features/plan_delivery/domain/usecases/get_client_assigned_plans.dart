// get_client_workout_plan.dart
import '../../../../core/failures/failure.dart';

class GetClientWorkoutPlan {
  final WorkoutDeliveryRepository repository;
  GetClientWorkoutPlan(this.repository);

  Future<Either<Failure, WorkoutPlanEntity>> call(String clientId) {
    return repository.getClientWorkoutPlan(clientId);
  }
}