enum AppRouteUriTemplate {
  home('/home'),
  unknown('/unknown');

  final String path;
  final List<String> params;

  static const queryParamKeyId = 'id';
  static const queryParamKeyOrderScreenTab = 'tab';

  // ignore: unused_element
  const AppRouteUriTemplate(this.path, [this.params = const []]);

  static AppRouteUriTemplate findFromUri(Uri uri) {
    final path = uri.path;
    final queryParams = uri.queryParameters;

    return AppRouteUriTemplate.values.firstWhere(
      (element) {
        if (element.path != path) {
          return false;
        }

        if (element.params.isNotEmpty) {
          for (String param in element.params) {
            if (!queryParams.containsKey(param)) {
              return false;
            }
          }
        }

        return true;
      },
      orElse: () => AppRouteUriTemplate.unknown,
    );
  }
}
