import '../models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> signUp(
      String email, String password, String name, String role);
  Future<UserModel> login(String email, String password);
  Future<UserModel> getCurrentUser();
  Future<void> signOut();
}
