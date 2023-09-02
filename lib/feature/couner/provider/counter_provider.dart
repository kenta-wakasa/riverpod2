import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

/// counter_providerは自身のstateを書き換えるProviderだ。
/// そのことに注意してRiverpod Generatorを使って実装してみよう
/// ヒント
/// @riverpod
/// class Counter extends _$Counter {
/// ...

@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    return 0;
  }

  void countUp() {
    state = state + 1;
  }
}
