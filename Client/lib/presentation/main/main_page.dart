import 'package:auto_route/auto_route.dart';
import 'package:client/presentation/main/views/main_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MainView();
}