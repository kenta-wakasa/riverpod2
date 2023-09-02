import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod2/feature/todo/provider/todo_provider.dart';

import '../../model/todo.dart';

class TodoListTile extends ConsumerWidget {
  const TodoListTile({
    super.key,
    required this.todo,
  });

  final ToDo todo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// TODO①：完了状態に変更できるよUIを作成しよう
    return ListTile(
      title: Text(todo.description),
      trailing: Checkbox(
        value: todo.isCompleted,
        onChanged: (_) {
          ref.read(todoControllerProvider.notifier).toggleIsCompleted(todo);
        },
      ),
    );
  }
}
