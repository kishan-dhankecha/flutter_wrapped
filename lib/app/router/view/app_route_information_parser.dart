import 'package:flutter/widgets.dart';
import 'package:flutter_wrapped/app/router/entities/app_route_configuration.dart';
import 'package:flutter_wrapped/app/router/entities/app_route_uri_template.dart';

class AppRouteInformationParser
    extends RouteInformationParser<AppRouteConfiguration> {
  const AppRouteInformationParser();

  @override
  Future<AppRouteConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = routeInformation.uri;
    return AppRouteConfiguration(
      appRouteUriTemplate: AppRouteUriTemplate.findFromUri(uri),
      queryParams: uri.queryParameters,
    );
  }

  @override
  RouteInformation? restoreRouteInformation(
      AppRouteConfiguration configuration) {
    return RouteInformation(uri: configuration.toUri());
  }
}
