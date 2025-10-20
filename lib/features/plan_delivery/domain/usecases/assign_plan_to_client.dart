// assign_plan_to_client.dart
import '../../../../core/error/failures.dart';

class AssignClientWorkoutPlan {
  final WorkoutDeliveryRepository repository;
  AssignClientWorkoutPlan(this.repository);

  Future<Either<Failure, WorkoutPlanEntity>> call(String clientId) {
    return repository.assignClientWorkoutPlan(clientId);
  }
}