part of 'services_cubit.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState.loading() = _Loading;
  const factory ServicesState.success(Services data) = _Success;
  const factory ServicesState.failure(String message) = _Failure;
  const factory ServicesState.empty() = _Empty;
}