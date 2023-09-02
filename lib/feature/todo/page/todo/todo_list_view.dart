import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/todo_provider.dart';
import 'todo_list_tile.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 3つの状態によってWidgetを出し分ける
    /// - 読み取り成功！
    /// - 読み取り失敗！
    /// - 読み取り中！
    final todos = ref.watch(todosProvider).valueOrNull ?? [];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: todos.length,
      itemBuilder: (context, index) => TodoListTile(todo: todos[index]),
    );

    // return todos.when<Widget>(
    //   /// 読み取り成功！
    //   data: (data) {
    //     return ListView.builder(
    //       shrinkWrap: true,
    //       itemCount: data.length,
    //       itemBuilder: (context, index) => TodoListTile(todo: data[index]),
    //     );
    //   },

    //   /// 読み取り失敗！
    //   error: (_, __) => const Center(child: Text('エラーです')),

    //   /// 今読み取り中！
    //   loading: () => const Center(child: CircularProgressIndicator()),
    // );
  }
}
