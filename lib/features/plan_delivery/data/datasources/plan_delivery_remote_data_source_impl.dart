import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/plan_delivery_model.dart';
import 'plan_delivery_remote_data_source.dart';

class WorkoutDeliveryRemoteDataSourceImpl
    implements WorkoutDeliveryRemoteDataSource {
  final FirebaseFirestore firestore;
  WorkoutDeliveryRemoteDataSourceImpl(this.firestore);

  @override
  Future<void> assignPlanToClient(
      String trainerId, String clientId, String planId) async {
    final assignment = {
      'trainerId': trainerId,
      'clientId': clientId,
      'planId': planId,
      'assignedDate': Timestamp.now(),
    };
    await firestore.collection('assigned_workouts').add(assignment);
  }

  @override
  Future<List<AssignedWorkoutModel>> getClientAssignedWorkouts(
      String clientId) async {
    final query = await firestore
        .collection('assigned_workouts')
        .where('clientId', isEqualTo: clientId)
        .get();
    return query.docs
        .map((doc) => AssignedWorkoutModel.fromFirestore(doc))
        .toList();
  }
}
