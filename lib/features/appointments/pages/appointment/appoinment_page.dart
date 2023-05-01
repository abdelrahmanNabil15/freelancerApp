import 'package:flutter/material.dart';
import 'package:freeWoma/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../../core/core.dart';
import '../../domain/entities/appointments.dart';
import 'appointment.dart';
import 'widgets/event_widget.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<StatefulWidget> createState() => ScheduleExample();
}
class ScheduleExample extends State<AppointmentScreen> {

  final List<Order> _order = [];

  @override
  Widget build(BuildContext context) {
    return    Parent(
appBar: _appBar(),
      child :BlocBuilder<AppointmentCubit, AppointmentState>(
        builder: (_, state) {
      return state.when(
          loading: () => const Center(child: Loading()),
          success: (data){
            _order.addAll(data.appointments!);


            return SfCalendar(
              dataSource: MeetingDataSource(_order),
              timeSlotViewSettings:   TimeSlotViewSettings(
                timeInterval: const Duration(minutes: 30),
                timeIntervalHeight: Dimens.space30,
                minimumAppointmentDuration: const Duration(minutes: 15),
                timeFormat: 'h:mm a',
              ),
              onTap: (CalendarTapDetails details) {
                context.goNamed(Routes.addAppointment.name);

              },
              monthViewSettings: const MonthViewSettings(
                showAgenda: true,
                appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,

              ),
              appointmentBuilder: (BuildContext context, CalendarAppointmentDetails details) {
                final Order appointment = details.appointments.first as Order;


                return EventWidget(convertTime:  context
                    .read<AppointmentCubit>()
                    .convertTimeDate(   startTime: appointment.startTime!,endTime: appointment.endTime!),eventName: appointment.note!,);

              },

            );
          },



          failure: (message) => Center(child: Empty(errorMessage: message)),
        empty: () => const Center(child: Empty()),

    );
  },),);}
  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        automaticallyImplyLeading: false,


        actions: const [
          /// Notification on Dashboard
          ButtonNotification(),
        ],
      ),
    );
  }
}







class MeetingDataSource extends CalendarDataSource {
  final List<Order> appointments;
  MeetingDataSource(this.appointments);
  @override
  DateTime getStartTime(int index) {
    final startTime = appointments [index].startTime;
    return startTime != null ? DateTime.parse(startTime) : DateTime.now();
  }
  @override
  DateTime getEndTime(int index) {
    final endTime = appointments [index].endTime;
    return endTime != null ? DateTime.parse(endTime) : DateTime.now();
  }

  @override
  String getSubject(int index) {
    return appointments[index].note.toString();
  }



}
