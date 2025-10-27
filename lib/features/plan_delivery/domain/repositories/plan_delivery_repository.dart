// lib/features/plan_delivery/domain/repositories/plan_delivery_repository.dart
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/assigned_plan_entity.dart'; // ✅ Keep this import

abstract class WorkoutDeliveryRepository {
  Future<Either<Failure, void>> assignPlanToClient(
    String trainerId,
    String clientId,
    String planId,
  );

  Future<Either<Failure, List<AssignedWorkoutEntity>>>
      getClientAssignedWorkouts(
    String clientId,
  );
}
