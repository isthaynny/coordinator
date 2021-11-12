import 'package:flutter/material.dart';
import 'package:micro_app_home/app/coordinator/home_routes.dart';
import 'package:micro_core/micro_core.dart';
import 'package:micro_dependency/micro_dependency.dart';

class HomeCoordinator implements Coordinator {
  final GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();
  @override
  GlobalKey<NavigatorState> get navigationKey => _navigationKey;

  Future<void> irParaHome2() async {
    await navigationKey.currentState?.pushNamed(
      HomeRoutes.home2,
    );
  }

  Future<void> irParaTelaSecundaria() async {
    var context = navigationGlobalKey.currentContext;
    if (context != null) {
      Navigator.of(context).pushNamed(AppRoutes.secundario);
    }
  }
}
