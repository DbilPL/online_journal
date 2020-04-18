import 'package:dartz/dartz.dart';
import 'package:onlinejournal/core/errors/failure.dart';
import 'package:onlinejournal/features/authentication/domain/entities/entities.dart';

abstract class SchoolAuthenticationRepository {
  Future<Either<Failure, SchoolAdminUser>> register({
    String email,
    String password,
    String name,
    String surname,
    String schoolName,
    String townName,
  });

  Future<Either<Failure, SchoolAdminUser>> signIn({
    String email,
    String password,
  });

  Future<Either<Failure, SchoolAdminUser>> signInAuto();

  Future<Either<Failure, void>> signOut();

  Future<Either<Failure, void>> deleteAccount({String uid});
}
