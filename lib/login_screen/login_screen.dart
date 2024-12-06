import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/app_destination.dart';

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
          onPressed: () => Navigator.of(context).pushReplacementNamed(AppScreens.main.route),
          child: const Text("ログイン"),
        ),
      ),
    );
  }
}
