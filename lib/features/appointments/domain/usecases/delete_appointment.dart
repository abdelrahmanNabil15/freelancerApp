import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/core.dart';

import '../entities/delete_appointment_enitities.dart';
import '../repositories/appointments_repository.dart';

part 'delete_appointment.freezed.dart';

part 'delete_appointment.g.dart';

class DeleteAppointmentUseCase
    extends UseCase<DeleteAppointment, DeleteAppointmentsParams> {
  final AppointmentsRepository _repo;

  DeleteAppointmentUseCase(this._repo);

  @override
  Future<Either<Failure, DeleteAppointment>> call(
          DeleteAppointmentsParams params) =>
      _repo.deleteAppointments(params);
}

@freezed
class DeleteAppointmentsParams with _$DeleteAppointmentsParams {
  const factory DeleteAppointmentsParams({
    @Default(1) int userId,
    @Default(1) int appointmentId,
  }) = _DeleteAppointmentsParams;

  factory DeleteAppointmentsParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteAppointmentsParamsFromJson(json);
}
