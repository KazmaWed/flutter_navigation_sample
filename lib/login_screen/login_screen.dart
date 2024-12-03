import 'package:flutter/material.dart';
import 'package:flutter_navigator_sample/route.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ログイン"),
      ),
      body: Center(
        child: FilledButton(
          // onPressed: () => context.go(AppScreens.main.path),
          onPressed: () => Navigator.of(context).pushReplacementNamed(
            AppScreens.main.route,
          ),
          child: const Text("ログイン"),
        ),
      ),
    );
  }
}
