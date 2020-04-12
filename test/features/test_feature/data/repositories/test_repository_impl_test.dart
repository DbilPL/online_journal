import 'package:flutter_test/flutter_test.dart';
import 'package:onlinejournal/features/test_feature/data/datasources/test_data_source.dart';
import 'package:onlinejournal/features/test_feature/data/model/test_entity_model.dart';
import 'package:onlinejournal/features/test_feature/data/repositories/test_repository_impl.dart';
import 'package:mockito/mockito.dart';

class MockTestDataSource extends Mock
    implements TestDataSource {}

void main() {
  MockTestDataSource mockTestDataSource;
  TestRepositoryImpl repository;

  setUp(() {
    mockTestDataSource = MockTestDataSource();
    repository = TestRepositoryImpl(
      dataSource: mockTestDataSource,
    );
  });
  
  final tUserModel = TestEntityModel();

  // testing
}
