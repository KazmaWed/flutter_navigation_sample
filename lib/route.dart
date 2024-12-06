import 'package:flutter/material.dart';
import 'package:flutter_navigator_sample/increment_screen/increment_screen.dart';
import 'package:flutter_navigator_sample/login_screen/login_screen.dart';
import 'package:flutter_navigator_sample/main_screen/main_screen.dart';
import 'package:flutter_navigator_sample/setting_screen/setting_screen.dart';

import 'model/app_destination.dart';
import 'navigator_screen/navigator_screen.dart';

final appRoutes = {
  AppScreens.login.route: (context) => const LoginScreen(),
  AppScreens.main.route: (context) => const MainScreen(),
  AppScreens.setting.route: (context) => const SettingScreen(),
};

RouteFactory incrementScreenRouteFactory = (settings) {
  if (settings.name == IncrementScreens.index.route) {
    return MaterialPageRoute(
      builder: (context) => const IncrementScreen(),
    );
  } else {
    return MaterialPageRoute(
      builder: (context) => const Center(child: Text('Page not found')),
    );
  }
};

RouteFactory navigatorScreenRouteFactory = (settings) {
  final uri = Uri.parse(settings.name ?? NavigatorScreens.index.route);
  if (uri.path == NavigatorScreens.index.route) {
    final count = int.parse(uri.queryParameters['count'] ?? 1.toString());
    return MaterialPageRoute(
      builder: (context) => NavigatorScreen(count: count),
    );
  } else {
    return MaterialPageRoute(
      builder: (context) => const Center(child: Text('Page not found')),
    );
  }
};
