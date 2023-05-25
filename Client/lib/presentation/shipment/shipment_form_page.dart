import 'package:client/data/domain/entity/produce/produce.dart';
import 'package:client/data/domain/entity/shipment/shipment.dart';
import 'package:client/data/domain/repository/api/api_client.dart';
import 'package:client/shared/core/blocs/produce/produce_cubit.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class ShipmentFormPage extends StatefulWidget {
  const ShipmentFormPage({
    Key? key,
    required this.onSaveClicked,
    this.shipment,
  }) : super(key: key);

  final Shipment? shipment;
  final void Function(Shipment) onSaveClicked;

  @override
  State<ShipmentFormPage> createState() => _ShipmentFormPageState();
}

class _ShipmentFormPageState extends State<ShipmentFormPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: BlocProvider<ProduceCubit>(
            create: (context) =>
                ProduceCubit(client: GetIt.I.get<ApiClient>())..getProduces(),
            child: BlocBuilder<ProduceCubit, ProduceState>(
              builder: (context, blcState) {
                if (blcState.status == ProduceStatus.loading) {
                  return Container();
                } else {
                  return FormBuilder(
                    key: _formKey,
                    child: FractionallySizedBox(
                      widthFactor: 0.75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FormBuilderTextField(
                            name: 'name',
                            validator: FormBuilderValidators.required(),
                            initialValue: widget.shipment?.name,
                            decoration:
                                const InputDecoration(labelText: 'Name'),
                          ),
                          FormBuilderCheckbox(
                            title: const Text('Shipped?'),
                            name: 'shipped',
                            validator: FormBuilderValidators.required(),
                            initialValue: widget.shipment?.shipped,
                          ),
                          FormBuilderDropdown<Produce>(
                            name: 'produce',
                            validator: FormBuilderValidators.required(),
                            initialValue: blcState.produces.first,
                            items: blcState.produces
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text("${e.name}(${e.quantity})"),
                                  ),
                                )
                                .toList(),
                            decoration: const InputDecoration(
                              labelText: 'Produce',
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          ElevatedButton(
                            child: const Text('Save'),
                            onPressed: () {
                              _formKey.currentState!.save();
                              if (_formKey.currentState!.validate()) {
                                var data = _formKey.currentState!.value;
                                Shipment save = Shipment(
                                  name: data['name'],
                                  shipped: data['shipped'],
                                  produce: data['produce'].id,
                                );
                                widget.onSaveClicked(save);
                                context.router.pop();
                              }
                            },
                          )
                        ],
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
