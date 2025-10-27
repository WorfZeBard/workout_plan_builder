import '../../domain/entities/workout_plan_entity.dart';

class WorkoutPlanModel {
  final String id;
  final String name;
  final String description;
  final List<String> days;
  final String trainerId;

  WorkoutPlanModel({
    required this.id,
    required this.name,
    required this.description,
    required this.days,
    required this.trainerId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'days': days,
      'trainerId': trainerId,
    };
  }

  factory WorkoutPlanModel.fromFirestore(Map<String, dynamic> map) {
    return WorkoutPlanModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      days: List<String>.from(map['days']),
      trainerId: map['trainerId'],
    );
  }

  WorkoutPlanEntity toEntity() {
    return WorkoutPlanEntity(
      id: id,
      name: name,
      description: description,
      days: days,
      trainerId: trainerId,
    );
  }

  factory WorkoutPlanModel.fromEntity(WorkoutPlanEntity entity) {
    return WorkoutPlanModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      days: entity.days,
      trainerId: entity.trainerId,
    );
  }
}
