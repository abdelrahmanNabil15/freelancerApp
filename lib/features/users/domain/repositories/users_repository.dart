import 'package:dartz/dartz.dart';
import 'package:freeWoma/core/core.dart';
import 'package:freeWoma/features/users/users.dart';

abstract class UsersRepository {
  Future<Either<Failure, Users>> users(UsersParams usersParams);
}
