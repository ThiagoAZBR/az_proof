import 'package:az_proof/app/data/models/dashboard_model.dart';
import 'package:az_proof/app/domain/repositories/dashboard_repository.dart';
import 'package:az_proof/app/domain/usecases/use_case.dart';
import 'package:fpdart/fpdart.dart';

class GetDashboardInfoUseCase
    implements UseCase<DashboardModel, GetDashboardInfoParams> {
  final DashboardRepository _dashboardRepository;

  GetDashboardInfoUseCase(this._dashboardRepository);

  @override
  Future<Either<Exception, DashboardModel>> call(
    GetDashboardInfoParams params,
  ) async {
    return await _dashboardRepository.getDashboardInformation(params);
  }
}

class GetDashboardInfoParams {
  final String token;

  GetDashboardInfoParams({required this.token});
}
