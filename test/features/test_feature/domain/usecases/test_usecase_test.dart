import 'package:onlinejournal/features/test_feature/domain/repositories/test_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onlinejournal/features/test_feature/domain/usecases/test_usecase.dart';
import 'package:mockito/mockito.dart';

class MockTestRepository extends Mock
    implements TestRepository {}

void main() {
  MockTestRepository repository;
  TestUsecase usecase;

  setUp(() {
    repository = MockTestRepository();
    usecase = TestUsecase(repository);
  });

  test('should return test entity model', () async {
//    when(repository.doSmth())
//        .thenAnswer((_) async => Right(smth));
//
//    final result = await usecase();
//
//    expect(result, Right(smth));
//
//    verify(repository.doSmth());
//
//    verifyNoMoreInteractions(repository);
  });
}
