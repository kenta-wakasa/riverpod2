import 'package:riverpod_annotation/riverpod_annotation.dart';

/// ここに 'Hello World' を提供するProviderを定義する。
/// Riverpod Generatorを用いて実装してみよう。

part 'hello_world_provider.g.dart';

@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello';
}
