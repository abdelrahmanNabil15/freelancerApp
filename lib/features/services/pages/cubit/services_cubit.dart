import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/core.dart';
import '../../../features.dart';

part 'services_state.dart';

part 'services_cubit.freezed.dart';
class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit(this._getServices, ) : super(const _Loading());
  final GetServices _getServices;

  Future<void> fetchServices(GetServicesParams getServicesParams) async {
    /// Only show loading in 1 page
    await _fetchServicesData(getServicesParams);
  }



  Future<void> _fetchServicesData(GetServicesParams getServicesParams) async {
    if (getServicesParams.freelancerId ==null ) {
      emit(const _Loading());
    }

    final data = await _getServices.call(getServicesParams);
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

  Color getColorForIndex(int index) {
    return   Palette.colors[index % Palette.colors.length];
  }


  String? getDurationInHoursAndMinutes({required int duration}){

    Duration _duration = Duration(minutes: duration);
    int hours = _duration.inHours; // Get the number of hours
    int minutes = _duration.inMinutes % 60; // Get the number of minutes remaining after the hours are accounted for

// Convert to string format
    String durationString = hours > 0 ? '$hours h ' : '';
    durationString += '$minutes min';

  return   durationString ;  // Output: 1 h 30 min

  }

}
