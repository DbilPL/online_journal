import 'package:dartz/dartz.dart';
import 'package:onlinejournal/core/errors/failure.dart';
import 'package:onlinejournal/core/usecases/usecase.dart';
import 'package:onlinejournal/features/authentication/domain/entities/entities.dart';
import 'package:onlinejournal/features/authentication/domain/repositories/school_auth_repository.dart';

class SignInParams {
  final String email;
  final String password;

  SignInParams(this.email, this.password);
}

class SignInSchool extends UseCase<SchoolAdminUser, SignInParams> {
  final SchoolAuthenticationRepository repository;

  SignInSchool(this.repository);

  @override
  Future<Either<Failure, SchoolAdminUser>> call(SignInParams params) async {
    return await repository.signIn(
      email: params.email,
      password: params.password,
    );
  }
}
