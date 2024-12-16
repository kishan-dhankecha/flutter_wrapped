import 'package:wolt_di/wolt_di.dart';

import '../router/view/app_route_information_parser.dart';
import '../router/view/app_router_delegate.dart';
import '../router/view_model/router_view_model.dart';

class FlutterWrapLevelDependencyContainer extends AppLevelDependencyContainer {
  FlutterWrapLevelDependencyContainer();

  late final _appRouterDelegate = _createAppRouterDelegate();
  late final _appRouteInformationParser = _createAppRouteInformationParser();
  late final _routerViewModel = _createRouterViewModel();

  AppRouterDelegate get appRouterDelegate => _appRouterDelegate;
  AppRouteInformationParser get appRouteInformationParser =>
      _appRouteInformationParser;
  RouterViewModel get routerViewModel => _routerViewModel;

  AppRouterDelegate _createAppRouterDelegate() {
    return AppRouterDelegate(routerViewModel);
  }

  AppRouteInformationParser _createAppRouteInformationParser() {
    return AppRouteInformationParser();
  }

  RouterViewModel _createRouterViewModel() {
    return RouterViewModel();
  }

  @override
  Future<void> init() async {
    return Future.value();
  }
}
