import '../models/exercise_model.dart';

/// Defines the contract for interacting with Firebase or any remote backend
abstract class ExerciseRemoteDataSource {
  /// Fetch all exercises from Firestore
  Future<List<ExerciseModel>> getExercises();

  /// Add a new exercise document
  Future<void> addExercise(ExerciseModel exercise);

  /// Delete an exercise document by ID
  Future<void> deleteExercise(String id);
}
