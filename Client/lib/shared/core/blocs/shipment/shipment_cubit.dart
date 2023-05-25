import 'package:bloc/bloc.dart';
import 'package:client/data/domain/entity/shipment/shipment.dart';
import 'package:client/data/domain/repository/api/api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipment_state.dart';
part 'shipment_cubit.freezed.dart';

class ShipmentCubit extends Cubit<ShipmentState> {
  ShipmentCubit({required ApiClient client})
      : _client = client,
        super(ShipmentState());

  final ApiClient _client;

  Future<void> getShipments() async {
    try {
      emit(state.copyWith(status: ShipmentStatus.loading));

      final List<Shipment> shipments = await _client.getShipments();

      emit(
        state.copyWith(
          status: ShipmentStatus.loaded,
          shipments: shipments,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ShipmentStatus.error));
    }
  }

  Future<void> createShipment({required Shipment shipment}) async {
    try {
      emit(state.copyWith(status: ShipmentStatus.loading));

      await _client.createShipment(shipment);

      final List<Shipment> shipments = await _client.getShipments();

      emit(
        state.copyWith(
          status: ShipmentStatus.loaded,
          shipments: shipments,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ShipmentStatus.error));
    }
  }

  Future<void> updateShipment(
      {required int id, required Shipment shipment}) async {
    try {
      emit(state.copyWith(status: ShipmentStatus.loading));

      await _client.updateShipment(id, shipment);

      final List<Shipment> shipments = await _client.getShipments();

      emit(
        state.copyWith(
          status: ShipmentStatus.loaded,
          shipments: shipments,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ShipmentStatus.error));
    }
  }

  Future<void> deleteShipment({required int id}) async {
    try {
      emit(state.copyWith(status: ShipmentStatus.loading));

      await _client.deleteShipment(id);

      final List<Shipment> shipments = await _client.getShipments();

      emit(
        state.copyWith(
          status: ShipmentStatus.loaded,
          shipments: shipments,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ShipmentStatus.error));
    }
  }
}
