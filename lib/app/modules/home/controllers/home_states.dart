import 'package:az_proof/app/data/models/dashboard_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_states.freezed.dart';

@freezed
class HomeStates with _$HomeStates {
  const factory HomeStates.success({required DashboardModel data}) = Data;
  const factory HomeStates.loading() = Loading;
  const factory HomeStates.error([String? message]) = ErrorDetails;
}