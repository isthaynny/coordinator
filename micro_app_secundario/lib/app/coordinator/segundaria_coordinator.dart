import 'package:flutter/material.dart';
import 'package:micro_dependency/micro_dependency.dart';

class SecundariaCoordinator implements Coordinator {
  final GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();
  @override
  GlobalKey<NavigatorState> get navigationKey => _navigationKey;
}
