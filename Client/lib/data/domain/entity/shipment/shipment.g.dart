// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shipment _$$_ShipmentFromJson(Map<String, dynamic> json) => _$_Shipment(
      id: json['id'] as int? ?? null,
      name: json['name'] as String,
      created: json['created'] == null
          ? null
          : const TimeOrNullConverter().fromJson(json['created'] as String?),
      shipped: json['shipped'] as bool,
      produce: json['produce'] as int,
    );

Map<String, dynamic> _$$_ShipmentToJson(_$_Shipment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created': const TimeOrNullConverter().toJson(instance.created),
      'shipped': instance.shipped,
      'produce': instance.produce,
    };
