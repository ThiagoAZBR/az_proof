import 'package:az_proof/app/data/providers/session_provider.dart';
import 'package:az_proof/app/modules/login/controllers/login_controller.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../secrets.dart';

void main() {
  final SessionProvider _sessionProvider = SessionProvider();
  final LoginController _loginController = LoginController(_sessionProvider);

  test('session provider ...', () async {
    final result = await _loginController.signInController(Secrets.email, Secrets.password);

    expect(result, true);
  });
}
