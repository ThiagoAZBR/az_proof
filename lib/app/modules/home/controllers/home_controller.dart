import 'package:az_proof/app/data/models/user_model.dart';
import 'package:az_proof/app/data/preferences/user_preferences.dart';
import 'package:az_proof/app/domain/usecases/get_dashboard_info.dart';
import 'package:az_proof/app/modules/home/controllers/home_states.dart';
import 'package:az_proof/app/routes/routes_arguments.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final user = UserPreferences().obs;
  final userName = ''.obs;
  late final HomePageArguments arguments;

  final Rx<HomeStates> _state = HomeIsLoading().obs;

  HomeStates get state => _state.value;

  set state(HomeStates newState) {
    _state.value = state;
  }

  // UseCases
  final GetDashboardInfoUseCase _getDashboardInfoUseCase;

  HomeController(this._getDashboardInfoUseCase);

  @override
  void onInit() async {
    await getName();
    if (Get.arguments != null) {
      arguments = Get.arguments;
    } else {
      arguments = HomePageArguments(
        userModel: UserModel(
          token: await user.value.getToken(),
        ),
      );
    }
    getDashboardInfo(
      GetDashboardInfoParams(
        token: arguments.userModel.token!,
      ),
    );
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

  Future<void> getDashboardInfo(GetDashboardInfoParams params) async {
    state = HomeIsLoading();
    final result = await _getDashboardInfoUseCase(params);

    result.fold(
      (failure) => state = HomeError(),
      (success) => state = HomeSuccess(dashboardModel: success),
    );
  }
}
