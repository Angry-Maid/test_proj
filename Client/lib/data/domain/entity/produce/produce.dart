import 'package:freezed_annotation/freezed_annotation.dart';

part 'produce.freezed.dart';
part 'produce.g.dart';

@freezed
class Produce with _$Produce {
  const factory Produce({
    @Default(null) int? id,
    required String name,
    required int quantity
  }) = _Produce;

  factory Produce.fromJson(Map<String, dynamic> json) => _$ProduceFromJson(json);
}