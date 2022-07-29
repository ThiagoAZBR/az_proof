import 'package:az_proof/app/data/models/dashboard_model.dart';
import 'package:az_proof/app/domain/usecases/get_dashboard_info.dart';
import 'package:az_proof/app/shared/app_urls.dart';
import 'package:az_proof/app/shared/errors.dart';
import 'package:dio/dio.dart';

abstract class DashboardProvider {
  Future<DashboardModel> getDashboardInfo(
    GetDashboardInfoParams params,
  );
}

class DashboardProviderImpl implements DashboardProvider {
  final Dio _request;

  DashboardProviderImpl(Dio dio) : _request = dio;

  @override
  Future<DashboardModel> getDashboardInfo(
    GetDashboardInfoParams params,
  ) async {
    final response = await _request.get(
      AppUrls.DASHBOARD_ENDPOINT,
      queryParameters: {
        'Authorization': '${params.token}',
      },
      options: Options(
        headers: {
          'Authorization': 'Bearer ${params.token}',
        },
      ),
    );
    return handleResponse(response);
  }
}

DashboardModel handleResponse(Response response) {
  if (response.statusCode == 200) {
    return DashboardModel.fromMap(response.data);
  } else {
    throw NotFoundException(message: response.data['message']);
  }
}
