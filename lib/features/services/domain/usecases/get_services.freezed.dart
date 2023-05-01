// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_services.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetServicesParams _$GetServicesParamsFromJson(Map<String, dynamic> json) {
  return _GetServicesParams.fromJson(json);
}

/// @nodoc
mixin _$GetServicesParams {
  int get freelancerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetServicesParamsCopyWith<GetServicesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetServicesParamsCopyWith<$Res> {
  factory $GetServicesParamsCopyWith(
          GetServicesParams value, $Res Function(GetServicesParams) then) =
      _$GetServicesParamsCopyWithImpl<$Res, GetServicesParams>;
  @useResult
  $Res call({int freelancerId});
}

/// @nodoc
class _$GetServicesParamsCopyWithImpl<$Res, $Val extends GetServicesParams>
    implements $GetServicesParamsCopyWith<$Res> {
  _$GetServicesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? freelancerId = null,
  }) {
    return _then(_value.copyWith(
      freelancerId: null == freelancerId
          ? _value.freelancerId
          : freelancerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetServicesParamsCopyWith<$Res>
    implements $GetServicesParamsCopyWith<$Res> {
  factory _$$_GetServicesParamsCopyWith(_$_GetServicesParams value,
          $Res Function(_$_GetServicesParams) then) =
      __$$_GetServicesParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int freelancerId});
}

/// @nodoc
class __$$_GetServicesParamsCopyWithImpl<$Res>
    extends _$GetServicesParamsCopyWithImpl<$Res, _$_GetServicesParams>
    implements _$$_GetServicesParamsCopyWith<$Res> {
  __$$_GetServicesParamsCopyWithImpl(
      _$_GetServicesParams _value, $Res Function(_$_GetServicesParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? freelancerId = null,
  }) {
    return _then(_$_GetServicesParams(
      freelancerId: null == freelancerId
          ? _value.freelancerId
          : freelancerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetServicesParams implements _GetServicesParams {
  const _$_GetServicesParams({this.freelancerId = 1});

  factory _$_GetServicesParams.fromJson(Map<String, dynamic> json) =>
      _$$_GetServicesParamsFromJson(json);

  @override
  @JsonKey()
  final int freelancerId;

  @override
  String toString() {
    return 'GetServicesParams(freelancerId: $freelancerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetServicesParams &&
            (identical(other.freelancerId, freelancerId) ||
                other.freelancerId == freelancerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, freelancerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetServicesParamsCopyWith<_$_GetServicesParams> get copyWith =>
      __$$_GetServicesParamsCopyWithImpl<_$_GetServicesParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetServicesParamsToJson(
      this,
    );
  }
}

abstract class _GetServicesParams implements GetServicesParams {
  const factory _GetServicesParams({final int freelancerId}) =
      _$_GetServicesParams;

  factory _GetServicesParams.fromJson(Map<String, dynamic> json) =
      _$_GetServicesParams.fromJson;

  @override
  int get freelancerId;
  @override
  @JsonKey(ignore: true)
  _$$_GetServicesParamsCopyWith<_$_GetServicesParams> get copyWith =>
      throw _privateConstructorUsedError;
}
