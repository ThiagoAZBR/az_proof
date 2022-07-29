import 'package:az_proof/app/data/models/dashboard_model.dart';

abstract class HomeStates {}

class HomeNoError implements HomeStates {
  const HomeNoError();
}

class HomeSuccess implements HomeStates {
  final DashboardModel dashboardModel;
  const HomeSuccess({required this.dashboardModel});
}

class HomeIsLoading implements HomeStates {
  const HomeIsLoading();
}

class HomeError implements HomeStates {
  const HomeError();
}
