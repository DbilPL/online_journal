import 'package:dartz/dartz.dart';
import 'package:onlinejournal/core/errors/failure.dart';
import 'package:onlinejournal/core/usecases/usecase.dart';
import 'package:onlinejournal/features/test_feature/domain/entities/test_entity.dart';
import 'package:onlinejournal/features/test_feature/domain/repositories/test_repository.dart';

class Params {}

class TestUsecase extends UseCase<TestEntity, Params> {
  final TestRepository repository;

  TestUsecase(this.repository);

  @override
  Future<Either<Failure, TestEntity>> call(Params params) async {
    // implement usecase
    return null;
  }
}