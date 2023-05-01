// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_appointment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentResponse _$AppointmentResponseFromJson(Map<String, dynamic> json) {
  return _AppointmentResponse.fromJson(json);
}

/// @nodoc
mixin _$AppointmentResponse {
  List<Orders>? get orders => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentResponseCopyWith<AppointmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentResponseCopyWith<$Res> {
  factory $AppointmentResponseCopyWith(
          AppointmentResponse value, $Res Function(AppointmentResponse) then) =
      _$AppointmentResponseCopyWithImpl<$Res, AppointmentResponse>;
  @useResult
  $Res call({List<Orders>? orders, String? message});
}

/// @nodoc
class _$AppointmentResponseCopyWithImpl<$Res, $Val extends AppointmentResponse>
    implements $AppointmentResponseCopyWith<$Res> {
  _$AppointmentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentResponseCopyWith<$Res>
    implements $AppointmentResponseCopyWith<$Res> {
  factory _$$_AppointmentResponseCopyWith(_$_AppointmentResponse value,
          $Res Function(_$_AppointmentResponse) then) =
      __$$_AppointmentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Orders>? orders, String? message});
}

/// @nodoc
class __$$_AppointmentResponseCopyWithImpl<$Res>
    extends _$AppointmentResponseCopyWithImpl<$Res, _$_AppointmentResponse>
    implements _$$_AppointmentResponseCopyWith<$Res> {
  __$$_AppointmentResponseCopyWithImpl(_$_AppointmentResponse _value,
      $Res Function(_$_AppointmentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_AppointmentResponse(
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentResponse extends _AppointmentResponse {
  const _$_AppointmentResponse({final List<Orders>? orders, this.message})
      : _orders = orders,
        super._();

  factory _$_AppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentResponseFromJson(json);

  final List<Orders>? _orders;
  @override
  List<Orders>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'AppointmentResponse(orders: $orders, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentResponse &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentResponseCopyWith<_$_AppointmentResponse> get copyWith =>
      __$$_AppointmentResponseCopyWithImpl<_$_AppointmentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentResponseToJson(
      this,
    );
  }
}

abstract class _AppointmentResponse extends AppointmentResponse {
  const factory _AppointmentResponse(
      {final List<Orders>? orders,
      final String? message}) = _$_AppointmentResponse;
  const _AppointmentResponse._() : super._();

  factory _AppointmentResponse.fromJson(Map<String, dynamic> json) =
      _$_AppointmentResponse.fromJson;

  @override
  List<Orders>? get orders;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentResponseCopyWith<_$_AppointmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Orders _$OrdersFromJson(Map<String, dynamic> json) {
  return _Orders.fromJson(json);
}

/// @nodoc
mixin _$Orders {
  int? get id => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int? get client => throw _privateConstructorUsedError;
  int? get freelancer => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_id')
  int? get serviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersCopyWith<Orders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCopyWith<$Res> {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) then) =
      _$OrdersCopyWithImpl<$Res, Orders>;
  @useResult
  $Res call(
      {int? id,
      int? price,
      String? status,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      String? note,
      int? client,
      int? freelancer,
      @JsonKey(name: 'service_id') int? serviceId});
}

/// @nodoc
class _$OrdersCopyWithImpl<$Res, $Val extends Orders>
    implements $OrdersCopyWith<$Res> {
  _$OrdersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? note = freezed,
    Object? client = freezed,
    Object? freelancer = freezed,
    Object? serviceId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as int?,
      freelancer: freezed == freelancer
          ? _value.freelancer
          : freelancer // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrdersCopyWith<$Res> implements $OrdersCopyWith<$Res> {
  factory _$$_OrdersCopyWith(_$_Orders value, $Res Function(_$_Orders) then) =
      __$$_OrdersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? price,
      String? status,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      String? note,
      int? client,
      int? freelancer,
      @JsonKey(name: 'service_id') int? serviceId});
}

/// @nodoc
class __$$_OrdersCopyWithImpl<$Res>
    extends _$OrdersCopyWithImpl<$Res, _$_Orders>
    implements _$$_OrdersCopyWith<$Res> {
  __$$_OrdersCopyWithImpl(_$_Orders _value, $Res Function(_$_Orders) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? note = freezed,
    Object? client = freezed,
    Object? freelancer = freezed,
    Object? serviceId = freezed,
  }) {
    return _then(_$_Orders(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as int?,
      freelancer: freezed == freelancer
          ? _value.freelancer
          : freelancer // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Orders implements _Orders {
  const _$_Orders(
      {this.id,
      this.price,
      this.status,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      this.note,
      this.client,
      this.freelancer,
      @JsonKey(name: 'service_id') this.serviceId});

  factory _$_Orders.fromJson(Map<String, dynamic> json) =>
      _$$_OrdersFromJson(json);

  @override
  final int? id;
  @override
  final int? price;
  @override
  final String? status;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  final String? note;
  @override
  final int? client;
  @override
  final int? freelancer;
  @override
  @JsonKey(name: 'service_id')
  final int? serviceId;

  @override
  String toString() {
    return 'Orders(id: $id, price: $price, status: $status, startTime: $startTime, endTime: $endTime, note: $note, client: $client, freelancer: $freelancer, serviceId: $serviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Orders &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.freelancer, freelancer) ||
                other.freelancer == freelancer) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, status, startTime,
      endTime, note, client, freelancer, serviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersCopyWith<_$_Orders> get copyWith =>
      __$$_OrdersCopyWithImpl<_$_Orders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrdersToJson(
      this,
    );
  }
}

abstract class _Orders implements Orders {
  const factory _Orders(
      {final int? id,
      final int? price,
      final String? status,
      @JsonKey(name: 'start_time') final String? startTime,
      @JsonKey(name: 'end_time') final String? endTime,
      final String? note,
      final int? client,
      final int? freelancer,
      @JsonKey(name: 'service_id') final int? serviceId}) = _$_Orders;

  factory _Orders.fromJson(Map<String, dynamic> json) = _$_Orders.fromJson;

  @override
  int? get id;
  @override
  int? get price;
  @override
  String? get status;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  String? get note;
  @override
  int? get client;
  @override
  int? get freelancer;
  @override
  @JsonKey(name: 'service_id')
  int? get serviceId;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersCopyWith<_$_Orders> get copyWith =>
      throw _privateConstructorUsedError;
}
