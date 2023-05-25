// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShipmentState {
  ShipmentStatus get status => throw _privateConstructorUsedError;
  List<Shipment> get shipments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipmentStateCopyWith<ShipmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentStateCopyWith<$Res> {
  factory $ShipmentStateCopyWith(
          ShipmentState value, $Res Function(ShipmentState) then) =
      _$ShipmentStateCopyWithImpl<$Res, ShipmentState>;
  @useResult
  $Res call({ShipmentStatus status, List<Shipment> shipments});
}

/// @nodoc
class _$ShipmentStateCopyWithImpl<$Res, $Val extends ShipmentState>
    implements $ShipmentStateCopyWith<$Res> {
  _$ShipmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? shipments = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShipmentStatus,
      shipments: null == shipments
          ? _value.shipments
          : shipments // ignore: cast_nullable_to_non_nullable
              as List<Shipment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipmentStatusCopyWith<$Res>
    implements $ShipmentStateCopyWith<$Res> {
  factory _$$_ShipmentStatusCopyWith(
          _$_ShipmentStatus value, $Res Function(_$_ShipmentStatus) then) =
      __$$_ShipmentStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShipmentStatus status, List<Shipment> shipments});
}

/// @nodoc
class __$$_ShipmentStatusCopyWithImpl<$Res>
    extends _$ShipmentStateCopyWithImpl<$Res, _$_ShipmentStatus>
    implements _$$_ShipmentStatusCopyWith<$Res> {
  __$$_ShipmentStatusCopyWithImpl(
      _$_ShipmentStatus _value, $Res Function(_$_ShipmentStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? shipments = null,
  }) {
    return _then(_$_ShipmentStatus(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShipmentStatus,
      shipments: null == shipments
          ? _value._shipments
          : shipments // ignore: cast_nullable_to_non_nullable
              as List<Shipment>,
    ));
  }
}

/// @nodoc

class _$_ShipmentStatus implements _ShipmentStatus {
  _$_ShipmentStatus(
      {this.status = ShipmentStatus.initial,
      final List<Shipment> shipments = const []})
      : _shipments = shipments;

  @override
  @JsonKey()
  final ShipmentStatus status;
  final List<Shipment> _shipments;
  @override
  @JsonKey()
  List<Shipment> get shipments {
    if (_shipments is EqualUnmodifiableListView) return _shipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shipments);
  }

  @override
  String toString() {
    return 'ShipmentState(status: $status, shipments: $shipments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipmentStatus &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._shipments, _shipments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_shipments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipmentStatusCopyWith<_$_ShipmentStatus> get copyWith =>
      __$$_ShipmentStatusCopyWithImpl<_$_ShipmentStatus>(this, _$identity);
}

abstract class _ShipmentStatus implements ShipmentState {
  factory _ShipmentStatus(
      {final ShipmentStatus status,
      final List<Shipment> shipments}) = _$_ShipmentStatus;

  @override
  ShipmentStatus get status;
  @override
  List<Shipment> get shipments;
  @override
  @JsonKey(ignore: true)
  _$$_ShipmentStatusCopyWith<_$_ShipmentStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
