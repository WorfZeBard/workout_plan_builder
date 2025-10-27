import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/assigned_plan_entity.dart';

class AssignedWorkoutModel extends AssignedWorkoutEntity {
  const AssignedWorkoutModel({
    required super.id,
    required super.trainerId,
    required super.clientId,
    required super.plan,
    required super.assignedDate,
  });

  factory AssignedWorkoutModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return AssignedWorkoutModel(
      id: doc.id,
      trainerId: data['trainerId'],
      clientId: data['clientId'],
      plan: data['plan'],
      assignedDate: (data['assignedDate'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() => {
        'trainerId': trainerId,
        'clientId': clientId,
        'plan': plan,
        'assignedDate': Timestamp.fromDate(assignedDate),
      };
}
