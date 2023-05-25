part of 'produce_cubit.dart';

enum ProduceStatus {
  initial,
  loading,
  loaded,
  error
}

@freezed
class ProduceState with _$ProduceState {
  factory ProduceState({
    @Default(ProduceStatus.initial) ProduceStatus status,
    @Default([]) List<Produce> produces,
  }) = _ProduceState;
}