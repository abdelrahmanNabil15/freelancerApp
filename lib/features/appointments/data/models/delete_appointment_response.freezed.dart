// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_appointment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteAppointmentResponse _$DeleteAppointmentResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteAppointmentResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteAppointmentResponse {
  @JsonKey(name: 'success')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteAppointmentResponseCopyWith<DeleteAppointmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAppointmentResponseCopyWith<$Res> {
  factory $DeleteAppointmentResponseCopyWith(DeleteAppointmentResponse value,
          $Res Function(DeleteAppointmentResponse) then) =
      _$DeleteAppointmentResponseCopyWithImpl<$Res, DeleteAppointmentResponse>;
  @useResult
  $Res call({@JsonKey(name: 'success') String? message});
}

/// @nodoc
class _$DeleteAppointmentResponseCopyWithImpl<$Res,
        $Val extends DeleteAppointmentResponse>
    implements $DeleteAppointmentResponseCopyWith<$Res> {
  _$DeleteAppointmentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteAppointmentResponseCopyWith<$Res>
    implements $DeleteAppointmentResponseCopyWith<$Res> {
  factory _$$_DeleteAppointmentResponseCopyWith(
          _$_DeleteAppointmentResponse value,
          $Res Function(_$_DeleteAppointmentResponse) then) =
      __$$_DeleteAppointmentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'success') String? message});
}

/// @nodoc
class __$$_DeleteAppointmentResponseCopyWithImpl<$Res>
    extends _$DeleteAppointmentResponseCopyWithImpl<$Res,
        _$_DeleteAppointmentResponse>
    implements _$$_DeleteAppointmentResponseCopyWith<$Res> {
  __$$_DeleteAppointmentResponseCopyWithImpl(
      _$_DeleteAppointmentResponse _value,
      $Res Function(_$_DeleteAppointmentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_DeleteAppointmentResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteAppointmentResponse extends _DeleteAppointmentResponse {
  const _$_DeleteAppointmentResponse({@JsonKey(name: 'success') this.message})
      : super._();

  factory _$_DeleteAppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteAppointmentResponseFromJson(json);

  @override
  @JsonKey(name: 'success')
  final String? message;

  @override
  String toString() {
    return 'DeleteAppointmentResponse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAppointmentResponse &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAppointmentResponseCopyWith<_$_DeleteAppointmentResponse>
      get copyWith => __$$_DeleteAppointmentResponseCopyWithImpl<
          _$_DeleteAppointmentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteAppointmentResponseToJson(
      this,
    );
  }
}

abstract class _DeleteAppointmentResponse extends DeleteAppointmentResponse {
  const factory _DeleteAppointmentResponse(
          {@JsonKey(name: 'success') final String? message}) =
      _$_DeleteAppointmentResponse;
  const _DeleteAppointmentResponse._() : super._();

  factory _DeleteAppointmentResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteAppointmentResponse.fromJson;

  @override
  @JsonKey(name: 'success')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteAppointmentResponseCopyWith<_$_DeleteAppointmentResponse>
      get copyWith => throw _privateConstructorUsedError;
}
