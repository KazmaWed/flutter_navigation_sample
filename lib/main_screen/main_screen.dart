import 'package:flutter/material.dart';

import '../route.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const route = "/main";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // BottomAppBarの選択中タブ
  var index = 0;
  final navigationBarItems = [
    BottomNavigationBarItem(
      icon: const Icon(Icons.add_circle),
      label: IncrementScreens.index.title,
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.play_arrow),
      label: NavigatorScreens.index.title,
    ),
  ];

  // タブ選択時の表示Widget
  final keys = [GlobalKey(), GlobalKey()];
  late final screens = [
    Navigator(
      key: keys[0],
      initialRoute: IncrementScreens.index.route,
      onGenerateRoute: incrementScreenRouteFactory,
    ),
    Navigator(
      key: keys[1],
      initialRoute: NavigatorScreens.index.route,
      onGenerateRoute: navigatorScreenRouteFactory,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => setState(() => index = value),
        items: navigationBarItems,
      ),
      body: IndexedStack(
        index: index,
        children: screens,
      ),
    );
  }
}
