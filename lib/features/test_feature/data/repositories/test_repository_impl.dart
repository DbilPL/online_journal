import 'package:onlinejournal/features/test_feature/data/datasources/test_data_source.dart';
import 'package:onlinejournal/features/test_feature/domain/repositories/test_repository.dart';

class TestRepositoryImpl extends TestRepository {
  final TestDataSource dataSource;

  TestRepositoryImpl({this.dataSource});
}
