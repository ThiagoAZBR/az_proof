import 'package:az_proof/app/data/models/user_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class SessionRepository {
  Future<Either<Exception, UserModel>> signIn({
    required String email,
    required String password,
  });
}
