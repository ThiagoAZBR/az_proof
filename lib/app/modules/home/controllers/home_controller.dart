import 'package:az_proof/app/data/preferences/user_preferences.dart';
import 'package:az_proof/app/routes/routes_arguments.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final user = UserPreferences().obs;
  final userName = ''.obs;
  late final HomePageArguments arguments;

  @override
  void onInit() async {
    await getName();
    arguments = Get.arguments;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<void> getName() async {
    userName.value = await user.value.getName();
  }
}
