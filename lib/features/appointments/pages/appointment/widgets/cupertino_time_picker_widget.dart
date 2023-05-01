import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freeWoma/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/core.dart';
import '../cubit/appoitment_cubit.dart';

class CupertinoTimePickerWidget extends StatefulWidget {
  var selectedTime = TextEditingController();
  CupertinoTimePickerWidget({Key? key, required this.selectedTime})
      : super(key: key);

  @override
  State<CupertinoTimePickerWidget> createState() =>
      _CupertinoTimePickerWidgetState();
}

class _CupertinoTimePickerWidgetState extends State<CupertinoTimePickerWidget> {
  DateTime _selectedTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.showWidgetH,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          SizedBox(
            height: Dimens.cupertinoDatePickerH,
            child: CupertinoDatePicker(
                minimumDate: DateTime(DateTime.now().year, DateTime.now().month,
                    DateTime.now().day, 9, 30,),
                maximumDate: DateTime(DateTime.now().year, DateTime.now().month,
                    DateTime.now().day, 22,),
// set the minimum allowed date
                mode: CupertinoDatePickerMode.time,
                initialDateTime: DateTime.now(),
                onDateTimeChanged: (val) {
                  setState(() {
                    _selectedTime = val;
                    widget.selectedTime.text = context
                            .read<AppointmentCubit>()
                            .convertDateTimeHour(
                                chosenTime: _selectedTime,) ??
                        '$_selectedTime';
                  });
                },),
          ),
          // Close the modal
          CupertinoButton(
            child: Text(
              'OK',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            onPressed: () {
              context.dismiss();
              widget.selectedTime.text = context
                      .read<AppointmentCubit>()
                      .convertDateTimeHour(chosenTime: _selectedTime) ??
                  '$_selectedTime';
            },
          )
        ],
      ),
    );
  }
}
