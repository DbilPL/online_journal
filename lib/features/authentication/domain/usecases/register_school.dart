import 'package:dartz/dartz.dart';
import 'package:onlinejournal/core/errors/failure.dart';
import 'package:onlinejournal/core/usecases/usecase.dart';
import 'package:onlinejournal/features/authentication/domain/entities/entities.dart';
import 'package:onlinejournal/features/authentication/domain/repositories/school_auth_repository.dart';

class RegisterSchoolParams {
  final String email;
  final String password;
  final String name;
  final String surname;
  final String schoolName;
  final String townName;

  RegisterSchoolParams(this.email, this.password, this.name, this.surname,
      this.schoolName, this.townName);
}

class RegisterSchool extends UseCase<SchoolAdminUser, RegisterSchoolParams> {
  final SchoolAuthenticationRepository repository;

  RegisterSchool(this.repository);

  @override
  Future<Either<Failure, SchoolAdminUser>> call(
      RegisterSchoolParams params) async {
    return await repository.register(
      email: params.email,
      password: params.password,
      name: params.name,
      surname: params.surname,
      schoolName: params.schoolName,
      townName: params.townName,
    );
  }
}
