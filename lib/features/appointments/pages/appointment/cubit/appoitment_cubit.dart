import 'package:bloc/bloc.dart';
import 'package:freeWoma/features/appointments/domain/domain.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import '../../../../../core/core.dart';
part 'appoitment_state.dart';
part 'appoitment_cubit.freezed.dart';


class AppointmentCubit extends Cubit<AppointmentState> {
  AppointmentCubit(this._getAppointment, this.addAppointmentUseCase, ) : super(const _Loading());
  final GetAppointment _getAppointment;
  final AddAppointmentUseCase addAppointmentUseCase;

    String ?note;
  Future<void> fetchAppointment(AppointmentsParams appointmentsParams) async {
    /// Only show loading in 1 page
    await _fetchAppointments(appointmentsParams);
  }
  Future<void> _fetchAppointments(AppointmentsParams appointmentsParams) async {

      emit(const _Loading());


    final data = await _getAppointment.call(appointmentsParams);
    data.fold(
          (l) {
        if (l is ServerFailure) {
          emit(_Failure(l.message ?? " "));
        } else if (l is NoDataFailure) {
          emit(const _Empty());
        }
      },
          (r) {

            emit(_Success(r));},
    );
  }
  Future<void> addAppointment(AppointmentsParams appointmentsParams) async {
    /// add new appointment
    await _addAppointments( appointmentsParams);
  }
  Future<void> _addAppointments(AppointmentsParams appointmentsParams) async {
    if (appointmentsParams.toJson().isEmpty ) {
      emit(const _Loading());
    }

    final data = await addAppointmentUseCase.call(appointmentsParams);
    data.fold(
          (l) {
        if (l is ServerFailure) {
          emit(_Failure(l.message ?? " "));
        } else if (l is NoDataFailure) {
          emit(const _Empty());
        }
      },
          (r) {

        emit(_Success(r));},
    );
  }

  Future<String>convertTimeDate({required String startTime,required String endTime})async{
 final   DateTime startTimeFormat = DateTime.parse(startTime );
 final   DateTime endTimeFormat = DateTime.parse(endTime );
  final  String formattedStartTime = DateFormat('h:mm a').format(startTimeFormat);
  final  String formattedEndTime = DateFormat('h:mm a').format(endTimeFormat);
    return '$formattedStartTime-$formattedEndTime';

  }
  DateTime? convertStringToDateTime(String timeString) {
    try {
      final DateFormat formatter = DateFormat('EEE,h:mm, a');
      final DateTime dateTime = formatter.parse(timeString);
      return dateTime;
    } catch (e) {
      print(e);
      return null;
    }
  }
  String?convertTimeToDateTime({required String timeString}) {
   final DateTime dateTime = DateFormat('h:mm a').parse(timeString);
    return dateTime.toIso8601String();


  }
  String? convertDateTimeTodayAndHour({required DateTime chosenTime,}) {
  if (chosenTime.isToday()) {
    return 'today, ${DateFormat('h:mm , a').format(chosenTime)}';
  } else {
    return DateFormat('EEE,h:mm a').format(chosenTime);
  }
  }

  String? convertDateTimeHour({required DateTime chosenTime,}) {

    return DateFormat('h:mm, a').format(chosenTime);
   }

}
extension DateTimeExtension on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return day == now.day && month == now.month && year == now.year;
  }
}