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

  // Aggregated progress tracking
  final String? id; // optional summary identifier
  final int? completedSessions;
  final int? totalSessions;
  final double? progressPercentage;
  final DateTime? lastUpdated;

  const ProgressEntity({
    required this.progressId,
    required this.clientId,
    required this.planId,
    required this.date,
    required this.completed,
    this.totalSets,
    this.totalReps,
    this.totalWeight,
    this.id,
    this.completedSessions,
    this.totalSessions,
    this.progressPercentage,
    this.lastUpdated,
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
        id,
        completedSessions,
        totalSessions,
        progressPercentage,
        lastUpdated,
      ];
}
