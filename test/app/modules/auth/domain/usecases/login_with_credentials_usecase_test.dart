import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tasks_flutter/app/modules/auth/domain/repositories/auth_respository.dart';
import 'package:tasks_flutter/app/modules/auth/domain/usecases/login_with_credentials_usecase.dart';

import '../../../../../mocks/login_params_entity_mock.dart';
import '../../../../../mocks/registered_user_entity_mock.dart';

class MockAuthRepository extends Mock implements IAuthRepository {}

void main() {
  group('LoginWithCredentialsUsecase', () {
    late MockAuthRepository mockRepository;
    late LoginWithCredentialsUsecase usecase;

    setUp(() {
      mockRepository = MockAuthRepository();
      usecase = LoginWithCredentialsUsecase(mockRepository);
    });

    test(
        'Should be call authentication method on repository with given parameters.',
        () async {
      final params = MockLoginParamsEntity.random();
      final registeredUser = MockRegisteredUserEntity.random();

      when(() => mockRepository.authenticate(params)).thenAnswer(
        (_) async => registeredUser,
      );

      final result = await usecase(params);

      expect(result, equals(registeredUser));
      verify(() => mockRepository.authenticate(params)).called(1);
    });

    test('Should be throw an error if repository throws.', () async {
      final params = MockLoginParamsEntity.random();
      when(() => mockRepository.authenticate(params)).thenThrow(Exception());

      final result = usecase(params);

      expect(result, throwsA(isA<Exception>()));
      verify(() => mockRepository.authenticate(params)).called(1);
    });
  });
}
