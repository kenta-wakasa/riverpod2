import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod2/feature/couner/provider/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  static const path = '/counter';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// stateそのものを見たいなら
    final count = ref.watch(counterProvider);

    ///
    /// notifierをみたいなら
    /// ref.read(provider.notifier)
    return Scaffold(
      body: Center(
        child: Text('$count'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).countUp();

          /// ここでカウントアップ関数を実行させよう
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
