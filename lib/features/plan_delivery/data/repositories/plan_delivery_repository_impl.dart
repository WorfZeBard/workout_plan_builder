import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/assigned_plan_entity.dart';
import '../../domain/repositories/plan_delivery_repository.dart';
import '../datasources/plan_delivery_remote_data_source.dart';

class WorkoutDeliveryRepositoryImpl implements WorkoutDeliveryRepository {
  final WorkoutDeliveryRemoteDataSource remoteDataSource;

  WorkoutDeliveryRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, void>> assignPlanToClient(
      String trainerId, String clientId, String planId) async {
    try {
      await remoteDataSource.assignPlanToClient(trainerId, clientId, planId);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString())); // ✅ fixed
    }
  }

  @override
  Future<Either<Failure, List<AssignedWorkoutEntity>>>
      getClientAssignedWorkouts(String clientId) async {
    try {
      final result = await remoteDataSource.getClientAssignedWorkouts(clientId);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString())); // ✅ fixed
    }
  }
}
