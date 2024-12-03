import 'package:flutter/material.dart';
import 'package:flutter_navigator_sample/increment_screen/increment_screen.dart';
import 'package:flutter_navigator_sample/login_screen/login_screen.dart';
import 'package:flutter_navigator_sample/main_screen/main_screen.dart';
import 'package:flutter_navigator_sample/setting_screen/setting_screen.dart';

import 'navigator_screen/navigator_screen.dart';

abstract class AppDestinasion {
  AppDestinasion(this.title, this.route);
  final String title;
  final String route;
}

class AppScreens implements AppDestinasion {
  @override
  final String title;
  @override
  final String route;
  const AppScreens(this.title, this.route);

  static const login = AppScreens('ログイン', '/login');
  static const main = AppScreens('メイン', '/main');
  static const setting = AppScreens('設定', '/setting');
}

class SettingScreens implements AppDestinasion {
  const SettingScreens(this.title, this.route);
  @override
  final String title;
  @override
  final String route;

  static const index = SettingScreens('設定', '/setting');
}

class IncrementScreens implements AppDestinasion {
  const IncrementScreens(this.title, this.route);
  @override
  final String title;
  @override
  final String route;

  static const index = IncrementScreens('インクリメント', '/');
}

class NavigatorScreens implements AppDestinasion {
  const NavigatorScreens(this.title, this.route);
  @override
  final String title;
  @override
  final String route;

  static const index = NavigatorScreens('ナビゲーター', '/');

  static AppDestinasion pathWithCount(int count) {
    return NavigatorScreens(
      index.title,
      index.route + (count == 1 ? '' : '?count=$count'),
    );
  }
}

final appRoutes = {
  AppScreens.login.route: (context) => const LoginScreen(),
  AppScreens.main.route: (context) => const MainScreen(),
  AppScreens.setting.route: (context) => const SettingScreen(),
};

final incrementScreenRoutes = {
  IncrementScreens.index.route: (context) => const IncrementScreen(),
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
