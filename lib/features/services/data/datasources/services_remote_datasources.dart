import 'package:dartz/dartz.dart';
import 'package:freeWoma/core/core.dart';
import 'package:freeWoma/features/users/users.dart';

import '../../../features.dart';

abstract class ServicesRemoteDatasource {


  Future<Either<Failure, GetServicesResponse>> getServices(GetServicesParams  getServicesParams);
}

class ServicesRemoteDatasourceImpl implements ServicesRemoteDatasource {
  final DioClient _client;

  ServicesRemoteDatasourceImpl(this._client);



  @override
  Future<Either<Failure, GetServicesResponse>> getServices(GetServicesParams getServicesParams) async{
    final response = await _client.getRequest(
      ListAPI.getServices,
      queryParameters:getServicesParams.toJson() ,

      converter: (response) =>
          GetServicesResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
