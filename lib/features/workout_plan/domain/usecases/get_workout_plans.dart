// lib/features/workout_plan/domain/usecases/get_workout_plans.dart
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/workout_plan_entity.dart';
import '../repositories/workout_plan_repository.dart';

class GetWorkoutPlans {
  final WorkoutPlanRepository repository;
  GetWorkoutPlans(this.repository);

  Future<Either<Failure, List<WorkoutPlanEntity>>> call(String trainerId) {
    return repository.getWorkoutPlansByUser(trainerId);
  }
}
