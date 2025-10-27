import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/assigned_plan_entity.dart';
import '../repositories/plan_delivery_repository.dart';

class GetClientAssignedPlansUseCase {
  final PlanDeliveryRepository repository;

  GetClientAssignedPlansUseCase(this.repository);

  Future<Either<Failure, List<AssignedPlanEntity>>> call(String clientId) {
    return repository.getClientAssignedPlans(clientId);
  }
}
