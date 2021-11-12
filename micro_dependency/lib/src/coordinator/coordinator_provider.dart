import 'package:flutter/material.dart';
import 'package:micro_dependency/micro_dependency.dart';

class CoordinatorProvider {
  CoordinatorProvider._();

  static final CoordinatorProvider instance = CoordinatorProvider._();
  final Map<Type, Coordinator> _coodinator = {};

  void add<T extends Coordinator>(
    T coordinator,
  ) {
    if (_coodinator.containsKey(T)) {
      _coodinator[T]?.navigationKey.currentState?.dispose();
    }
    _coodinator[T] = coordinator;
  }

  T? remove<T extends Coordinator>() {
    return _coodinator.remove(T) as T;
  }

  T? get<T extends Coordinator>() {
    return _coodinator[T] as T;
  }

  BuildContext? getContext<T extends Coordinator>() {
    return _coodinator[T]?.navigationKey.currentContext;
  }

  T getLast<T extends Coordinator>() {
    return _coodinator.values.last as T;
  }

  T? getPreviousLast<T extends Coordinator>() {
    if (_coodinator.values.length > 1) {
      return _coodinator.values.elementAt(_coodinator.values.length - 2) as T;
    }
    return null;
  }

  /// CUIDADO
  ///
  /// Devido ao ofuscamento de código não pode passar uma String literal aqui,
  /// se for utilizar, o que não é recomendado, prefira utilizar o
  /// [runtimeType.toString()] tendo certeza que que irá estar ofuscado também.
  ///
  T? find<T extends Coordinator>(String name) {
    return _coodinator.values
        .firstWhere((element) => element.runtimeType.toString() == name) as T;
  }

  T? findByType<T extends Coordinator>(Type type) {
    return _coodinator.values.firstWhere(
      (element) => element.runtimeType == type,
    ) as T;
  }
}
