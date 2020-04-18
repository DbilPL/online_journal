import 'package:dartz/dartz.dart';
import 'package:onlinejournal/core/errors/failure.dart';
import 'package:onlinejournal/features/authentication/domain/entities/entities.dart';

abstract class TeacherAuthenticationRepository {
  Future<Either<Failure, User>> register({
    String email,
    String password,
    String schoolUid,
  });

  Future<Either<Failure, User>> signIn({
    String email,
    String password,
  });

  Future<Either<Failure, User>> signInAuto();

  Future<Either<Failure, User>> signOut();

  Future<Either<Failure, User>> deleteAccount({String uid, String schoolUid});
}
