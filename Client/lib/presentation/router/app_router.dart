import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:client/data/domain/entity/produce/produce.dart';
import 'package:client/data/domain/entity/shipment/shipment.dart';
import 'package:client/presentation/produce/produce_page.dart';
import 'package:client/presentation/produce/produce_form_page.dart';
import 'package:client/presentation/main/main_page.dart';
import 'package:client/presentation/shipment/shipment_page.dart';
import 'package:client/presentation/shipment/shipment_form_page.dart';
import 'package:client/presentation/auth/auth_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: MainRoute.page,
          children: [
            AutoRoute(page: AuthRoute.page, path: 'auth', initial: true),
            AutoRoute(page: ProduceRoute.page, path: 'produce'),
            AutoRoute(page: ProduceFormRoute.page, path: 'produceForm'),
            AutoRoute(page: ShipmentRoute.page, path: 'shipment'),
            AutoRoute(page: ShipmentFormRoute.page, path: 'shipmentForm'),
          ],
        ),
      ];
}
