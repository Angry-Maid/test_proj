import 'package:client/shared/ui/widgets/app_bar_actions.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
        centerTitle: false,
        actions: buildAppBar(context),
      ),
      body: const SafeArea(
        child: Center(
          child: AutoRouter(),
        ),
      ),
    );
  }
}
