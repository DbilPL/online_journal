import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:onlinejournal/core/errors/failure.dart';
import 'package:onlinejournal/features/authentication/data/datasources/school_auth_data_source.dart';
import 'package:onlinejournal/features/authentication/data/model/school_model.dart';
import 'package:onlinejournal/features/authentication/domain/repositories/school_auth_repository.dart';

class SchoolAuthenticationRepositoryImpl
    extends SchoolAuthenticationRepository {
  final SchoolAuthenticationDataSource _dataSource;
  final DataConnectionChecker _connectionChecker;

  SchoolAuthenticationRepositoryImpl(this._connectionChecker, this._dataSource);

  @override
  Future<Either<Failure, void>> deleteAccount({String uid}) async {
    try {
      if (await _connectionChecker.hasConnection) {
        final result = await _dataSource.deleteAccount(uid: uid);

        return Right(result);
      } else
        return Left(ConnectionFailure());
    } catch (e) {
      return Left(FirebaseFailure());
    }
  }

  @override
  Future<Either<Failure, SchoolAdminUserModel>> register(
      {String email,
      String password,
      String name,
      String surname,
      String schoolName,
      String townName}) async {
    try {
      if (await _connectionChecker.hasConnection) {
        final result = await _dataSource.register(
          email: email,
          password: password,
          name: name,
          surname: surname,
          schoolName: schoolName,
          townName: townName,
        );

        return Right(result);
      } else
        return Left(ConnectionFailure());
    } catch (e) {
      return Left(FirebaseFailure());
    }
  }

  @override
  Future<Either<Failure, SchoolAdminUserModel>> signIn(
      {String email, String password}) async {
    try {
      if (await _connectionChecker.hasConnection) {
        final result =
            await _dataSource.signIn(email: email, password: password);

        return Right(result);
      } else
        return Left(ConnectionFailure());
    } catch (e) {
      return Left(FirebaseFailure());
    }
  }

  @override
  Future<Either<Failure, SchoolAdminUserModel>> signInAuto() async {
    try {
      if (await _connectionChecker.hasConnection) {
        final result = await _dataSource.signInAuto();

        return Right(result);
      } else
        return Left(ConnectionFailure());
    } catch (e) {
      return Left(FirebaseFailure());
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      if (await _connectionChecker.hasConnection) {
        final result = await _dataSource.signOut();

        return Right(result);
      } else
        return Left(ConnectionFailure());
    } catch (e) {
      return Left(FirebaseFailure());
    }
  }
}
