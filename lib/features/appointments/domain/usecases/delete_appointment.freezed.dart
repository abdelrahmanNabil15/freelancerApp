// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteAppointmentsParams _$DeleteAppointmentsParamsFromJson(
    Map<String, dynamic> json) {
  return _DeleteAppointmentsParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteAppointmentsParams {
  int get userId => throw _privateConstructorUsedError;
  int get appointmentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteAppointmentsParamsCopyWith<DeleteAppointmentsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAppointmentsParamsCopyWith<$Res> {
  factory $DeleteAppointmentsParamsCopyWith(DeleteAppointmentsParams value,
          $Res Function(DeleteAppointmentsParams) then) =
      _$DeleteAppointmentsParamsCopyWithImpl<$Res, DeleteAppointmentsParams>;
  @useResult
  $Res call({int userId, int appointmentId});
}

/// @nodoc
class _$DeleteAppointmentsParamsCopyWithImpl<$Res,
        $Val extends DeleteAppointmentsParams>
    implements $DeleteAppointmentsParamsCopyWith<$Res> {
  _$DeleteAppointmentsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? appointmentId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteAppointmentsParamsCopyWith<$Res>
    implements $DeleteAppointmentsParamsCopyWith<$Res> {
  factory _$$_DeleteAppointmentsParamsCopyWith(
          _$_DeleteAppointmentsParams value,
          $Res Function(_$_DeleteAppointmentsParams) then) =
      __$$_DeleteAppointmentsParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int appointmentId});
}

/// @nodoc
class __$$_DeleteAppointmentsParamsCopyWithImpl<$Res>
    extends _$DeleteAppointmentsParamsCopyWithImpl<$Res,
        _$_DeleteAppointmentsParams>
    implements _$$_DeleteAppointmentsParamsCopyWith<$Res> {
  __$$_DeleteAppointmentsParamsCopyWithImpl(_$_DeleteAppointmentsParams _value,
      $Res Function(_$_DeleteAppointmentsParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? appointmentId = null,
  }) {
    return _then(_$_DeleteAppointmentsParams(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteAppointmentsParams implements _DeleteAppointmentsParams {
  const _$_DeleteAppointmentsParams({this.userId = 1, this.appointmentId = 1});

  factory _$_DeleteAppointmentsParams.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteAppointmentsParamsFromJson(json);

  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final int appointmentId;

  @override
  String toString() {
    return 'DeleteAppointmentsParams(userId: $userId, appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAppointmentsParams &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, appointmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAppointmentsParamsCopyWith<_$_DeleteAppointmentsParams>
      get copyWith => __$$_DeleteAppointmentsParamsCopyWithImpl<
          _$_DeleteAppointmentsParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteAppointmentsParamsToJson(
      this,
    );
  }
}

abstract class _DeleteAppointmentsParams implements DeleteAppointmentsParams {
  const factory _DeleteAppointmentsParams(
      {final int userId,
      final int appointmentId}) = _$_DeleteAppointmentsParams;

  factory _DeleteAppointmentsParams.fromJson(Map<String, dynamic> json) =
      _$_DeleteAppointmentsParams.fromJson;

  @override
  int get userId;
  @override
  int get appointmentId;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteAppointmentsParamsCopyWith<_$_DeleteAppointmentsParams>
      get copyWith => throw _privateConstructorUsedError;
}
