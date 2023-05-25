import 'package:auto_route/auto_route.dart';
import 'package:client/data/domain/entity/produce/produce.dart';
import 'package:client/presentation/router/app_router.dart';
import 'package:client/shared/core/blocs/produce/produce_cubit.dart';
import 'package:client/shared/ui/views/table_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProduceView extends StatefulWidget {
  const ProduceView({Key? key}) : super(key: key);

  @override
  State<ProduceView> createState() => _ProduceViewState();
}

class _ProduceViewState extends State<ProduceView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProduceCubit, ProduceState>(
      builder: (context, blcState) {
        return TableView<Produce>(
          collection: blcState.produces,
          refresh: () => context.read<ProduceCubit>().getProduces(),
          create: () => context.router.push(
            ProduceFormRoute(
              onSaveClicked: (produce) =>
                  context.read<ProduceCubit>().createProduce(produce: produce),
            ),
          ),
          itemBuilder: (context, produce) => Card(
            child: ListTile(
              title: Text(produce.name),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => context
                        .read<ProduceCubit>()
                        .deleteProduce(id: produce.id!),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () => context.router.push(
                      ProduceFormRoute(
                        produce: produce,
                        onSaveClicked: (save) =>
                            context.read<ProduceCubit>().updateProduce(
                                  id: produce.id!,
                                  produce: save,
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
