// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Shipment _$ShipmentFromJson(Map<String, dynamic> json) {
  return _Shipment.fromJson(json);
}

/// @nodoc
mixin _$Shipment {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @TimeOrNullConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  bool get shipped => throw _privateConstructorUsedError;
  int get produce => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipmentCopyWith<Shipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentCopyWith<$Res> {
  factory $ShipmentCopyWith(Shipment value, $Res Function(Shipment) then) =
      _$ShipmentCopyWithImpl<$Res, Shipment>;
  @useResult
  $Res call(
      {int? id,
      String name,
      @TimeOrNullConverter() DateTime? created,
      bool shipped,
      int produce});
}

/// @nodoc
class _$ShipmentCopyWithImpl<$Res, $Val extends Shipment>
    implements $ShipmentCopyWith<$Res> {
  _$ShipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? created = freezed,
    Object? shipped = null,
    Object? produce = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shipped: null == shipped
          ? _value.shipped
          : shipped // ignore: cast_nullable_to_non_nullable
              as bool,
      produce: null == produce
          ? _value.produce
          : produce // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipmentCopyWith<$Res> implements $ShipmentCopyWith<$Res> {
  factory _$$_ShipmentCopyWith(
          _$_Shipment value, $Res Function(_$_Shipment) then) =
      __$$_ShipmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      @TimeOrNullConverter() DateTime? created,
      bool shipped,
      int produce});
}

/// @nodoc
class __$$_ShipmentCopyWithImpl<$Res>
    extends _$ShipmentCopyWithImpl<$Res, _$_Shipment>
    implements _$$_ShipmentCopyWith<$Res> {
  __$$_ShipmentCopyWithImpl(
      _$_Shipment _value, $Res Function(_$_Shipment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? created = freezed,
    Object? shipped = null,
    Object? produce = null,
  }) {
    return _then(_$_Shipment(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shipped: null == shipped
          ? _value.shipped
          : shipped // ignore: cast_nullable_to_non_nullable
              as bool,
      produce: null == produce
          ? _value.produce
          : produce // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shipment implements _Shipment {
  const _$_Shipment(
      {this.id = null,
      required this.name,
      @TimeOrNullConverter() this.created = null,
      required this.shipped,
      required this.produce});

  factory _$_Shipment.fromJson(Map<String, dynamic> json) =>
      _$$_ShipmentFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  final String name;
  @override
  @JsonKey()
  @TimeOrNullConverter()
  final DateTime? created;
  @override
  final bool shipped;
  @override
  final int produce;

  @override
  String toString() {
    return 'Shipment(id: $id, name: $name, created: $created, shipped: $shipped, produce: $produce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shipment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.shipped, shipped) || other.shipped == shipped) &&
            (identical(other.produce, produce) || other.produce == produce));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, created, shipped, produce);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipmentCopyWith<_$_Shipment> get copyWith =>
      __$$_ShipmentCopyWithImpl<_$_Shipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipmentToJson(
      this,
    );
  }
}

abstract class _Shipment implements Shipment {
  const factory _Shipment(
      {final int? id,
      required final String name,
      @TimeOrNullConverter() final DateTime? created,
      required final bool shipped,
      required final int produce}) = _$_Shipment;

  factory _Shipment.fromJson(Map<String, dynamic> json) = _$_Shipment.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  @TimeOrNullConverter()
  DateTime? get created;
  @override
  bool get shipped;
  @override
  int get produce;
  @override
  @JsonKey(ignore: true)
  _$$_ShipmentCopyWith<_$_Shipment> get copyWith =>
      throw _privateConstructorUsedError;
}
