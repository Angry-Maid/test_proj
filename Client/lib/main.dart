import 'dart:io';

import 'package:client/dependencies_setup.dart';
import 'package:client/overrides.dart';
import 'package:client/presentation/app.dart';
import 'package:flutter/material.dart';

void main() async {
  HttpOverrides.global = TempHttpOverrides();

  WidgetsFlutterBinding.ensureInitialized();

  await setupInjections();

  runApp(const BrowseApp());
}
