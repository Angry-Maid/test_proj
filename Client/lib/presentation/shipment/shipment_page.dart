import 'package:auto_route/auto_route.dart';
import 'package:client/data/domain/repository/api/api_client.dart';
import 'package:client/presentation/shipment/views/shipment_view.dart';
import 'package:client/shared/core/blocs/shipment/shipment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class ShipmentPage extends StatelessWidget {
  const ShipmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<ShipmentCubit>(
        create: (context) => ShipmentCubit(client: GetIt.I.get<ApiClient>())..getShipments(),
        child: ShipmentView(),
      );
}
