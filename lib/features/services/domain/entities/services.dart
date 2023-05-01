import 'package:freezed_annotation/freezed_annotation.dart';
part 'services.freezed.dart';
@freezed
class Services with _$Services {
  const factory   Services({
    List<Service>? services,

  }) = _Services;
}

@freezed
class Service with _$Service {
  const factory Service({
   int? serviceId,
    String? serviceName,
    String? servicePrice,
   double? serviceDuration,
    int? freelancerId,
  }) = _Service;



}
