// workout_plan_entity.dart
import 'package:equatable/equatable.dart';

class WorkoutPlanEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final List<String> days;
  final String trainerId;

  const WorkoutPlanEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.days,
    required this.trainerId,
  });

  @override
  List<Object?> get props =>
      [id, description];
}
