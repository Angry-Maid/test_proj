import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TableView<T> extends StatefulWidget {
  final List<T> collection;
  final Widget Function(BuildContext, T) itemBuilder;

  final void Function()? create;
  final void Function()? refresh;

  const TableView(
      {Key? key,
      required this.collection,
      required this.itemBuilder,
      required this.refresh,
      this.create})
      : super(key: key);

  @override
  State<TableView> createState() => _TableViewState<T>();
}

class _TableViewState<T> extends State<TableView<T>> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: FormBuilder(
              key: _formKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ...(widget.create != null
                      ? [
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: widget.create,
                          )
                        ]
                      : []),
                  const SizedBox(
                    width: 18,
                  ),
                  IconButton(
                    onPressed: widget.refresh,
                    icon: const Icon(Icons.refresh),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: widget.collection
                  .map<Widget>((e) => widget.itemBuilder(context, e))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
