import 'package:flutter/material.dart';
import 'package:flutter_navigator_sample/route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_destination.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: appRoutes,
      initialRoute: AppScreens.login.route,
    );
  }
}
