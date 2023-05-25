// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'produce_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProduceState {
  ProduceStatus get status => throw _privateConstructorUsedError;
  List<Produce> get produces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProduceStateCopyWith<ProduceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceStateCopyWith<$Res> {
  factory $ProduceStateCopyWith(
          ProduceState value, $Res Function(ProduceState) then) =
      _$ProduceStateCopyWithImpl<$Res, ProduceState>;
  @useResult
  $Res call({ProduceStatus status, List<Produce> produces});
}

/// @nodoc
class _$ProduceStateCopyWithImpl<$Res, $Val extends ProduceState>
    implements $ProduceStateCopyWith<$Res> {
  _$ProduceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? produces = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProduceStatus,
      produces: null == produces
          ? _value.produces
          : produces // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProduceStateCopyWith<$Res>
    implements $ProduceStateCopyWith<$Res> {
  factory _$$_ProduceStateCopyWith(
          _$_ProduceState value, $Res Function(_$_ProduceState) then) =
      __$$_ProduceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProduceStatus status, List<Produce> produces});
}

/// @nodoc
class __$$_ProduceStateCopyWithImpl<$Res>
    extends _$ProduceStateCopyWithImpl<$Res, _$_ProduceState>
    implements _$$_ProduceStateCopyWith<$Res> {
  __$$_ProduceStateCopyWithImpl(
      _$_ProduceState _value, $Res Function(_$_ProduceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? produces = null,
  }) {
    return _then(_$_ProduceState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProduceStatus,
      produces: null == produces
          ? _value._produces
          : produces // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc

class _$_ProduceState implements _ProduceState {
  _$_ProduceState(
      {this.status = ProduceStatus.initial,
      final List<Produce> produces = const []})
      : _produces = produces;

  @override
  @JsonKey()
  final ProduceStatus status;
  final List<Produce> _produces;
  @override
  @JsonKey()
  List<Produce> get produces {
    if (_produces is EqualUnmodifiableListView) return _produces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_produces);
  }

  @override
  String toString() {
    return 'ProduceState(status: $status, produces: $produces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProduceState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._produces, _produces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_produces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProduceStateCopyWith<_$_ProduceState> get copyWith =>
      __$$_ProduceStateCopyWithImpl<_$_ProduceState>(this, _$identity);
}

abstract class _ProduceState implements ProduceState {
  factory _ProduceState(
      {final ProduceStatus status,
      final List<Produce> produces}) = _$_ProduceState;

  @override
  ProduceStatus get status;
  @override
  List<Produce> get produces;
  @override
  @JsonKey(ignore: true)
  _$$_ProduceStateCopyWith<_$_ProduceState> get copyWith =>
      throw _privateConstructorUsedError;
}
