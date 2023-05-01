import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/core.dart';
import '../domain.dart';

part 'get_appointments.freezed.dart';

part 'get_appointments.g.dart';

class GetAppointment extends UseCase<Appointments, AppointmentsParams> {
  final AppointmentsRepository _repo;

  GetAppointment(this._repo);

  @override
  Future<Either<Failure, Appointments>> call(AppointmentsParams params) =>
      _repo.appointments(params);



}
@freezed
class AppointmentsParams with _$AppointmentsParams {
  const factory AppointmentsParams({

    @Default(1) int? id,
    @Default(1) int? price,
    @Default('') String? status,
    @JsonKey(name: 'start_time') @Default('') String? startTime,
    @JsonKey(name: 'end_time') @Default('') String? endTime,
    @Default('') String? note,
    @Default(1) int? client,
    @Default(1) int? freelancer,
    @JsonKey(name: 'service_id') @Default(1) int? serviceId,
  }) = _AppointmentsParams;

  factory AppointmentsParams.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsParamsFromJson(json);
}
