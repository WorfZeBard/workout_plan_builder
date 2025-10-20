// lib/features/workout_plan/domain/entities/workout_plan_entity.dart
import 'package:equatable/equatable.dart';
import '../../../exercise/domain/entities/exercise_entity.dart';
import '../../../../core/error/failures.dart';

class WorkoutPlanEntity extends Equatable {
  final String id;
  final String trainerId;
  final String name;
  final List<WorkoutDay> days;

  const WorkoutPlanEntity({
    required this.id,
    required this.trainerId,
    required this.name,
    required this.days,
  });

  @override
  List<Object?> get props => [id, trainerId, name, days];
}

class WorkoutDay extends Equatable {
  final String dayName;
  final List<WorkoutExercise> exercises;

  const WorkoutDay({
    required this.dayName,
    required this.exercises,
  });

  @override
  List<Object?> get props => [dayName, exercises];
}

class WorkoutExercise extends Equatable {
  final ExerciseEntity exercise;
  final int sets;
  final int reps;
  final int restSeconds;

  const WorkoutExercise({
    required this.exercise,
    required this.sets,
    required this.reps,
    required this.restSeconds,
  });

  @override
  List<Object?> get props => [exercise, sets, reps, restSeconds];
}
