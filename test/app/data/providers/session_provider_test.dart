import 'package:az_proof/app/data/models/user_model.dart';
import 'package:az_proof/app/data/providers/session_provider.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../secrets.dart';

void main() {
  final SessionProvider sessionProvider = SessionProvider();

  test('Session provider must return UserModel', () async {
    final result =
        await sessionProvider.signInProvider(Secrets.email, Secrets.password);

    expect(result, isA<UserModel>());
  });
}
