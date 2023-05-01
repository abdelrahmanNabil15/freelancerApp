
import 'package:freeWoma/features/appointments/domain/entities/appointments.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_appointment_response.freezed.dart';
part 'get_appointment_response.g.dart';

@freezed
class AppointmentResponse with _$AppointmentResponse {
  const factory AppointmentResponse({

    List<Orders>? orders,
    String? message,



  }) = _AppointmentResponse;

  const AppointmentResponse._();

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentResponseFromJson(json);

  Appointments toEntity() {
    final listAppointment = orders!
        .map<Order>(
          (model) => Order(
         client:model.client,
            endTime: model.endTime,
            freelancer: model.freelancer,
            id: model.id,
            note: model.note,
            price: model.price,
            serviceId: model.serviceId,
            startTime: model.startTime,
            status: model.status,
      ),
    )
        .toList();

    return Appointments(
      appointments:listAppointment ,

    );
  }
    Appointments messageToEntity() {


    return Appointments(
      message: message,

    );
  }
}



@freezed
class Orders with _$Orders {
  const factory Orders({
    int? id,
    int? price,
    String? status,
    @JsonKey(name: 'start_time')
    String? startTime,
    @JsonKey(name: 'end_time')
    String? endTime,
    String? note,
    int ?client,
    int? freelancer,
  @JsonKey(name: 'service_id')
    int? serviceId,
  }) = _Orders;

  factory Orders.fromJson(Map<String, dynamic> json) =>
      _$OrdersFromJson(json);
}
