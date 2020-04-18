import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:onlinejournal/features/authentication/domain/repositories/school_auth_repository.dart';
import 'package:onlinejournal/features/authentication/domain/usecases/register_school.dart';

class MockTestRepository extends Mock
    implements SchoolAuthenticationRepository {}

void main() {
  MockTestRepository repository;
  RegisterSchool usecase;

  setUp(() {
    repository = MockTestRepository();
    usecase = RegisterSchool(repository);
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
