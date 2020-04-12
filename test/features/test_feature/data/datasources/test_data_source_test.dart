import 'package:flutter_test/flutter_test.dart';
import 'package:onlinejournal/features/test_feature/data/datasources/test_data_source.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  TestDataSourceImpl dataSource;

  setUp(() {
    dataSource = TestDataSourceImpl();
  });

  group('testing test data source', () {
    // test
  });
}
