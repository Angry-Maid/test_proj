// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'produce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Produce _$ProduceFromJson(Map<String, dynamic> json) {
  return _Produce.fromJson(json);
}

/// @nodoc
mixin _$Produce {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProduceCopyWith<Produce> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceCopyWith<$Res> {
  factory $ProduceCopyWith(Produce value, $Res Function(Produce) then) =
      _$ProduceCopyWithImpl<$Res, Produce>;
  @useResult
  $Res call({int? id, String name, int quantity});
}

/// @nodoc
class _$ProduceCopyWithImpl<$Res, $Val extends Produce>
    implements $ProduceCopyWith<$Res> {
  _$ProduceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? quantity = null,
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
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProduceCopyWith<$Res> implements $ProduceCopyWith<$Res> {
  factory _$$_ProduceCopyWith(
          _$_Produce value, $Res Function(_$_Produce) then) =
      __$$_ProduceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, int quantity});
}

/// @nodoc
class __$$_ProduceCopyWithImpl<$Res>
    extends _$ProduceCopyWithImpl<$Res, _$_Produce>
    implements _$$_ProduceCopyWith<$Res> {
  __$$_ProduceCopyWithImpl(_$_Produce _value, $Res Function(_$_Produce) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_$_Produce(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Produce implements _Produce {
  const _$_Produce(
      {this.id = null, required this.name, required this.quantity});

  factory _$_Produce.fromJson(Map<String, dynamic> json) =>
      _$$_ProduceFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  final String name;
  @override
  final int quantity;

  @override
  String toString() {
    return 'Produce(id: $id, name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Produce &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProduceCopyWith<_$_Produce> get copyWith =>
      __$$_ProduceCopyWithImpl<_$_Produce>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProduceToJson(
      this,
    );
  }
}

abstract class _Produce implements Produce {
  const factory _Produce(
      {final int? id,
      required final String name,
      required final int quantity}) = _$_Produce;

  factory _Produce.fromJson(Map<String, dynamic> json) = _$_Produce.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ProduceCopyWith<_$_Produce> get copyWith =>
      throw _privateConstructorUsedError;
}
