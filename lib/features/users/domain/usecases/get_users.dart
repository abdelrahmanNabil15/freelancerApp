import 'package:dartz/dartz.dart';
import 'package:freeWoma/core/core.dart';
import 'package:freeWoma/features/users/users.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_users.freezed.dart';
part 'get_users.g.dart';

class GetUsers extends UseCase<Users, UsersParams> {
  final UsersRepository _repo;

  GetUsers(this._repo);

  @override
  Future<Either<Failure, Users>> call(UsersParams params) =>
      _repo.users(params);
}

@freezed
class UsersParams with _$UsersParams {
  const factory UsersParams({@Default(1) int page}) = _UsersParams;

  factory UsersParams.fromJson(Map<String, dynamic> json) =>
      _$UsersParamsFromJson(json);
}
