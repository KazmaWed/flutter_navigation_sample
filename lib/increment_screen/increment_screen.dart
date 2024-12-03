import 'package:flutter/material.dart';
import 'package:flutter_navigator_sample/route.dart';

class IncrementScreen extends StatefulWidget {
  const IncrementScreen({super.key});

  @override
  State<IncrementScreen> createState() => _IncrementScreenState();
}

class _IncrementScreenState extends State<IncrementScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(IncrementScreens.index.title),
        automaticallyImplyLeading: false, // 戻るボタン非表示
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
                    '$count 回クリック',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () => setState(() => count++),
                    child: const Text('インクリメント'),
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
