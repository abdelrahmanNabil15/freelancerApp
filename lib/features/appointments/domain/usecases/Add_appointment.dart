import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../../features.dart';


class AddAppointmentUseCase
    extends UseCase<Appointments, AppointmentsParams> {
  final AppointmentsRepository _repo;

  AddAppointmentUseCase(this._repo);

  @override
  Future<Either<Failure, Appointments>> call(AppointmentsParams params) =>
      _repo.addAppointments(params);
}
