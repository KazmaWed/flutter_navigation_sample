import 'package:flutter/material.dart';
import 'package:flutter_navigator_sample/notifier/shared_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/app_destination.dart';
import '../route.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  // BottomAppBarの選択中タブとItem
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

  // タブ選択
  void onTap(int value, WidgetRef ref) {
    if (index != value) {
      setState(() => index = value);
    } else {
      Navigator.of(keys[index].currentContext!).popUntil(
        (route) => !Navigator.of(keys[index].currentContext!).canPop(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final uiState = ref.watch(sharedStateNotifierProvider);

    return Consumer(
      builder: (context, ref, widget) {
        return Scaffold(
          appBar: AppBar(
            title: Text(uiState.currendScreens[index].title),
            leading: uiState.canPop
                ? IconButton(
                    onPressed: () => Navigator.of(keys[index].currentContext!).pop(),
                    icon: const Icon(Icons.arrow_back_ios_new),
                  )
                : null,
            actions: [
              IconButton(
                onPressed: () => Navigator.of(context).pushNamed(SettingScreens.index.route),
                icon: const Icon(Icons.settings),
              ),
            ],
            // automaticallyImplyLeading: uiState.canPop,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (index) => onTap(index, ref),
            items: navigationBarItems,
          ),
          body: IndexedStack(
            index: index,
            children: screens,
          ),
        );
      },
    );
  }
}
