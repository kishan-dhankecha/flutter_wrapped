import 'package:flutter/material.dart';
import 'package:flutter_wrapped/app/router/entities/app_route_configuration.dart';
import 'package:flutter_wrapped/app/router/entities/app_route_uri_template.dart';
import 'package:flutter_wrapped/features/home/ui/view/home_screen.dart';

sealed class AppRoutePage<T> extends Page<T> {
  const AppRoutePage({super.key});

  QueryParams? get queryParams => null;

  AppRouteUriTemplate get appRouteUriTemplate;
}

class HomeRoutePage extends AppRoutePage<void> {
  @override
  AppRouteUriTemplate get appRouteUriTemplate => AppRouteUriTemplate.home;

  @override
  String get name => routeName;

  static const String routeName = 'home';

  const HomeRoutePage() : super(key: const ValueKey('HomeRoutePage'));

  @override
  Route<void> createRoute(BuildContext context) {
    return MaterialPageRoute<void>(
      builder: (context) => const HomeScreen(),
      settings: this,
    );
  }
}
