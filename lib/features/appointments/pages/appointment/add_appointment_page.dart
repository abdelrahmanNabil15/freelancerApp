import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freeWoma/features/appointments/pages/appointment/widgets/CupertinoButton.dart';
import 'package:freeWoma/features/appointments/pages/appointment/widgets/add_note_widget.dart';
import 'package:freeWoma/features/appointments/pages/appointment/widgets/cupertino_time_picker_widget.dart';
import 'package:freeWoma/features/services/pages/pages/list_service.dart';
import 'package:freeWoma/utils/ext/ext.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../core/core.dart';
import '../../../features.dart';

class AddAppointmentScreen extends StatefulWidget {
  const AddAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<AddAppointmentScreen> createState() => _AddAppointmentScreenState();
}

class _AddAppointmentScreenState extends State<AddAppointmentScreen> {
  Service? _selectedItem;
  String? _note;

  final _selectedStartTime = TextEditingController();
  final _selectedEndTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
    body: BlocListener<AppointmentCubit, AppointmentState>(
      listener: (_, state) {
        state.when(
          loading: () => context.show(),
          success: (data) {
            context.dismiss();
            data.message!.toToastSuccess();

            TextInput.finishAutofillContext();
          },
          failure: (message) {
            context.dismiss();
            message.toToastError();
          }, empty: ()=>const Center(child: Empty()),
        );
      },
  child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Dimens.space16,
          horizontal: Dimens.space24,
        ),
        child: Column(
          children: [
            DottedBorder(
                color: Palette.gery10,
                borderType: BorderType.RRect,
                radius: const Radius.circular(Dimens.cornerRadius),
                child: Container(
                  height: Dimens.bottomBar,
                  decoration: BoxDecorations.card.copyWith(
                    color: Theme.of(context).cardColor,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: Dimens.space16,
                    horizontal: Dimens.space24,
                  ),
                  child: ListTile(
                    leading: CircleImage(
                      url: Images.user,
                      size: Dimens.selectedIndicatorW,
                    ),
                    title: Text(
                      "Select a client or leave empty for walk-in",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    selected: true,
                  ),
                )),
            const SpacerV(),
            TextF(
                controller: TextEditingController(text: _selectedItem?.serviceName??''),
                labelText: 'SERVICE',
                hintText: 'choose service',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                readOnly: true,
              textAlign: TextAlign.start,
                suffixIcon:Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimens.space16,
                    horizontal: Dimens.space24,
                  ),
                  child: Text(
                    _selectedItem?.servicePrice!=null? '\$${_selectedItem?.servicePrice!??'' }':'',
                    style:  Theme.of(context).textTheme.labelSmall,
                  ),
                ),
                onTap: () async {
                  final chosenService = await context
                      .navigateAndReturnData<Service>(context, ItemListScreen());

                  if (chosenService != null) {
                    setState(() {
                      _selectedItem = chosenService;
                    });
                  }
                }),
            SpacerV(
              value: Dimens.space6,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextF(
                    controller: _selectedStartTime,
                    onTap: () async {
                      context.showWidget(
                          widget: CupertinoDatePickerWidget(
                        selectedTime: _selectedStartTime,
                      ));
                    },
                    hintText: 'choose time start',
                    labelText: 'START DATE &TIME',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    readOnly: true,
                  ),
                ),
                const SpacerH(),
                Expanded(
                  flex: 2,
                  child: TextF(
                    hintText: 'end',
                    controller: _selectedEndTime,
                    labelText: 'END',
                    onTap: () async {
                      context.showWidget(
                        widget: CupertinoTimePickerWidget(
                          selectedTime: _selectedEndTime,
                        ),
                      );
                    },
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    readOnly: true,
                  ),
                ),
              ],
            ),
            const DividerH(),
            ListTile(
              title: Text(
                'Notes & Questions',
                style: Theme.of(context).textTheme.bodyLarge500,
              ),
              onTap: () async {
                var note = await context.navigateAndReturnData<String>(
                    context, const AddNoteWidget());
                if (note != null) {
                  setState(() {
                    _note = note;
                  });
                }
              },
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const DividerH(),
            ListTile(
              title: Text(
                'Mobile Service',
                style: Theme.of(context).textTheme.bodyLarge500,
              ),
              onTap: () {},
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
),
      bottomSheet: BottomAppBar(
          elevation: 0.0,
          color: Palette.white,
          surfaceTintColor: Palette.white,
          child: BottomSheetButtonCustom(
            title: 'save',
            color: Palette.primary,
            onPressed: () {
              print(
              context.read<AppointmentCubit>().convertStringToDateTime(  _selectedStartTime.text));
    if ( _validate() ) {
    context.read<AppointmentCubit>() .addAppointment(AppointmentsParams(
    serviceId:_selectedItem!.serviceId ,
    startTime: '2023-04-30 14:30:00',

    //context.read<AppointmentCubit>().convertStringToDateTime(  _selectedStartTime.text).toString(),
    endTime:'2023-04-30 15:30:00',
    //context.read<AppointmentCubit>().convertTimeToDateTime(timeString: _selectedStartTime.text)  ,
    freelancer:3 ,
    note:_note ,
    price: int.parse(_selectedItem!.servicePrice!),
    client:1 ,
    status: 'Approved',


    ));
    }  },
            enabled: _validate(),
          ),),
    );
  }

 bool _validate(){
 if(  _selectedStartTime.text!=null && _selectedEndTime.text!=null&&
     _note!=null&&_selectedItem!.serviceId!=null ) {
   return true;
 }else{return false;}

 }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'New Appointment',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            size: Dimens.space24,
          ),
          onPressed: () {
            context.back();
          },
        ),
      ),
    );
  }
}
