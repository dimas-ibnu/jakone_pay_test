import 'package:jakone_pay/app/routes/app_router.dart';

class NavigationUtils {
  static goTo(
    dynamic routeName, {
    dynamic arguments,
  }) {
    return router.go(routeName);
  }

  static goToNamed(
    String routeName, {
    Map<String, String>? extra,
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
  }) {
    return router.goNamed(routeName,
        extra: extra,
        pathParameters: pathParameters ?? {},
        queryParameters: queryParameters ?? {});
  }

  static void goBack({
    bool closeOverlays = false,
    dynamic result,
  }) {
    return router.pop(result);
  }

  static void goToAndRemoveUntil(
    String routeName, {
    Map<String, String>? parameters,
  }) {
    router.pushReplacementNamed(
      routeName,
      queryParameters: parameters ?? {},
    );
  }
}
