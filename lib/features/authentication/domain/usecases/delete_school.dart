import 'package:dartz/dartz.dart';
import 'package:onlinejournal/core/errors/failure.dart';
import 'package:onlinejournal/core/usecases/usecase.dart';
import 'package:onlinejournal/features/authentication/domain/entities/entities.dart';
import 'package:onlinejournal/features/authentication/domain/repositories/school_auth_repository.dart';

class DeleteSchool extends UseCase<SchoolAdminUser, String> {
  final SchoolAuthenticationRepository repository;

  DeleteSchool(this.repository);

  @override
  Future<Either<Failure, SchoolAdminUser>> call(String params) async {
    return await repository.deleteAccount(uid: params);
  }
}
