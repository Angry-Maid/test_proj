import 'package:auto_route/auto_route.dart';
import 'package:client/presentation/auth/views/auth_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthView();
  }
}