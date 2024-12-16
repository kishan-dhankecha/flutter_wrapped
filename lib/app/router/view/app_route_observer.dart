import 'package:demo_ui_components/demo_ui_components.dart';
import 'package:flutter/material.dart';

class AppRouteObserver extends RouteObserver<PageRoute<void>> {
  AppRouteObserver(this.colorScheme);

  final ColorScheme colorScheme;

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is ModalRoute) {
      _updateSystemUIOverlayStyle(newRoute);
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute != null) {
      _updateSystemUIOverlayStyle(previousRoute);
    }
  }

  void _updateSystemUIOverlayStyle(Route<void> route) {
    SystemUIAnnotationWrapper.setSystemUIOverlayStyle(
      colorScheme,
    );
  }
}
