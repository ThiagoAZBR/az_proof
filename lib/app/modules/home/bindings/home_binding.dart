import 'package:az_proof/app/data/providers/dashboard_provider.dart';
import 'package:az_proof/app/data/repositories/dashboard_repository_impl.dart';
import 'package:az_proof/app/domain/repositories/dashboard_repository.dart';
import 'package:az_proof/app/domain/usecases/get_dashboard_info.dart';
import 'package:az_proof/app/modules/home/controllers/dashboard_controller.dart';
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
    Get.lazyPut<DashboardRepository>(
      () => DashboardRepositoryImpl(
        Get.find<DashboardProvider>(),
      ),
    );
    Get.lazyPut(
      () => GetDashboardInfoUseCase(
        Get.find<DashboardRepository>(),
      ),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(
        Get.find<GetDashboardInfoUseCase>(),
      ),
    );
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}
