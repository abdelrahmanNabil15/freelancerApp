import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freeWoma/core/core.dart';

import '../../../features.dart';


class ServicesRepositoryImpl implements ServicesRepository {
  /// Data Source
  final ServicesRemoteDatasource servicesRemoteDatasource;

  ServicesRepositoryImpl(this.servicesRemoteDatasource);


  @override
  Future<Either<Failure, Services>> getServices(GetServicesParams getServicesParams)async {

    final response = await servicesRemoteDatasource.getServices(
      getServicesParams,
    );

    return response.fold(
          (failure) => Left(failure),
          (servicesResponse) {
        if (servicesResponse.services?.isEmpty ?? true) {
          return Left(NoDataFailure());
        }


          return Right(servicesResponse.toEntity());
      },
    );
  }




}
