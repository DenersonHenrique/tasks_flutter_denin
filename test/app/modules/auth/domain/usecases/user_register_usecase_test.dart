import 'package:flutter_test/flutter_test.dart';
import 'package:tasks_flutter/app/modules/auth/domain/repositories/auth_respository.dart';
import 'package:tasks_flutter/app/modules/auth/domain/usecases/user_register_usecase.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../mocks/login_params_entity_mock.dart';
import '../../../../../mocks/registered_user_entity_mock.dart';

class MockAuthRepository extends Mock implements IAuthRepository {}

void main() {
  group('UserRegisterUsecase', () {
    late UserRegisterUsecase usecase;
    late MockAuthRepository mockRepository;

    setUp(() {
      mockRepository = MockAuthRepository();
      usecase = UserRegisterUsecase(mockRepository);
    });

    test('Should be return a RegisteredUserEntity.', () async {
      final params = MockLoginParamsEntity.random();
      final registeredUser = MockRegisteredUserEntity.random();

      when(() => mockRepository.registerUser(params)).thenAnswer(
        (_) async => registeredUser,
      );

      final result = await usecase.call(params);

      expect(result, equals(registeredUser));
      verify(() => mockRepository.registerUser(params));
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
