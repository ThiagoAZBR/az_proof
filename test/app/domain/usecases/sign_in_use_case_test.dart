import 'package:az_proof/app/data/models/user_model.dart';
import 'package:az_proof/app/data/providers/session_provider.dart';
import 'package:az_proof/app/data/repositories/session_repository_impl.dart';
import 'package:az_proof/app/domain/repositories/session_repository.dart';
import 'package:az_proof/app/domain/usecases/sign_in_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import '../../secrets.dart';

class MockSessionRepository extends Mock implements SessionRepository {}

void main() {
  final SessionRepository sessionRepository =
      MockSessionRepository();
  final SignInUseCase signInUseCase = SignInUseCase(sessionRepository);
  test('sign in use case must return Right', () async {
    when(() => sessionRepository.signIn(
          email: Secrets.email,
          password: Secrets.password,
        )).thenAnswer((_) async => Right(UserModel()));

    final result = await signInUseCase(
      email: Secrets.email,
      password: Secrets.password,
    );

    expect(result, isA<Right>());
  });
}
