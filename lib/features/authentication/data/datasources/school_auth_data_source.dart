import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:onlinejournal/features/authentication/data/model/school_model.dart';

abstract class SchoolAuthenticationDataSource {
  /// Creates new user in [FirebaseAuth], and new write in [Firestore].
  /// In [Firestore] on school uid will be written teachers and students
  /// Via uid teachers and students will be registered
  /// Returns [SchoolAdminUserModel] if success, else throws [Exception]
  Future<SchoolAdminUserModel> register({
    String email,
    String password,
    String name,
    String surname,
    String schoolName,
    String townName,
  });

  /// Signs in via [FirebaseAuth].
  /// Returns [SchoolAdminUserModel] if success, else throws [Exception]
  Future<SchoolAdminUserModel> signIn({
    String email,
    String password,
  });

  /// Signs in via [FirebaseAuth] and [FlutterSecureStorage].
  /// Returns [SchoolAdminUserModel] if success, else throws [Exception]
  Future<SchoolAdminUserModel> signInAuto();

  /// Signs out via [FirebaseAuth].
  /// Returns [null] if success, else throws [Exception]
  Future<void> signOut();

  /// Deletes school in [FirebaseAuth] and [Firestore]
  /// If teacher/student will try to sign in, it will fail because school is not exist anymore
  /// Returns [null] if success, else throws [Exception]
  Future<void> deleteAccount({String uid});
}

class SchoolAuthenticationDataSourceImpl
    extends SchoolAuthenticationDataSource {
  final FirebaseAuth _firebaseAuth;
  final Firestore _firestore;

  SchoolAuthenticationDataSourceImpl(this._firebaseAuth, this._firestore);

  @override
  Future<void> deleteAccount({String uid}) {
    // TODO: implement deleteAccount
    return null;
  }

  @override
  Future<SchoolAdminUserModel> register(
      {String email,
      String password,
      String name,
      String surname,
      String schoolName,
      String townName}) {
    // TODO: implement register
    return null;
  }

  @override
  Future<SchoolAdminUserModel> signIn({String email, String password}) {
    // TODO: implement signIn
    return null;
  }

  @override
  Future<SchoolAdminUserModel> signInAuto() {
    // TODO: implement signInAuto
    return null;
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    return null;
  }
}
