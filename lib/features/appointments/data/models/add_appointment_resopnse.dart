import 'package:freezed_annotation/freezed_annotation.dart';


import '../../domain/entities/add_appointment.dart';

part 'add_appointment_resopnse.freezed.dart';

part 'add_appointment_resopnse.g.dart';

@freezed
class AddAppointmentResponse with _$AddAppointmentResponse {
  factory AddAppointmentResponse({
    int? id,
    int? price,
    String? status,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    String? note,
    int? client,
    int? freelancer,
    @JsonKey(name: 'service_id') int? serviceId,
  }) = _AddAppointmentResponse;

  const AddAppointmentResponse._();

  factory AddAppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AddAppointmentResponseFromJson(json);

  AddAppointments toEntity() => AddAppointments(
        id: id,
        price: price,
        status:  status,
        startTime: startTime,
        endTime: endTime,
        note: note,
        client:client,
        freelancer:  freelancer,
        serviceId:  serviceId,
      );
}
