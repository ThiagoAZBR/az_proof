import 'package:az_proof/app/data/providers/dashboard_provider.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardProvider>(
      () => DashboardProviderImpl(
        Get.find<Dio>(),
      ),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
