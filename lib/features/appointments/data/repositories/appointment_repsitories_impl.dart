import 'package:dartz/dartz.dart';
import 'package:freeWoma/core/core.dart';
import 'package:freeWoma/features/appointments/data/datasources/appointment_remote_datasources.dart';
import 'package:freeWoma/features/appointments/domain/entities/add_appointment.dart';
import 'package:freeWoma/features/appointments/domain/entities/appointments.dart';
 import 'package:freeWoma/features/appointments/domain/repositories/appointments_repository.dart';
import 'package:freeWoma/features/appointments/domain/usecases/Add_appointment.dart';
import 'package:freeWoma/features/appointments/domain/usecases/delete_appointment.dart';
import 'package:freeWoma/features/appointments/domain/usecases/get_appointments.dart';

import '../../domain/entities/delete_appointment_enitities.dart';


class AppointmentsRepositoryImpl implements AppointmentsRepository {
  /// Data Source
  final AppointmentRemoteDatasource appointmentRemoteDatasource;

    AppointmentsRepositoryImpl(this.appointmentRemoteDatasource);

  @override
  Future<Either<Failure, Appointments>> appointments(AppointmentsParams appointmentsParams) async {
    // TODO: implement appointments
    final response = await appointmentRemoteDatasource.appointments(
      appointmentsParams,
    );

    return response.fold(
          (failure) => Left(failure),
          (appointmentResponse) {
        if (appointmentResponse.orders?.isEmpty ?? true) {
          return Left(NoDataFailure());
        }
        return Right(appointmentResponse.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, DeleteAppointment>> deleteAppointments(DeleteAppointmentsParams deleteAppointmentsParams) async {
    final response = await appointmentRemoteDatasource.deleteAppointments(
      deleteAppointmentsParams,
    );

    return response.fold(
          (failure) => Left(failure),
          (appointmentResponse) {
        if (appointmentResponse.message== null) {
          return Left(NoDataFailure());
        }
        return Right(appointmentResponse.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, Appointments>> addAppointments( AppointmentsParams   appointmentParams)async {
    final response = await appointmentRemoteDatasource.addAppointments(
      appointmentParams,
    );

    return response.fold(
          (failure) => Left(failure),
          (appointmentResponse) {
        return Right(appointmentResponse.messageToEntity());
      },
    );
  }





}
