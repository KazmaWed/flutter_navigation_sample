import 'package:flutter/material.dart';
import 'package:flutter_navigator_sample/route.dart';
import 'package:flutter_navigator_sample/shared_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ログイン"),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            ref
                .watch(sharedStateNotifierProvider.notifier)
                .navigate([IncrementScreens.index, NavigatorScreens.index]);
            Navigator.of(context).pushReplacementNamed(AppScreens.main.route);
          },
          child: const Text("ログイン"),
        ),
      ),
    );
  }
}
