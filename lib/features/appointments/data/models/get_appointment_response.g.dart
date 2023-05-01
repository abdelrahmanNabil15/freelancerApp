// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_appointment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentResponse _$$_AppointmentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AppointmentResponse(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Orders.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_AppointmentResponseToJson(
        _$_AppointmentResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'message': instance.message,
    };

_$_Orders _$$_OrdersFromJson(Map<String, dynamic> json) => _$_Orders(
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

Map<String, dynamic> _$$_OrdersToJson(_$_Orders instance) => <String, dynamic>{
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
