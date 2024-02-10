import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  ],
);

Page<dynamic> _pageBuilder<T>({required GoRouterState state, required Widget child}) => Platform.isIOS
    ? CupertinoPage<T>(child: child, key: state.pageKey)
    : MaterialPage<T>(child: child, key: state.pageKey);

class AnalyticsRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) async {}
}
