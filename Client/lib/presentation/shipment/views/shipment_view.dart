import 'package:auto_route/auto_route.dart';
import 'package:client/data/domain/entity/shipment/shipment.dart';
import 'package:client/presentation/router/app_router.dart';
import 'package:client/shared/core/blocs/shipment/shipment_cubit.dart';
import 'package:client/shared/ui/views/table_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ShipmentView extends StatefulWidget {
  const ShipmentView({Key? key}) : super(key: key);

  @override
  State<ShipmentView> createState() => _ShipmentViewState();
}

class _ShipmentViewState extends State<ShipmentView> {
  final DateFormat _dFormat = DateFormat.yMMMMEEEEd();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShipmentCubit, ShipmentState>(
      builder: (context, blcState) {
        return TableView<Shipment>(
          collection: blcState.shipments,
          refresh: () => context.read<ShipmentCubit>().getShipments(),
          create: () => context.router.push(
            ShipmentFormRoute(
              onSaveClicked: (shipment) => context
                  .read<ShipmentCubit>()
                  .createShipment(shipment: shipment),
            ),
          ),
          itemBuilder: (context, shipment) => Card(
            child: ListTile(
              title: Text('${shipment.name} ${_dFormat.format(shipment.created!)}'),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => context
                        .read<ShipmentCubit>()
                        .deleteShipment(id: shipment.id!),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () => context.router.push(
                      ShipmentFormRoute(
                        shipment: shipment,
                        onSaveClicked: (save) =>
                            context.read<ShipmentCubit>().updateShipment(
                                  id: shipment.id!,
                                  shipment: save,
                                ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
