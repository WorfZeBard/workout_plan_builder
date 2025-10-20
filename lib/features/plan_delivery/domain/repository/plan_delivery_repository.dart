// lib/features/plan_delivery/domain/repositories/plan_delivery_repository.dart
import 'package:dartz/dartz.dart';
import '../entities/assigned_plan_entity.dart';
import '../../../../core/failures/failure.dart';

abstract class PlanDeliveryRepository {
  Future<Either<Failure, void>> assignPlanToClient({
    required String trainerId,
    required String clientId,
    required String planId,
  });

  Future<Either<Failure, List<AssignedPlanEntity>>> getClientAssignedPlans(String clientId);
  Future<Either<Failure, void>> removeAssignedPlan(String assignmentId);
}
