import 'package:flutter/material.dart';
import 'package:flutter_navigator_sample/notifier/shared_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/app_destination.dart';

class NavigatorScreen extends ConsumerStatefulWidget {
  const NavigatorScreen({super.key, required this.count});
  final int count;

  static const route = "/navigator";
  static const countKey = 'count';
  static String routeWithParam(int count) => '$route?$countKey=$count';
  static String titleWithScreen(int count) => '$count';

  @override
  ConsumerState<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends ConsumerState<NavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'ページ ${widget.count}',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () {
                      final destination = NavigatorScreens.pathWithCount(widget.count + 1);
                      ref.watch(sharedStateNotifierProvider.notifier).navigateOnTab(destination, 1);
                      Navigator.of(context).pushNamed(destination.route).then((_) {
                        ref
                            .watch(sharedStateNotifierProvider.notifier)
                            .navigateOnTab(NavigatorScreens.pathWithCount(widget.count), 1);
                      });
                    },
                    child: const Text('次のページ'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
