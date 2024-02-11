import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malum_mobile/features/auth/presentation/pages/login_page.dart';
import 'package:malum_mobile/features/auth/presentation/pages/store_auth.dart';

import '../../features/auth/presentation/pages/auth_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');


// GoRouter configuration
final router = GoRouter(
  observers: [AnalyticsRouteObserver()],
  initialLocation: SplashPage.path,
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: SplashPage.path,
      name: SplashPage.name,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AuthPage.path,
      name: AuthPage.name,
      builder: (context, state) => const AuthPage(),
      routes: [
        GoRoute(
          path: StoreAuth.path,
          name: StoreAuth.name,
          builder: (context, state) => const StoreAuth(),
          routes: [
            GoRoute(
              path: LoginPage.path,
              name: LoginPage.name,
              builder: (context, state) => const LoginPage(),
            ),
          ]
        ),
      ]
    ),

  ],
);

Page<dynamic> _pageBuilder<T>({required GoRouterState state, required Widget child}) => Platform.isIOS
    ? CupertinoPage<T>(child: child, key: state.pageKey)
    : MaterialPage<T>(child: child, key: state.pageKey);

class AnalyticsRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) async {}
}
