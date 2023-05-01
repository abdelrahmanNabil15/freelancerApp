// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_appointment_resopnse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddAppointmentResponse _$$_AddAppointmentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AddAppointmentResponse(
      id: json['id'] as int?,
      price: json['price'] as int?,
      status: json['status'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      note: json['note'] as String?,
      client: json['client'] as int?,
      freelancer: json['freelancer'] as int?,
      serviceId: json['service_id'] as int?,
    );

Map<String, dynamic> _$$_AddAppointmentResponseToJson(
        _$_AddAppointmentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'status': instance.status,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'note': instance.note,
      'client': instance.client,
      'freelancer': instance.freelancer,
      'service_id': instance.serviceId,
    };
