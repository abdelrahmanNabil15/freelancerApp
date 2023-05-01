import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointments.freezed.dart';

@freezed
class   Appointments with _$Appointments {
  const factory   Appointments({
    List<Order>? appointments,
   String? message,

  }) = _Appointments;
}

@freezed
class Order with _$Order{
  const factory Order({
    int? id,
    int? price,
    String? status,
    String? startTime,
    String? endTime,
    String? note,
    int ?client,
    int? freelancer,
    int? serviceId,
  }) = _Order;
}