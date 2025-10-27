// workout_plan_entity.dart
import 'package:equatable/equatable.dart';

class WorkoutPlanEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final List<String> exercises; // could be exercise IDs
  final String createdBy; // user id
  final DateTime createdAt;

  const WorkoutPlanEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.exercises,
    required this.createdBy,
    required this.createdAt,
  });

  @override
  List<Object?> get props =>
      [id, title, description, exercises, createdBy, createdAt];
}
