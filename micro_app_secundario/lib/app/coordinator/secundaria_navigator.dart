import 'package:flutter/material.dart';
import 'package:micro_app_secundario/app/coordinator/secundaria_routes.dart';
import 'package:micro_app_secundario/app/coordinator/segundaria_coordinator.dart';
import 'package:micro_core/micro_core.dart';
import 'package:micro_dependency/micro_dependency.dart';

class SecundariaNavigator extends StatefulWidget {
  const SecundariaNavigator({
    Key? key,
    this.navigatorRoutes,
  }) : super(key: key);
  final String? navigatorRoutes;

  @override
  _SecundariaNavigatorState createState() => _SecundariaNavigatorState();
}

class _SecundariaNavigatorState extends State<SecundariaNavigator> {
  final coordinator = SecundariaCoordinator();
  @override
  void initState() {
    super.initState();

    CoordinatorProvider.instance.add(coordinator);
  }

  @override
  void dispose() {
    CoordinatorProvider.instance.remove<SecundariaCoordinator>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (_, __) {
        return Navigator(
          key: coordinator.navigationKey,
          initialRoute: SecundariaRoutes.init,
          onGenerateRoute: (settings) =>
              generateRoute(settings, SecundariaRoutes.routes),
        );
      },
    );
  }
}
