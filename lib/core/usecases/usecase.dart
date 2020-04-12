import 'package:dartz/dartz.dart';
import 'package:onlinejournal/core/errors/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
