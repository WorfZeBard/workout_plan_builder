import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/workout_plan_model.dart';
import 'workout_plan_remote_data_source.dart';

class WorkoutPlanRemoteDataSourceImpl implements WorkoutPlanRemoteDataSource {
  final FirebaseFirestore firestore;

  WorkoutPlanRemoteDataSourceImpl(this.firestore);

  @override
  Future<void> createWorkoutPlan(WorkoutPlanModel plan) async {
    await firestore.collection('workout_plans').doc(plan.id).set(plan.toMap());
  }

  @override
  Future<void> updateWorkoutPlan(WorkoutPlanModel plan) async {
    await firestore
        .collection('workout_plans')
        .doc(plan.id)
        .update(plan.toMap());
  }

  @override
  Future<void> deleteWorkoutPlan(String planId) async {
    await firestore.collection('workout_plans').doc(planId).delete();
  }

  @override
  Future<List<WorkoutPlanModel>> getTrainerPlans(String trainerId) async {
    final query = await firestore
        .collection('workout_plans')
        .where('trainerId', isEqualTo: trainerId)
        .get();
    return query.docs
        .map((e) => WorkoutPlanModel.fromFirestore(e.data()))
        .toList();
  }

  @override
  Future<List<WorkoutPlanModel>> getWorkoutPlansByUser(String userId) async {
    // Example: assuming there's a "userPlans" collection linking users to plans
    final query = await firestore
        .collection('workout_plans')
        .where('userIds', arrayContains: userId)
        .get();
    return query.docs
        .map((e) => WorkoutPlanModel.fromFirestore(e.data()))
        .toList();
  }
}
