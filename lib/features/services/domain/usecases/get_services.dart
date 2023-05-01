import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/core.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../features.dart';


part 'get_services.freezed.dart';
part 'get_services.g.dart';
class GetServices extends UseCase<Services , GetServicesParams> {
  final ServicesRepository _repo;

  GetServices(this._repo);

  @override
  Future<Either<Failure, Services>> call(GetServicesParams params) =>
      _repo.getServices(params);
}

@freezed
class GetServicesParams with _$GetServicesParams {
  const factory GetServicesParams({@Default(1) int freelancerId}) = _GetServicesParams;

  factory GetServicesParams.fromJson(Map<String, dynamic> json) =>
      _$GetServicesParamsFromJson(json);
}