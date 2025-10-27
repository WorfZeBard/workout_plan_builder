import '../models/progress_model.dart';

abstract class ProgressRemoteDataSource {
  Future<void> logWorkoutProgress(WorkoutProgressModel progress);
  Future<List<WorkoutProgressModel>> getClientProgress(String clientId);
}
