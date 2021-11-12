import 'package:flutter/material.dart';
import 'package:micro_app_home/app/micro_app_home_resolver.dart';
import 'package:micro_app_secundario/app/micro_app_secundaria_resolver.dart';
import 'package:micro_core/micro_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({Key? key}) : super(key: key) {
    registerRouters();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationGlobalKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.home,
      onGenerateRoute: (settings) => generateRoute(settings, navigator),
    );
  }

  @override
  List<MicroApp>? get microApps => [
        MicroAppLoginResolver(),
        MicroAppSecundariaResolver(),
      ];
}
