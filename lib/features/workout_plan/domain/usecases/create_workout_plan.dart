import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/workout_plan_entity.dart';
import '../repositories/workout_plan_repository.dart';

class CreateWorkoutPlanUseCase {
  final WorkoutPlanRepository repository;
  CreateWorkoutPlanUseCase(this.repository);

  Future<Either<Failure, void>> call(WorkoutPlanEntity plan) {
    return repository.createWorkoutPlan(plan);
  }
}
