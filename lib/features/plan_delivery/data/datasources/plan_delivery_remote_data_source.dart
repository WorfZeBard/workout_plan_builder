import '../models/plan_delivery_model.dart';

abstract class WorkoutDeliveryRemoteDataSource {
  Future<void> assignPlanToClient(
      String trainerId, String clientId, String planId);
  Future<List<AssignedWorkoutModel>> getClientAssignedWorkouts(String clientId);
}
