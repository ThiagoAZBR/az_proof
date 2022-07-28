import 'package:az_proof/app/data/models/user_model.dart';
import 'package:az_proof/app/domain/repositories/session_repository.dart';
import 'package:fpdart/fpdart.dart';

class SignInUseCase {
  final SessionRepository _sessionRepository;

  SignInUseCase(this._sessionRepository);

  Future<Either<Exception, UserModel>> call({
    required String email,
    required String password,
  }) async {
    return await _sessionRepository.signIn(email: email, password: password);
  }
}
