import 'package:flutter/material.dart';
import 'package:flutter_navigator_sample/route.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key, required this.count});

  final int count;

  static const route = "/navigator";
  static const countKey = 'count';
  static String routeWithParam(int count) => '$route?$countKey=$count';
  static String titleWithScreen(int count) => '$count';

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.count} ページ'),
        leading: widget.count == 1 // 1ページ目は戻るボタン非表示
            ? null
            : IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
      ),
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
                    NavigatorScreens.index.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () => Navigator.of(context).pushNamed(
                      NavigatorScreens.pathWithCount(widget.count + 1).route,
                    ),
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
