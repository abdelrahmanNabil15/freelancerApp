// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Services {
  List<Service>? get services => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServicesCopyWith<Services> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesCopyWith<$Res> {
  factory $ServicesCopyWith(Services value, $Res Function(Services) then) =
      _$ServicesCopyWithImpl<$Res, Services>;
  @useResult
  $Res call({List<Service>? services});
}

/// @nodoc
class _$ServicesCopyWithImpl<$Res, $Val extends Services>
    implements $ServicesCopyWith<$Res> {
  _$ServicesCopyWithImpl(this._value, this._then);

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
              as List<Service>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServicesCopyWith<$Res> implements $ServicesCopyWith<$Res> {
  factory _$$_ServicesCopyWith(
          _$_Services value, $Res Function(_$_Services) then) =
      __$$_ServicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Service>? services});
}

/// @nodoc
class __$$_ServicesCopyWithImpl<$Res>
    extends _$ServicesCopyWithImpl<$Res, _$_Services>
    implements _$$_ServicesCopyWith<$Res> {
  __$$_ServicesCopyWithImpl(
      _$_Services _value, $Res Function(_$_Services) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = freezed,
  }) {
    return _then(_$_Services(
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
    ));
  }
}

/// @nodoc

class _$_Services implements _Services {
  const _$_Services({final List<Service>? services}) : _services = services;

  final List<Service>? _services;
  @override
  List<Service>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Services(services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Services &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServicesCopyWith<_$_Services> get copyWith =>
      __$$_ServicesCopyWithImpl<_$_Services>(this, _$identity);
}

abstract class _Services implements Services {
  const factory _Services({final List<Service>? services}) = _$_Services;

  @override
  List<Service>? get services;
  @override
  @JsonKey(ignore: true)
  _$$_ServicesCopyWith<_$_Services> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Service {
  int? get serviceId => throw _privateConstructorUsedError;
  String? get serviceName => throw _privateConstructorUsedError;
  String? get servicePrice => throw _privateConstructorUsedError;
  double? get serviceDuration => throw _privateConstructorUsedError;
  int? get freelancerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call(
      {int? serviceId,
      String? serviceName,
      String? servicePrice,
      double? serviceDuration,
      int? freelancerId});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

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
abstract class _$$_ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$_ServiceCopyWith(
          _$_Service value, $Res Function(_$_Service) then) =
      __$$_ServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? serviceId,
      String? serviceName,
      String? servicePrice,
      double? serviceDuration,
      int? freelancerId});
}

/// @nodoc
class __$$_ServiceCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$_Service>
    implements _$$_ServiceCopyWith<$Res> {
  __$$_ServiceCopyWithImpl(_$_Service _value, $Res Function(_$_Service) _then)
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
    return _then(_$_Service(
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

class _$_Service implements _Service {
  const _$_Service(
      {this.serviceId,
      this.serviceName,
      this.servicePrice,
      this.serviceDuration,
      this.freelancerId});

  @override
  final int? serviceId;
  @override
  final String? serviceName;
  @override
  final String? servicePrice;
  @override
  final double? serviceDuration;
  @override
  final int? freelancerId;

  @override
  String toString() {
    return 'Service(serviceId: $serviceId, serviceName: $serviceName, servicePrice: $servicePrice, serviceDuration: $serviceDuration, freelancerId: $freelancerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
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

  @override
  int get hashCode => Object.hash(runtimeType, serviceId, serviceName,
      servicePrice, serviceDuration, freelancerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      __$$_ServiceCopyWithImpl<_$_Service>(this, _$identity);
}

abstract class _Service implements Service {
  const factory _Service(
      {final int? serviceId,
      final String? serviceName,
      final String? servicePrice,
      final double? serviceDuration,
      final int? freelancerId}) = _$_Service;

  @override
  int? get serviceId;
  @override
  String? get serviceName;
  @override
  String? get servicePrice;
  @override
  double? get serviceDuration;
  @override
  int? get freelancerId;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}
