// domain/entities/assigned_plan_entity.dart
import 'package:equatable/equatable.dart';

class AssignedWorkoutEntity extends Equatable {
  final String id;
  final String trainerId;
  final String clientId;
  final Map<String, dynamic> plan;
  final DateTime assignedDate;

  const AssignedWorkoutEntity({
    required this.id,
    required this.trainerId,
    required this.clientId,
    required this.plan,
    required this.assignedDate,
  });

  @override
  List<Object?> get props => [id, trainerId, clientId, plan, assignedDate];
}
