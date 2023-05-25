import 'package:client/data/domain/entity/produce/produce.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

@RoutePage()
class ProduceFormPage extends StatefulWidget {
  const ProduceFormPage({
    Key? key,
    required this.onSaveClicked,
    this.produce,
  }) : super(key: key);

  final Produce? produce;
  final void Function(Produce) onSaveClicked;

  @override
  State<ProduceFormPage> createState() => _ProduceFormPageState();
}

class _ProduceFormPageState extends State<ProduceFormPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: FormBuilder(
            key: _formKey,
            child: FractionallySizedBox(
              widthFactor: 0.75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FormBuilderTextField(
                    name: 'name',
                    validator: FormBuilderValidators.required(),
                    initialValue: widget.produce?.name,
                    decoration: const InputDecoration(labelText: 'Name'),
                  ),
                  FormBuilderTextField(
                    name: 'quantity',
                    validator: FormBuilderValidators.required(),
                    initialValue: widget.produce?.quantity.toString(),
                    decoration: const InputDecoration(labelText: 'Quantity'),
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
                        Produce save = Produce(
                          id: null,
                          name: data['name'],
                          quantity: int.parse(data['quantity']),
                        );
                        widget.onSaveClicked(save);
                        context.router.pop();
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
