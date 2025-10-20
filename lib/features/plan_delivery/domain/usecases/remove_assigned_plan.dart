// remove_assigned_plan.dart
import '../../../../core/error/failures.dart';

class RemoveClientWorkoutPlan {
  final WorkoutDeliveryRepository repository;
  RemoveClientWorkoutPlan(this.repository);

  Future<Either<Failure, WorkoutPlanEntity>> call(String clientId) {
    return repository.removeClientWorkoutPlan(clientId);
  }
}