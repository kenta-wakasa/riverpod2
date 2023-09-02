import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod2/feature/hello_world/provider/hello_world_provider.dart';

class HelloWorldPage extends ConsumerWidget {
  const HelloWorldPage({super.key});

  static const path = '/hello_world';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// RiverpodではConsumerWidgetをつかうことでproviderにアクセスできる。
    /// providerにアクセスするためにrefをつかう。
    /// 次のようにして使う。
    /// final value = ref.watch(ここにアクセスしたいprovider名を入れる);
    /// このように書くと、valueという変数にproviderの値が入る。

    final helloWorld = ref.watch(helloWorldProvider);
    return Scaffold(
      body: Center(child: Text(helloWorld.toString())),
    );
  }
}
