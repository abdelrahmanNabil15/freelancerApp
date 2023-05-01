// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_services_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetServicesResponse _$GetServicesResponseFromJson(Map<String, dynamic> json) {
  return _GetServicesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetServicesResponse {
  @JsonKey(name: 'results')
  List<DataServices>? get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetServicesResponseCopyWith<GetServicesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetServicesResponseCopyWith<$Res> {
  factory $GetServicesResponseCopyWith(
          GetServicesResponse value, $Res Function(GetServicesResponse) then) =
      _$GetServicesResponseCopyWithImpl<$Res, GetServicesResponse>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<DataServices>? services});
}

/// @nodoc
class _$GetServicesResponseCopyWithImpl<$Res, $Val extends GetServicesResponse>
    implements $GetServicesResponseCopyWith<$Res> {
  _$GetServicesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = freezed,
  }) {
    return _then(_value.copyWith(
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<DataServices>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetServicesResponseCopyWith<$Res>
    implements $GetServicesResponseCopyWith<$Res> {
  factory _$$_GetServicesResponseCopyWith(_$_GetServicesResponse value,
          $Res Function(_$_GetServicesResponse) then) =
      __$$_GetServicesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<DataServices>? services});
}

/// @nodoc
class __$$_GetServicesResponseCopyWithImpl<$Res>
    extends _$GetServicesResponseCopyWithImpl<$Res, _$_GetServicesResponse>
    implements _$$_GetServicesResponseCopyWith<$Res> {
  __$$_GetServicesResponseCopyWithImpl(_$_GetServicesResponse _value,
      $Res Function(_$_GetServicesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = freezed,
  }) {
    return _then(_$_GetServicesResponse(
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<DataServices>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetServicesResponse extends _GetServicesResponse {
  const _$_GetServicesResponse(
      {@JsonKey(name: 'results') final List<DataServices>? services})
      : _services = services,
        super._();

  factory _$_GetServicesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetServicesResponseFromJson(json);

  final List<DataServices>? _services;
  @override
  @JsonKey(name: 'results')
  List<DataServices>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetServicesResponse(services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetServicesResponse &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetServicesResponseCopyWith<_$_GetServicesResponse> get copyWith =>
      __$$_GetServicesResponseCopyWithImpl<_$_GetServicesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetServicesResponseToJson(
      this,
    );
  }
}

abstract class _GetServicesResponse extends GetServicesResponse {
  const factory _GetServicesResponse(
          {@JsonKey(name: 'results') final List<DataServices>? services}) =
      _$_GetServicesResponse;
  const _GetServicesResponse._() : super._();

  factory _GetServicesResponse.fromJson(Map<String, dynamic> json) =
      _$_GetServicesResponse.fromJson;

  @override
  @JsonKey(name: 'results')
  List<DataServices>? get services;
  @override
  @JsonKey(ignore: true)
  _$$_GetServicesResponseCopyWith<_$_GetServicesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataServices _$DataServicesFromJson(Map<String, dynamic> json) {
  return _DataServices.fromJson(json);
}

/// @nodoc
mixin _$DataServices {
  @JsonKey(name: 'id')
  int? get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'key')
  String? get serviceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String? get servicePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'durations')
  double? get serviceDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'container')
  int? get freelancerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataServicesCopyWith<DataServices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataServicesCopyWith<$Res> {
  factory $DataServicesCopyWith(
          DataServices value, $Res Function(DataServices) then) =
      _$DataServicesCopyWithImpl<$Res, DataServices>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? serviceId,
      @JsonKey(name: 'key') String? serviceName,
      @JsonKey(name: 'value') String? servicePrice,
      @JsonKey(name: 'durations') double? serviceDuration,
      @JsonKey(name: 'container') int? freelancerId});
}

/// @nodoc
class _$DataServicesCopyWithImpl<$Res, $Val extends DataServices>
    implements $DataServicesCopyWith<$Res> {
  _$DataServicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceName = freezed,
    Object? servicePrice = freezed,
    Object? serviceDuration = freezed,
    Object? freelancerId = freezed,
  }) {
    return _then(_value.copyWith(
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceName: freezed == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      servicePrice: freezed == servicePrice
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceDuration: freezed == serviceDuration
          ? _value.serviceDuration
          : serviceDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      freelancerId: freezed == freelancerId
          ? _value.freelancerId
          : freelancerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataServicesCopyWith<$Res>
    implements $DataServicesCopyWith<$Res> {
  factory _$$_DataServicesCopyWith(
          _$_DataServices value, $Res Function(_$_DataServices) then) =
      __$$_DataServicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? serviceId,
      @JsonKey(name: 'key') String? serviceName,
      @JsonKey(name: 'value') String? servicePrice,
      @JsonKey(name: 'durations') double? serviceDuration,
      @JsonKey(name: 'container') int? freelancerId});
}

/// @nodoc
class __$$_DataServicesCopyWithImpl<$Res>
    extends _$DataServicesCopyWithImpl<$Res, _$_DataServices>
    implements _$$_DataServicesCopyWith<$Res> {
  __$$_DataServicesCopyWithImpl(
      _$_DataServices _value, $Res Function(_$_DataServices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceName = freezed,
    Object? servicePrice = freezed,
    Object? serviceDuration = freezed,
    Object? freelancerId = freezed,
  }) {
    return _then(_$_DataServices(
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceName: freezed == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      servicePrice: freezed == servicePrice
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceDuration: freezed == serviceDuration
          ? _value.serviceDuration
          : serviceDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      freelancerId: freezed == freelancerId
          ? _value.freelancerId
          : freelancerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataServices implements _DataServices {
  const _$_DataServices(
      {@JsonKey(name: 'id') this.serviceId,
      @JsonKey(name: 'key') this.serviceName,
      @JsonKey(name: 'value') this.servicePrice,
      @JsonKey(name: 'durations') this.serviceDuration,
      @JsonKey(name: 'container') this.freelancerId});

  factory _$_DataServices.fromJson(Map<String, dynamic> json) =>
      _$$_DataServicesFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? serviceId;
  @override
  @JsonKey(name: 'key')
  final String? serviceName;
  @override
  @JsonKey(name: 'value')
  final String? servicePrice;
  @override
  @JsonKey(name: 'durations')
  final double? serviceDuration;
  @override
  @JsonKey(name: 'container')
  final int? freelancerId;

  @override
  String toString() {
    return 'DataServices(serviceId: $serviceId, serviceName: $serviceName, servicePrice: $servicePrice, serviceDuration: $serviceDuration, freelancerId: $freelancerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataServices &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.servicePrice, servicePrice) ||
                other.servicePrice == servicePrice) &&
            (identical(other.serviceDuration, serviceDuration) ||
                other.serviceDuration == serviceDuration) &&
            (identical(other.freelancerId, freelancerId) ||
                other.freelancerId == freelancerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, serviceId, serviceName,
      servicePrice, serviceDuration, freelancerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataServicesCopyWith<_$_DataServices> get copyWith =>
      __$$_DataServicesCopyWithImpl<_$_DataServices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataServicesToJson(
      this,
    );
  }
}

abstract class _DataServices implements DataServices {
  const factory _DataServices(
      {@JsonKey(name: 'id') final int? serviceId,
      @JsonKey(name: 'key') final String? serviceName,
      @JsonKey(name: 'value') final String? servicePrice,
      @JsonKey(name: 'durations') final double? serviceDuration,
      @JsonKey(name: 'container') final int? freelancerId}) = _$_DataServices;

  factory _DataServices.fromJson(Map<String, dynamic> json) =
      _$_DataServices.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get serviceId;
  @override
  @JsonKey(name: 'key')
  String? get serviceName;
  @override
  @JsonKey(name: 'value')
  String? get servicePrice;
  @override
  @JsonKey(name: 'durations')
  double? get serviceDuration;
  @override
  @JsonKey(name: 'container')
  int? get freelancerId;
  @override
  @JsonKey(ignore: true)
  _$$_DataServicesCopyWith<_$_DataServices> get copyWith =>
      throw _privateConstructorUsedError;
}
