// lib/features/progress/domain/entities/progress_entity.dart
import 'package:equatable/equatable.dart';

class ProgressEntity extends Equatable {
  final String progressId;
  final String clientId;
  final String planId;
  final DateTime date;
  final bool completed;
  final int? totalSets;
  final int? totalReps;
  final double? totalWeight;

  const ProgressEntity({
    required this.progressId,
    required this.clientId,
    required this.planId,
    required this.date,
    required this.completed,
    this.totalSets,
    this.totalReps,
    this.totalWeight,
  });

  @override
  List<Object?> get props => [
        progressId,
        clientId,
        planId,
        date,
        completed,
        totalSets,
        totalReps,
        totalWeight,
      ];
}
