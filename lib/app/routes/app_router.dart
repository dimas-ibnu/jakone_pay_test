import 'package:go_router/go_router.dart';
import 'package:jakone_pay/app/features/guest/pages/guest_page.dart';
import 'package:jakone_pay/app/features/home/pages/home_page.dart';
import 'package:jakone_pay/app/features/splash/pages/splash_page.dart';

import 'app_routes.dart';

final router = GoRouter(
  initialLocation: AppRoutes.SPLASH,
  routes: [
    GoRoute(
      name: 'splash',
      path: AppRoutes.SPLASH,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      name: 'guest',
      path: AppRoutes.GUEST,
      builder: (context, state) => const GuestPage(),
    ),
    GoRoute(
      name: 'home',
      path: AppRoutes.HOME,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
