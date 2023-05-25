part of 'shipment_cubit.dart';

enum ShipmentStatus {
  initial,
  loading,
  loaded,
  error
}

@freezed
class ShipmentState with _$ShipmentState {
  factory ShipmentState({
    @Default(ShipmentStatus.initial) ShipmentStatus status,
    @Default([]) List<Shipment> shipments,
  }) = _ShipmentStatus;
}