import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IncrementScreen extends ConsumerStatefulWidget {
  const IncrementScreen({super.key});

  @override
  ConsumerState<IncrementScreen> createState() => _IncrementScreenState();
}

class _IncrementScreenState extends ConsumerState<IncrementScreen> {
  int count = 0;

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
