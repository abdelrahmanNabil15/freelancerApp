part of 'appoitment_cubit.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.loading() = _Loading;
  const factory AppointmentState.success(Appointments data) = _Success;
  const factory AppointmentState.failure(String message) = _Failure;
  const factory AppointmentState.empty() = _Empty;
}