import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/exercise_model.dart';
import 'exercise_remote_data_source.dart';

class ExerciseRemoteDataSourceImpl implements ExerciseRemoteDataSource {
  final FirebaseFirestore firestore;

  ExerciseRemoteDataSourceImpl({required this.firestore});

  @override
  Future<List<ExerciseModel>> getExercises() async {
    final snapshot = await firestore.collection('exercises').get();
    return snapshot.docs
        .map((doc) => ExerciseModel.fromFirestore(doc))
        .toList();
  }

  @override
  Future<void> addExercise(ExerciseModel exercise) async {
    await firestore.collection('exercises').add(exercise.toMap());
  }

  @override
  Future<void> deleteExercise(String id) async {
    await firestore.collection('exercises').doc(id).delete();
  }
}
