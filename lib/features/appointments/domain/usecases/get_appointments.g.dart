// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_appointments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentsParams _$$_AppointmentsParamsFromJson(
        Map<String, dynamic> json) =>
    _$_AppointmentsParams(
      id: json['id'] as int? ?? 1,
      price: json['price'] as int? ?? 1,
      status: json['status'] as String? ?? '',
      startTime: json['start_time'] as String? ?? '',
      endTime: json['end_time'] as String? ?? '',
      note: json['note'] as String? ?? '',
      client: json['client'] as int? ?? 1,
      freelancer: json['freelancer'] as int? ?? 1,
      serviceId: json['service_id'] as int? ?? 1,
    );

Map<String, dynamic> _$$_AppointmentsParamsToJson(
        _$_AppointmentsParams instance) =>
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
