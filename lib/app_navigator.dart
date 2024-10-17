import 'package:flutter/services.dart';
import 'package:router/router_config.dart';
import 'package:router/routes.dart';

abstract class AppNavigator {
  Future<void> pushNamed(
    Routes route, {
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
    Object? arguments,
  });
  Future<void> pushReplacementNamed(
    Routes route, {
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
    Object? arguments,
  });
  Future<void> pushNamedAndRemoveUntil(
    Routes route, {
    Routes? until,
    Object? arguments,
  });
  void popAndPushNamed(Routes route);
  void pop<T>([T? result]);
  void popUntilRoute(Routes route, {bool checkIfInStack = false});
  bool checkIfRouteIsInStack(Routes route);
  bool canPop();
}

class AppNavigatorImpl implements AppNavigator {
  AppNavigatorImpl(this.navigator);
  final AppRouterConfig navigator;

  @override
  Future<void> pushNamed(
    Routes route, {
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
    Object? arguments,
  }) async =>
      navigator.router.pushNamed(
        route.name,
        extra: arguments,
        pathParameters: pathParameters ?? {},
        queryParameters: queryParameters ?? {},
      );

  @override
  void pop<T>([T? result]) {
    navigator.router.canPop() ? navigator.router.pop(result) : SystemNavigator.pop(animated: true);
  }

  @override
  Future<void> pushReplacementNamed(
    Routes route, {
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
    Object? arguments,
  }) async {
    navigator.router.pushReplacementNamed(
      route.name,
      pathParameters: pathParameters ?? {},
      queryParameters: queryParameters ?? {},
      extra: arguments,
    );
  }

  @override
  bool checkIfRouteIsInStack(Routes route) {
    final routeInsideStack = navigator.router.routerDelegate.currentConfiguration.matches.any((match) {
      return match.matchedLocation == route.path;
    });
    return routeInsideStack;
  }

  @override
  bool canPop() => navigator.router.canPop();

  @override
  void popUntilRoute(Routes route, {bool checkIfInStack = false}) {
    if (checkIfInStack) {
      if (!checkIfRouteIsInStack(route)) {
        return;
      }
    }

    while (navigator.router.routerDelegate.currentConfiguration.matches.last.matchedLocation != route.path) {
      if (!navigator.router.canPop()) {
        return;
      }
      navigator.router.pop();
    }
  }

  @override
  Future<void> pushNamedAndRemoveUntil(
    Routes route, {
    Routes? until,
    Object? arguments,
  }) async {
    while (canPop()) {
      pop();
    }
    pushNamed(route, arguments: arguments);
  }

  @override
  void popAndPushNamed(Routes route) {
    if (!canPop()) {
      pop();
    }
    pushNamed(route);
  }
}
