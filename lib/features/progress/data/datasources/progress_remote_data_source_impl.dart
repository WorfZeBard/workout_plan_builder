import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/progress_model.dart';
import 'progress_remote_data_source.dart';

class ProgressRemoteDataSourceImpl implements ProgressRemoteDataSource {
  final FirebaseFirestore firestore;

  ProgressRemoteDataSourceImpl({required this.firestore});

  @override
  Future<void> logWorkoutProgress(WorkoutProgressModel progress) async {
    await firestore
        .collection('progress')
        .doc(progress.id)
        .set(progress.toMap(), SetOptions(merge: true));
  }

  @override
  Future<List<WorkoutProgressModel>> getClientProgress(String clientId) async {
    final query = await firestore
        .collection('progress')
        .where('clientId', isEqualTo: clientId)
        .orderBy('date', descending: true)
        .get();

    return query.docs
        .map((doc) => WorkoutProgressModel.fromFirestore(doc))
        .toList();
  }
}
