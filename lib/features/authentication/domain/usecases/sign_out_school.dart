import 'package:dartz/dartz.dart';
import 'package:onlinejournal/core/errors/failure.dart';
import 'package:onlinejournal/core/usecases/usecase.dart';
import 'package:onlinejournal/features/authentication/domain/entities/entities.dart';
import 'package:onlinejournal/features/authentication/domain/repositories/school_auth_repository.dart';

class NoParams {}

class SignOutSchool extends UseCase<SchoolAdminUser, NoParams> {
  final SchoolAuthenticationRepository repository;

  SignOutSchool(this.repository);

  @override
  Future<Either<Failure, SchoolAdminUser>> call(NoParams params) async {
    return await repository.signOut();
  }
}
