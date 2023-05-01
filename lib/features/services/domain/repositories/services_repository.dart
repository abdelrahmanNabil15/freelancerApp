import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../../features.dart';


abstract class ServicesRepository {


  Future<Either<Failure, Services>>getServices(
      GetServicesParams  getServicesParams,
  );
}
