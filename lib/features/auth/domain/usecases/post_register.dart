import 'package:dartz/dartz.dart';
import 'package:freeWoma/core/core.dart';
import 'package:freeWoma/features/features.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_register.freezed.dart';
part 'post_register.g.dart';

class PostRegister extends UseCase<Register, RegisterParams> {
  final AuthRepository _repo;

  PostRegister(this._repo);

  @override
  Future<Either<Failure, Register>> call(RegisterParams params) =>
      _repo.register(params);
}

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    @Default("") String username,
    @Default("") String password,
    @JsonKey(name: 'password2')
    @Default("") String confirmPassword,
    @Default("") String email,
    @JsonKey(name: 'first_name')
    @Default("") String firstName,
    @JsonKey(name: 'last_name')
    @Default("") String lastName,
  }) = _RegisterParams;

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);
}
