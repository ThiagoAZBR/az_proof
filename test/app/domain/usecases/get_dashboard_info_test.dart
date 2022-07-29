import 'package:az_proof/app/data/models/dashboard_model.dart';
import 'package:az_proof/app/domain/repositories/dashboard_repository.dart';
import 'package:az_proof/app/domain/usecases/get_dashboard_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import '../../secrets.dart';

class MockDashboardRepository extends Mock implements DashboardRepository {}

void main() {
  final DashboardRepository repository = MockDashboardRepository();
  final GetDashboardInfoUseCase useCase = GetDashboardInfoUseCase(repository);
  final GetDashboardInfoParams params =
      GetDashboardInfoParams(token: Secrets.token);

  test('Get dashboard info must return Right', () async {
    when(() => repository.getDashboardInformation(
          params,
        )).thenAnswer(
      (_) async => Right(
        DashboardModel(),
      ),
    );

    final result = await useCase(params);

    expect(result, isA<Right>());
  });
}
