// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_services_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetServicesResponse _$$_GetServicesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetServicesResponse(
      services: (json['results'] as List<dynamic>?)
          ?.map((e) => DataServices.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetServicesResponseToJson(
        _$_GetServicesResponse instance) =>
    <String, dynamic>{
      'results': instance.services,
    };

_$_DataServices _$$_DataServicesFromJson(Map<String, dynamic> json) =>
    _$_DataServices(
      serviceId: json['id'] as int?,
      serviceName: json['key'] as String?,
      servicePrice: json['value'] as String?,
      serviceDuration: (json['durations'] as num?)?.toDouble(),
      freelancerId: json['container'] as int?,
    );

Map<String, dynamic> _$$_DataServicesToJson(_$_DataServices instance) =>
    <String, dynamic>{
      'id': instance.serviceId,
      'key': instance.serviceName,
      'value': instance.servicePrice,
      'durations': instance.serviceDuration,
      'container': instance.freelancerId,
    };
