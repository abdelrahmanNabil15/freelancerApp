// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterParams _$$_RegisterParamsFromJson(Map<String, dynamic> json) =>
    _$_RegisterParams(
      username: json['username'] as String? ?? "",
      password: json['password'] as String? ?? "",
      confirmPassword: json['password2'] as String? ?? "",
      email: json['email'] as String? ?? "",
      firstName: json['first_name'] as String? ?? "",
      lastName: json['last_name'] as String? ?? "",
    );

Map<String, dynamic> _$$_RegisterParamsToJson(_$_RegisterParams instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'password2': instance.confirmPassword,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
