// lib/features/progress/domain/repositories/progress_repository.dart
import 'package:dartz/dartz.dart';
import '../entities/progress_entity.dart';
import '../../../../core/error/failure.dart';

abstract class ProgressRepository {
  Future<Either<Failure, void>> logWorkoutProgress(ProgressEntity progress);
  Future<Either<Failure, List<ProgressEntity>>> getClientProgress(String clientId);
}
