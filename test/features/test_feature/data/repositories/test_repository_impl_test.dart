import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:onlinejournal/features/authentication/data/datasources/school_auth_data_source.dart';

class MockTestDataSource extends Mock
    implements SchoolAuthenticationDataSource {}

void main() {
  MockTestDataSource mockTestDataSource;
  //TestRepositoryImpl repository;

  setUp(() {
    mockTestDataSource = MockTestDataSource();
    //repository = TestRepositoryImpl(
    //  dataSource: mockTestDataSource,
    //);
  });

  // final tUserModel = TestEntityModel();

  // testing
}
