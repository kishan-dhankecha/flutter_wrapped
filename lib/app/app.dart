import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_wrapped/app/di/flutter_wrap_level_dependency_container.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wolt_di/wolt_di.dart';

class FlutterWrapApp extends StatelessWidget {
  const FlutterWrapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DependencyInjector(
      child: Builder(builder: (context) {
        final appLevelDependencyContainer =
            DependencyInjector.container<FlutterWrapLevelDependencyContainer>(
          context,
        );
        final textTheme = Theme.of(context).textTheme;
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
            textTheme: GoogleFonts.montserratTextTheme(textTheme),
          ),
          scrollBehavior: MyCustomScrollBehavior(),
          routerDelegate: appLevelDependencyContainer.appRouterDelegate,
          routeInformationParser:
              appLevelDependencyContainer.appRouteInformationParser,
        );
      }),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
