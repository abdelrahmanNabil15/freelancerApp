import 'package:dartz/dartz.dart';
import 'package:freeWoma/core/core.dart';
import 'package:freeWoma/features/appointments/data/models/get_appointment_response.dart';
import 'package:freeWoma/features/appointments/domain/usecases/get_appointments.dart';

import '../../../features.dart';

import '../../domain/usecases/delete_appointment.dart';

import '../models/delete_appointment_response.dart';
import '../../../services/data/models/get_services_response.dart';



abstract class AppointmentRemoteDatasource {
  Future<Either<Failure, AppointmentResponse>> appointments(AppointmentsParams appointmentsParams);
  Future<Either<Failure, DeleteAppointmentResponse>> deleteAppointments(DeleteAppointmentsParams deleteAppointmentsParams);
  Future<Either<Failure, AppointmentResponse>> addAppointments(AppointmentsParams  appointmentsParams);
  Future<Either<Failure, GetServicesResponse>> getServices(GetServicesParams  getServicesParams);
}

class AppointmentRemoteDatasourceImpl implements AppointmentRemoteDatasource {
  final DioClient _client;

  AppointmentRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, AppointmentResponse>> appointments(AppointmentsParams appointmentsParams) async {
    final response = await _client.getRequest(
      ListAPI.getAppointments,
     // queryParameters: appointmentsParams.toJson(),

      converter: (response) =>
          AppointmentResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, DeleteAppointmentResponse>> deleteAppointments(deleteAppointmentsParams)async {
    final response = await _client.deleteRequest(
      ListAPI.deleteAppointments,
        //TODO: moataz add params  and need to change naming of end point
       // queryParameters: deleteAppointmentsParams.toJson(),
      converter: (response) =>
          DeleteAppointmentResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, AppointmentResponse>> addAppointments(AppointmentsParams appointmentsParams)async {
    final response = await _client.postRequest(
       '/appointment/',
      data: appointmentsParams.toJson(),

      converter: (response) =>
          AppointmentResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, GetServicesResponse>> getServices(GetServicesParams getServicesParams) async{
    final response = await _client.getRequest(
      ListAPI.appointments,
     queryParameters:getServicesParams.toJson() ,

      converter: (response) =>
          GetServicesResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
