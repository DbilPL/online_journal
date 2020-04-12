import 'package:flutter_test/flutter_test.dart';
import 'package:onlinejournal/features/test_feature/data/model/test_entity_model.dart';
import 'package:onlinejournal/features/test_feature/domain/entities/test_entity.dart';

void main() {
  group('testing test entity model', () {

    final tModel = TestEntityModel();

    test('should be a sub class of test entity', () {
      expect(tModel, isA<TestEntity>());
    });
    // and else
  });
}
