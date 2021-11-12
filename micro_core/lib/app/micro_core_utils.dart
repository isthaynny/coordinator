import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigationGlobalKey =
    GlobalKey<NavigatorState>();

typedef WidgetBuilderArgs = Widget Function(BuildContext context, Object? args);

Route<dynamic>? generateRoute(
    RouteSettings settings, Map<String, WidgetBuilderArgs> routes) {
  var routerName = settings.name;
  var routerArgs = settings.arguments;
  var navigateTo = routes[routerName];
  if (navigateTo != null) {
    return MaterialPageRoute<dynamic>(
        builder: (context) => navigateTo.call(context, routerArgs));
  } else {
    return null;
  }
}
