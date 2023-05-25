// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ProduceFormRoute.name: (routeData) {
      final args = routeData.argsAs<ProduceFormRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProduceFormPage(
          key: args.key,
          onSaveClicked: args.onSaveClicked,
          produce: args.produce,
        ),
      );
    },
    ProduceRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProducePage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    ShipmentFormRoute.name: (routeData) {
      final args = routeData.argsAs<ShipmentFormRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShipmentFormPage(
          key: args.key,
          onSaveClicked: args.onSaveClicked,
          shipment: args.shipment,
        ),
      );
    },
    ShipmentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShipmentPage(),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
  };
}

/// generated route for
/// [ProduceFormPage]
class ProduceFormRoute extends PageRouteInfo<ProduceFormRouteArgs> {
  ProduceFormRoute({
    Key? key,
    required void Function(Produce) onSaveClicked,
    Produce? produce,
    List<PageRouteInfo>? children,
  }) : super(
          ProduceFormRoute.name,
          args: ProduceFormRouteArgs(
            key: key,
            onSaveClicked: onSaveClicked,
            produce: produce,
          ),
          initialChildren: children,
        );

  static const String name = 'ProduceFormRoute';

  static const PageInfo<ProduceFormRouteArgs> page =
      PageInfo<ProduceFormRouteArgs>(name);
}

class ProduceFormRouteArgs {
  const ProduceFormRouteArgs({
    this.key,
    required this.onSaveClicked,
    this.produce,
  });

  final Key? key;

  final void Function(Produce) onSaveClicked;

  final Produce? produce;

  @override
  String toString() {
    return 'ProduceFormRouteArgs{key: $key, onSaveClicked: $onSaveClicked, produce: $produce}';
  }
}

/// generated route for
/// [ProducePage]
class ProduceRoute extends PageRouteInfo<void> {
  const ProduceRoute({List<PageRouteInfo>? children})
      : super(
          ProduceRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProduceRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShipmentFormPage]
class ShipmentFormRoute extends PageRouteInfo<ShipmentFormRouteArgs> {
  ShipmentFormRoute({
    Key? key,
    required void Function(Shipment) onSaveClicked,
    Shipment? shipment,
    List<PageRouteInfo>? children,
  }) : super(
          ShipmentFormRoute.name,
          args: ShipmentFormRouteArgs(
            key: key,
            onSaveClicked: onSaveClicked,
            shipment: shipment,
          ),
          initialChildren: children,
        );

  static const String name = 'ShipmentFormRoute';

  static const PageInfo<ShipmentFormRouteArgs> page =
      PageInfo<ShipmentFormRouteArgs>(name);
}

class ShipmentFormRouteArgs {
  const ShipmentFormRouteArgs({
    this.key,
    required this.onSaveClicked,
    this.shipment,
  });

  final Key? key;

  final void Function(Shipment) onSaveClicked;

  final Shipment? shipment;

  @override
  String toString() {
    return 'ShipmentFormRouteArgs{key: $key, onSaveClicked: $onSaveClicked, shipment: $shipment}';
  }
}

/// generated route for
/// [ShipmentPage]
class ShipmentRoute extends PageRouteInfo<void> {
  const ShipmentRoute({List<PageRouteInfo>? children})
      : super(
          ShipmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShipmentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
