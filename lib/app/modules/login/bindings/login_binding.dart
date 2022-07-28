import 'package:az_proof/app/data/providers/session_provider.dart';
import 'package:az_proof/app/data/repositories/session_repository_impl.dart';
import 'package:az_proof/app/domain/repositories/session_repository.dart';
import 'package:az_proof/app/domain/usecases/sign_in_use_case.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SessionProvider(),
    );
    Get.lazyPut<SessionRepository>(
      () => SessionRepositoryImpl(
        Get.find(),
      ),
    );
    Get.lazyPut(
      () => SignInUseCase(
        Get.find(),
      ),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(
        Get.find(),
      ),
    );
  }
}
