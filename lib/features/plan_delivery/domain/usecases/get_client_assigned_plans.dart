import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/assigned_plan_entity.dart';
import '../repositories/plan_delivery_repository.dart';

class GetClientAssignedPlansUseCase {
  final WorkoutDeliveryRepository repository;

  GetClientAssignedPlansUseCase(this.repository);

  Future<Either<Failure, List<AssignedWorkoutEntity>>> call(String clientId) {
    return repository.getClientAssignedWorkouts(clientId);
  }
}
