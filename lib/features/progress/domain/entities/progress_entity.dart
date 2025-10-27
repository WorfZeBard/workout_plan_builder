import 'package:equatable/equatable.dart';

class ProgressEntity extends Equatable {
  final String id;
  final String clientId;
  final String workoutId;
  final DateTime date;
  final int completedSets;
  final int completedReps;

  const ProgressEntity({
    required this.id,
    required this.clientId,
    required this.workoutId,
    required this.date,
    required this.completedSets,
    required this.completedReps,
  });

  @override
  List<Object> get props => [
        id,
        clientId,
        workoutId,
        date,
        completedSets,
        completedReps,
      ];
}
