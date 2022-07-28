import 'package:az_proof/app/data/models/user_model.dart';
import 'package:az_proof/app/data/providers/session_provider.dart';
import 'package:az_proof/app/domain/repositories/session_repository.dart';
import 'package:az_proof/app/shared/errors.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/src/either.dart';

class SessionRepositoryImpl implements SessionRepository {
  final SessionProvider _sessionProvider;

  SessionRepositoryImpl(this._sessionProvider);

  @override
  Future<Either<Exception, UserModel>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _sessionProvider.signInProvider(email, password);
      return Right(result);
    } on NotFoundException catch (e) {
      return Left(e);
    }
  }
}
