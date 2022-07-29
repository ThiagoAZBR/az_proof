import 'package:az_proof/app/data/models/dashboard_model.dart';
import 'package:az_proof/app/data/providers/dashboard_provider.dart';
import 'package:az_proof/app/domain/usecases/get_dashboard_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../secrets.dart';

void main() {
  final DashboardProvider dashboardProvider = DashboardProviderImpl(Dio());

  test('Dashboard provider must return DashboardModel', () async {
    final result = await dashboardProvider.getDashboardInfo(
      GetDashboardInfoParams(token: Secrets.token),
    );

    expect(result, isA<DashboardModel>());
  });
}
