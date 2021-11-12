import 'package:micro_core/app/micro_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';

abstract class BaseApp {
  List<MicroApp>? get microApps;

  final Map<String, WidgetBuilderArgs> navigator = {};

  void registerRouters() {
    if (microApps != null) {
      for (MicroApp microApp in microApps!) {
        navigator.addAll(microApp.navigator);
      }
    }
  }
}
