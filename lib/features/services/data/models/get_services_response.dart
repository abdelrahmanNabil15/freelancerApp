import 'package:freeWoma/features/services/domain/entities/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_services_response.freezed.dart';
part 'get_services_response.g.dart';

@freezed
class GetServicesResponse with _$GetServicesResponse {
  const factory GetServicesResponse({
    @JsonKey(name: 'results')
    List<DataServices> ? services,
  }) = _GetServicesResponse;

  const GetServicesResponse._();

  factory GetServicesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetServicesResponseFromJson(json);



  Services toEntity() {

    final listServices = services!
        .map<Service>(
          (model) => Service(
         freelancerId:  model.freelancerId,
        serviceId: model.serviceId ,
        serviceName: model.serviceName ?? "",
        serviceDuration: model.serviceDuration ,
            servicePrice: model.servicePrice,
      ),
    )
        .toList();

    return Services(
      services: listServices,
    ) ;
  }





}

@freezed

class DataServices with _$DataServices {
  const factory DataServices({
    @JsonKey(name: 'id')   int? serviceId,
    @JsonKey(name: 'key')  String? serviceName,
    @JsonKey(name: 'value')   String? servicePrice,
    @JsonKey(name: 'durations')   double? serviceDuration,
    @JsonKey(name: 'container')    int? freelancerId,
  }) = _DataServices;

  factory DataServices.fromJson(Map<String, dynamic> json) =>
      _$DataServicesFromJson(json);

}
