import 'package:bloc/bloc.dart';
import 'package:client/data/domain/entity/produce/produce.dart';
import 'package:client/data/domain/repository/api/api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'produce_state.dart';
part 'produce_cubit.freezed.dart';

class ProduceCubit extends Cubit<ProduceState> {
  ProduceCubit({required ApiClient client})
      : _client = client,
        super(ProduceState());

  final ApiClient _client;

  Future<void> getProduces() async {
    try {
      emit(state.copyWith(status: ProduceStatus.loading));

      final List<Produce> produces = await _client.getProduces();

      emit(
        state.copyWith(
          status: ProduceStatus.loaded,
          produces: produces,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ProduceStatus.error));
    }
  }

  Future<void> createProduce({required Produce produce}) async {
    try {
      emit(state.copyWith(status: ProduceStatus.loading));

      await _client.createProduce(produce);

      final List<Produce> produces = await _client.getProduces();

      emit(
        state.copyWith(
          status: ProduceStatus.loaded,
          produces: produces,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ProduceStatus.error));
    }
  }

  Future<void> updateProduce({required int id, required Produce produce}) async {
    try {
      emit(state.copyWith(status: ProduceStatus.loading));

      await _client.updateProduce(id, produce);

      final List<Produce> produces = await _client.getProduces();

      emit(
        state.copyWith(
          status: ProduceStatus.loaded,
          produces: produces,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ProduceStatus.error));
    }
  }

  Future<void> deleteProduce({required int id}) async {
    try {
      emit(state.copyWith(status: ProduceStatus.loading));

      await _client.deleteProduce(id);

      final List<Produce> produces = await _client.getProduces();

      emit(
        state.copyWith(
          status: ProduceStatus.loaded,
          produces: produces,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ProduceStatus.error));
    }
  }
}
