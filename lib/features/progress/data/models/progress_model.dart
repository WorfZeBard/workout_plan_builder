import 'package:cloud_firestore/cloud_firestore.dart';

class WorkoutProgressModel {
  final String id;
  final String clientId;
  final String workoutId;
  final DateTime date;
  final int completedSets;
  final int completedReps;

  WorkoutProgressModel({
    required this.id,
    required this.clientId,
    required this.workoutId,
    required this.date,
    required this.completedSets,
    required this.completedReps,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'clientId': clientId,
        'workoutId': workoutId,
        'date': date.toIso8601String(),
        'completedSets': completedSets,
        'completedReps': completedReps,
      };

  factory WorkoutProgressModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return WorkoutProgressModel(
      id: doc.id, // 👈 Firestore document ID
      clientId: data['clientId'],
      workoutId: data['workoutId'],
      date: DateTime.parse(data['date']),
      completedSets: data['completedSets'],
      completedReps: data['completedReps'],
    );
  }
}
