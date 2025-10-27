import 'package:equatable/equatable.dart';

class ExerciseEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String category;

  const ExerciseEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.category,
  });

  @override
  List<Object?> get props => [id, name, description, imageUrl, category];
}
