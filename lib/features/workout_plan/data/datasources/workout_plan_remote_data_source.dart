import '../models/workout_plan_model.dart';

abstract class WorkoutPlanRemoteDataSource {
  Future<void> createWorkoutPlan(WorkoutPlanModel plan);
  Future<void> updateWorkoutPlan(WorkoutPlanModel plan);
  Future<void> deleteWorkoutPlan(String planId);
  Future<List<WorkoutPlanModel>> getTrainerPlans(String trainerId);
  Future<List<WorkoutPlanModel>> getWorkoutPlansByUser(String userId);
}
