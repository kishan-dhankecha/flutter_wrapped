import 'package:flutter/foundation.dart';
import 'package:flutter_wrapped/app/router/entities/app_route_configuration.dart';
import 'package:flutter_wrapped/app/router/entities/app_route_page.dart';
import 'package:flutter_wrapped/app/router/entities/app_route_uri_template.dart';

class RouterViewModel {
  RouterViewModel() {
    _pages.value = [const HomeRoutePage()];
  }

  late final ValueNotifier<List<AppRoutePage>> _pages =
      ValueNotifier([const HomeRoutePage()]);
  ValueListenable<List<AppRoutePage>> get pages => _pages;

  void dispose() {
    _pages.dispose();
  }

  void onPagePoppedImperatively() {
    _popPage();
  }

  Future<bool> onPagePoppedWithOperatingSystemIntent() {
    switch (_pages.value.last) {
      case HomeRoutePage():
        return Future.value(false);
    }
  }

  AppRouteConfiguration onUriRestoration() {
    final lastPage = _pages.value.last;
    return AppRouteConfiguration(
      appRouteUriTemplate: lastPage.appRouteUriTemplate,
      queryParams: lastPage.queryParams ?? {},
    );
  }

  void onNewUriParsed(AppRouteConfiguration configuration) {
    // final queryParams = configuration.queryParams;

    late List<AppRoutePage> newPath;

    switch (configuration.appRouteUriTemplate) {
      case AppRouteUriTemplate.unknown:
      case AppRouteUriTemplate.home:
        newPath = [
          const HomeRoutePage(),
        ];
    }
    _pages.value = newPath;
  }

  // void _pushPage(AppRoutePage page) {
  //   _pages.value = List.of(_pages.value)..add(page);
  // }

  void _popPage() {
    final pageCount = _pages.value.length;
    if (pageCount > 1) {
      _pages.value = _pages.value.sublist(0, pageCount - 1);
    }
  }
}
