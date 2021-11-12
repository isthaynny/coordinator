import 'package:flutter/material.dart';
import 'package:micro_app_home/app/coordinator/home_coordinator.dart';
import 'package:micro_app_home/app/coordinator/home_routes.dart';
import 'package:micro_core/micro_core.dart';
import 'package:micro_dependency/micro_dependency.dart';

class HomeNavigator extends StatefulWidget {
  const HomeNavigator({
    Key? key,
    this.navigatorRoutes,
  }) : super(key: key);
  final String? navigatorRoutes;

  @override
  _HomeNavigatorState createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  final coordinator = HomeCoordinator();
  @override
  void initState() {
    super.initState();

    CoordinatorProvider.instance.add(coordinator);
  }

  @override
  void dispose() {
    CoordinatorProvider.instance.remove<HomeCoordinator>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (_, __) {
        return Navigator(
          key: coordinator.navigationKey,
          initialRoute: widget.navigatorRoutes ?? HomeRoutes.init,
          onGenerateRoute: (settings) =>
              generateRoute(settings, HomeRoutes.routes),
        );
      },
    );
  }
}
