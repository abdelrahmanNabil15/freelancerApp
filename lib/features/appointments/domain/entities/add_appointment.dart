import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'add_appointment.freezed.dart';

@freezed
class AddAppointments with _$AddAppointments {
  const factory   AddAppointments({
    int? id,
    int? price,
    String? status,
    String? startTime,
    String? endTime,
    String? note,
    int ?client,
    int? freelancer,
    int? serviceId,

  }) = _AddAppointments;
}