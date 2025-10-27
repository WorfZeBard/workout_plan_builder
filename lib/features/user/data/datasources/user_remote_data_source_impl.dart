import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';
import 'user_remote_data_source.dart';
import '../../domain/entities/user_entity.dart';

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  UserRemoteDataSourceImpl({required this.auth, required this.firestore});

  @override
  Future<UserModel> signUp(
      String email, String password, String name, String role) async {
    final userCred = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    final uid = userCred.user!.uid;

    final userData = UserModel(
      uid: uid, // ✅ changed from id: uid
      email: email,
      name: name,
      role: role == 'trainer' ? UserRole.trainer : UserRole.client,
    );

    await firestore.collection('users').doc(uid).set(userData.toMap());
    return userData;
  }

  @override
  Future<UserModel> login(String email, String password) async {
    final userCred =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    final uid = userCred.user!.uid;
    final doc = await firestore.collection('users').doc(uid).get();
    return UserModel.fromFirestore(doc);
  }

  @override
  Future<UserModel> getCurrentUser() async {
    final currentUser = auth.currentUser;
    if (currentUser == null) throw Exception("No user logged in");

    final doc = await firestore.collection('users').doc(currentUser.uid).get();
    return UserModel.fromFirestore(doc);
  }

  @override
  Future<void> signOut() async {
    await auth.signOut();
  }
}
