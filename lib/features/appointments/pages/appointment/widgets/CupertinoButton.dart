 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freeWoma/utils/ext/context.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/core.dart';
import '../cubit/appoitment_cubit.dart';

class CupertinoDatePickerWidget extends StatefulWidget {

    var selectedTime = TextEditingController();
     CupertinoDatePickerWidget({Key? key, required this.selectedTime}) : super(key: key);

   @override
   State<CupertinoDatePickerWidget> createState() => _CupertinoDatePickerWidgetState();
 }

 class _CupertinoDatePickerWidgetState extends State<CupertinoDatePickerWidget> {
   DateTime   _selectedTime= DateTime.now();

   @override
   Widget build(BuildContext context) {
     return   Container(
       height: Dimens.showWidgetH,
       color: const Color.fromARGB(255, 255, 255, 255),
       child: Column(
         children: [
           SizedBox(
             height: Dimens.cupertinoDatePickerH,
             child: CupertinoDatePicker(
                 minimumDate:  DateTime(DateTime.now().year, DateTime.now().month + 1, DateTime.now().day, 9, 30),
                 maximumDate: DateTime(DateTime.now().year, DateTime.now().month + 2, 0, 24),
                 initialDateTime:DateTime(DateTime.now().year, DateTime.now().month + 1, DateTime.now().day, 9, 30),
                 onDateTimeChanged: (val) {
                   setState(() {
                     _selectedTime = val;
                     widget.selectedTime.text= _selectedTime.toString()   ;

                   });
                 }),
           ),
           // Close the modal
           CupertinoButton(
             child:   Text('OK',style:  Theme.of(context).textTheme.labelLarge ,),
             onPressed: ()  {
               context.dismiss();
               widget.selectedTime.text=context.read<AppointmentCubit>().convertDateTimeTodayAndHour(chosenTime: _selectedTime ) ??'$_selectedTime';

             } ,
           )

         ],
       ),
     ) ;
   }
 }
