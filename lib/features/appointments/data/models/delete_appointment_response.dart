import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/delete_appointment_enitities.dart';


part 'delete_appointment_response.freezed.dart';
part 'delete_appointment_response.g.dart';



@freezed
class DeleteAppointmentResponse with _$DeleteAppointmentResponse {
  const factory DeleteAppointmentResponse({
    @JsonKey(name: 'success') String? message,
  }) = _DeleteAppointmentResponse;

  const DeleteAppointmentResponse._();
  factory DeleteAppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteAppointmentResponseFromJson(json);


  DeleteAppointment toEntity() =>
    DeleteAppointment(success: message ?? '');

}
