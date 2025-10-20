// lib/features/plan_delivery/domain/entities/assigned_plan_entity.dart
import 'package:equatable/equatable.dart';
import '../../../workout_plan/domain/entities/workout_plan_entity.dart';

class AssignedPlanEntity extends Equatable {
  final String assignmentId;
  final String trainerId;
  final String clientId;
  final WorkoutPlanEntity plan;
  final DateTime assignedDate;

  const AssignedPlanEntity({
    required this.assignmentId,
    required this.trainerId,
    required this.clientId,
    required this.plan,
    required this.assignedDate,
  });

  @override
  List<Object?> get props => [assignmentId, trainerId, clientId, plan, assignedDate];
}
