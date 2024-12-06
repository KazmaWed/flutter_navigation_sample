import 'package:flutter/material.dart';
import 'package:flutter_navigator_sample/increment_screen/increment_screen.dart';
import 'package:flutter_navigator_sample/login_screen/login_screen.dart';
import 'package:flutter_navigator_sample/main_screen/main_screen.dart';
import 'package:flutter_navigator_sample/setting_screen/setting_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../navigator_screen/navigator_screen.dart';

abstract class AppDestination {
  AppDestination(this.title, this.route);
  final String title;
  final String route;
}

class AppScreens implements AppDestination {
  @override
  final String title;
  @override
  final String route;
  const AppScreens(this.title, this.route);

  static const login = AppScreens('ログイン', '/login');
  static const main = AppScreens('メイン', '/main');
  static const setting = AppScreens('設定', '/setting');
}

class SettingScreens implements AppDestination {
  const SettingScreens(this.title, this.route);
  @override
  final String title;
  @override
  final String route;

  static const index = SettingScreens('設定', '/setting');
}

class IncrementScreens implements AppDestination {
  const IncrementScreens(this.title, this.route);
  @override
  final String title;
  @override
  final String route;

  static const index = IncrementScreens('インクリメント', '/');

  static AppDestination? fromRoute(String route) {
    final uri = Uri.parse(route);
    if (uri.path == IncrementScreens.index.route) {
      return IncrementScreens.index;
    }
    return null;
  }
}

class NavigatorScreens implements AppDestination {
  const NavigatorScreens(this.title, this.route);
  @override
  final String title;
  @override
  final String route;

  static const index = NavigatorScreens('ページ 1', '/');

  static AppDestination pathWithCount(int count) {
    return NavigatorScreens(
      'ページ $count',
      index.route + (count == 1 ? '' : '?count=$count'),
    );
  }

  static AppDestination? fromRoute(String route) {
    final uri = Uri.parse(route);
    if (uri.path == NavigatorScreens.index.route) {
      final count = int.parse(uri.queryParameters['count'] ?? 1.toString());
      return NavigatorScreens.pathWithCount(count);
    }
    return null;
  }
}
