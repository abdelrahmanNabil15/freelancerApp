import 'package:flutter/material.dart';
import 'package:freeWoma/dependencies_injection.dart';
import 'package:freeWoma/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';

import '../../../appointments/pages/pages.dart';
import '../../../features.dart';

class ItemListScreen extends StatelessWidget {

  final List<Service> _services = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:   Text('Choose a Services',style: Theme.of(context).textTheme.titleMedium,)),
      body:BlocProvider(
  create: (_) => sl<ServicesCubit>()..fetchServices(const GetServicesParams(freelancerId: 1)),
  child: BlocBuilder<ServicesCubit, ServicesState>(
        builder: (_, state) {
          return state.when(
            loading: () => const Center(child: Loading()), success: (data) {
            _services .addAll(data.services!  );
            return Padding(

                  padding:  EdgeInsets.symmetric(
                    vertical: Dimens.space8,
                    horizontal: Dimens.space12,
                  ),
              child: ListView.separated(
                itemCount: _services.length  ,
                itemBuilder: (context, index) {
                  return

                     Stack(
                        children: <Widget>[
                          GestureDetector(

                            onTap: ()=>context.popWithData(context, _services[index] ),
                      child: Row(
                      children: <Widget>[

                      SizedBox(width: 16),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                _services[index].serviceName!,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                             SpacerV(value: Dimens.space4),
                              Text(
                                context.read<ServicesCubit>().getDurationInHoursAndMinutes(duration:  _services[index].serviceDuration!.toInt())!  ,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                      ),
                      Text(
                      '\$${_services[index].servicePrice! }',
                          style:  Theme.of(context).textTheme.labelLarge,
                      ),
                      ],
                  ),
                    ) ,

                  Positioned(
                            top: 0,
                            bottom: 0,
                            child: Container(
                              width: 3,
                              color:context.read<ServicesCubit>().getColorForIndex(index),
                            ),
                          )
                        ],


                     );


                }, separatorBuilder: (BuildContext context, int index)   =>const DividerH(),
              ),
            );
          }, failure: (message) => Center(child: Empty(errorMessage: message)),
            empty: () => const Center(child: Empty()),
          );
        },),
),
    );
  }
}
