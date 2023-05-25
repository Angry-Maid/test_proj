import 'package:client/shared/time_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipment.freezed.dart';
part 'shipment.g.dart';

@freezed
class Shipment with _$Shipment {
  const factory Shipment({
    @Default(null) int? id,
    required String name,
    @Default(null) @TimeOrNullConverter() DateTime? created,
    required bool shipped,
    required int produce,
  }) = _Shipment;

  factory Shipment.fromJson(Map<String, dynamic> json) => _$ShipmentFromJson(json);
}
