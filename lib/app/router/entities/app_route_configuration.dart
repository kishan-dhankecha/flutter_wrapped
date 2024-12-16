import 'package:flutter_wrapped/app/router/entities/app_route_uri_template.dart';

class AppRouteConfiguration {
  final AppRouteUriTemplate appRouteUriTemplate;
  final QueryParams queryParams;

  AppRouteConfiguration({
    required this.appRouteUriTemplate,
    this.queryParams = const {},
  });

  Uri toUri() =>
      Uri(path: appRouteUriTemplate.path, queryParameters: queryParams);
}

typedef QueryParams = Map<String, String>;
