import 'package:az_proof/app/data/models/dashboard_model.dart';
import 'package:az_proof/app/domain/usecases/get_dashboard_info.dart';
import 'package:fpdart/fpdart.dart';

abstract class DashboardRepository {
  Future<Either<Exception, DashboardModel>> getDashboardInformation(
    GetDashboardInfoParams params,
  );
}
