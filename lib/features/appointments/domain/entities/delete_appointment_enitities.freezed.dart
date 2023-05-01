// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_appointment_enitities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteAppointment {
  String? get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteAppointmentCopyWith<DeleteAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAppointmentCopyWith<$Res> {
  factory $DeleteAppointmentCopyWith(
          DeleteAppointment value, $Res Function(DeleteAppointment) then) =
      _$DeleteAppointmentCopyWithImpl<$Res, DeleteAppointment>;
  @useResult
  $Res call({String? success});
}

/// @nodoc
class _$DeleteAppointmentCopyWithImpl<$Res, $Val extends DeleteAppointment>
    implements $DeleteAppointmentCopyWith<$Res> {
  _$DeleteAppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteAppointmentCopyWith<$Res>
    implements $DeleteAppointmentCopyWith<$Res> {
  factory _$$_DeleteAppointmentCopyWith(_$_DeleteAppointment value,
          $Res Function(_$_DeleteAppointment) then) =
      __$$_DeleteAppointmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? success});
}

/// @nodoc
class __$$_DeleteAppointmentCopyWithImpl<$Res>
    extends _$DeleteAppointmentCopyWithImpl<$Res, _$_DeleteAppointment>
    implements _$$_DeleteAppointmentCopyWith<$Res> {
  __$$_DeleteAppointmentCopyWithImpl(
      _$_DeleteAppointment _value, $Res Function(_$_DeleteAppointment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$_DeleteAppointment(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DeleteAppointment implements _DeleteAppointment {
  const _$_DeleteAppointment({this.success});

  @override
  final String? success;

  @override
  String toString() {
    return 'DeleteAppointment(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAppointment &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAppointmentCopyWith<_$_DeleteAppointment> get copyWith =>
      __$$_DeleteAppointmentCopyWithImpl<_$_DeleteAppointment>(
          this, _$identity);
}

abstract class _DeleteAppointment implements DeleteAppointment {
  const factory _DeleteAppointment({final String? success}) =
      _$_DeleteAppointment;

  @override
  String? get success;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteAppointmentCopyWith<_$_DeleteAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}
