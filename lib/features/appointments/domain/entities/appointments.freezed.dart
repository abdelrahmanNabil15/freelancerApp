// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Appointments {
  List<Order>? get appointments => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentsCopyWith<Appointments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentsCopyWith<$Res> {
  factory $AppointmentsCopyWith(
          Appointments value, $Res Function(Appointments) then) =
      _$AppointmentsCopyWithImpl<$Res, Appointments>;
  @useResult
  $Res call({List<Order>? appointments, String? message});
}

/// @nodoc
class _$AppointmentsCopyWithImpl<$Res, $Val extends Appointments>
    implements $AppointmentsCopyWith<$Res> {
  _$AppointmentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointments = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      appointments: freezed == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentsCopyWith<$Res>
    implements $AppointmentsCopyWith<$Res> {
  factory _$$_AppointmentsCopyWith(
          _$_Appointments value, $Res Function(_$_Appointments) then) =
      __$$_AppointmentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Order>? appointments, String? message});
}

/// @nodoc
class __$$_AppointmentsCopyWithImpl<$Res>
    extends _$AppointmentsCopyWithImpl<$Res, _$_Appointments>
    implements _$$_AppointmentsCopyWith<$Res> {
  __$$_AppointmentsCopyWithImpl(
      _$_Appointments _value, $Res Function(_$_Appointments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointments = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_Appointments(
      appointments: freezed == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Appointments implements _Appointments {
  const _$_Appointments({final List<Order>? appointments, this.message})
      : _appointments = appointments;

  final List<Order>? _appointments;
  @override
  List<Order>? get appointments {
    final value = _appointments;
    if (value == null) return null;
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'Appointments(appointments: $appointments, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Appointments &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_appointments), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentsCopyWith<_$_Appointments> get copyWith =>
      __$$_AppointmentsCopyWithImpl<_$_Appointments>(this, _$identity);
}

abstract class _Appointments implements Appointments {
  const factory _Appointments(
      {final List<Order>? appointments,
      final String? message}) = _$_Appointments;

  @override
  List<Order>? get appointments;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentsCopyWith<_$_Appointments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Order {
  int? get id => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int? get client => throw _privateConstructorUsedError;
  int? get freelancer => throw _privateConstructorUsedError;
  int? get serviceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int? id,
      int? price,
      String? status,
      String? startTime,
      String? endTime,
      String? note,
      int? client,
      int? freelancer,
      int? serviceId});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

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
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? price,
      String? status,
      String? startTime,
      String? endTime,
      String? note,
      int? client,
      int? freelancer,
      int? serviceId});
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
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
    return _then(_$_Order(
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

class _$_Order implements _Order {
  const _$_Order(
      {this.id,
      this.price,
      this.status,
      this.startTime,
      this.endTime,
      this.note,
      this.client,
      this.freelancer,
      this.serviceId});

  @override
  final int? id;
  @override
  final int? price;
  @override
  final String? status;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? note;
  @override
  final int? client;
  @override
  final int? freelancer;
  @override
  final int? serviceId;

  @override
  String toString() {
    return 'Order(id: $id, price: $price, status: $status, startTime: $startTime, endTime: $endTime, note: $note, client: $client, freelancer: $freelancer, serviceId: $serviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, price, status, startTime,
      endTime, note, client, freelancer, serviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);
}

abstract class _Order implements Order {
  const factory _Order(
      {final int? id,
      final int? price,
      final String? status,
      final String? startTime,
      final String? endTime,
      final String? note,
      final int? client,
      final int? freelancer,
      final int? serviceId}) = _$_Order;

  @override
  int? get id;
  @override
  int? get price;
  @override
  String? get status;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  String? get note;
  @override
  int? get client;
  @override
  int? get freelancer;
  @override
  int? get serviceId;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
