import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';
import '../entities/add_appointment.dart';
import '../entities/delete_appointment_enitities.dart';
import '../usecases/Add_appointment.dart';
import '../usecases/delete_appointment.dart';

abstract class AppointmentsRepository {
  Future<Either<Failure, Appointments>> appointments(
    AppointmentsParams appointmentsParams,
  );
  Future<Either<Failure, DeleteAppointment>> deleteAppointments(
    DeleteAppointmentsParams deleteAppointmentsParams,
  );
  Future<Either<Failure, Appointments>>addAppointments(
      AppointmentsParams appointmentsParams,
  );


}
