import 'package:az_proof/app/data/models/dashboard_model.dart';
import 'package:az_proof/app/data/providers/dashboard_provider.dart';
import 'package:az_proof/app/domain/repositories/dashboard_repository.dart';
import 'package:az_proof/app/shared/errors.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/src/either.dart';
import 'package:az_proof/app/domain/usecases/get_dashboard_info.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardProvider _dashboardProvider;

  DashboardRepositoryImpl(this._dashboardProvider);

  @override
  Future<Either<Exception, DashboardModel>> getDashboardInformation(
    GetDashboardInfoParams params,
  ) async {
    try {
      final result = await _dashboardProvider.getDashboardInfo(params);

      return Right(result);
    } on NotFoundException catch (e) {
      return Left(e);
    } on DioError catch (e) {
      return Left(e);
    }
  }
}
