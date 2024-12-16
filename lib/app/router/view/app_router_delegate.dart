import 'package:flutter/material.dart';
import 'package:flutter_wrapped/app/router/view_model/router_view_model.dart';

import '../entities/app_route_configuration.dart';
import 'app_route_observer.dart';

class AppRouterDelegate extends RouterDelegate<AppRouteConfiguration>
    with ChangeNotifier {
  AppRouterDelegate(this.routerViewModel) {
    Listenable.merge([
      routerViewModel.pages
      //
    ]).addListener(notifyListeners);
  }

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final RouterViewModel routerViewModel;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: routerViewModel.pages.value,
      onPopPage: (route, result) {
        routerViewModel.onPagePoppedImperatively();
        return route.didPop(result);
      },
      observers: [AppRouteObserver(Theme.of(context).colorScheme)],
    );
  }

  @override
  Future<bool> popRoute() {
    return routerViewModel.onPagePoppedWithOperatingSystemIntent();
  }

  @override
  AppRouteConfiguration? get currentConfiguration {
    return routerViewModel.onUriRestoration();
  }

  @override
  Future<void> setNewRoutePath(AppRouteConfiguration configuration) async {
    routerViewModel.onNewUriParsed(configuration);
  }
}
