// lib/features/exercise/domain/entities/exercise_entity.dart
import 'package:equatable/equatable.dart';

class ExerciseEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String? imageUrl;
  final String? targetMuscle;

  const ExerciseEntity({
    required this.id,
    required this.name,
    required this.description,
    this.imageUrl,
    this.targetMuscle,
  });

  @override
  List<Object?> get props => [id, name, description, imageUrl, targetMuscle];
}
