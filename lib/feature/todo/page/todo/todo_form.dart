import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/todo_provider.dart';

class TodoForm extends ConsumerStatefulWidget {
  const TodoForm({super.key});

  @override
  ConsumerState<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends ConsumerState<TodoForm> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  /// TextEditingControllerを操作するため関数でラップする。
  Future<void> addTodo() async {
    ref
        .read(todoControllerProvider.notifier)
        .addTodo(textEditingController.text);
    textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(todoControllerProvider);

    return SafeArea(
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: textEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              onFieldSubmitted:
                  textEditingController.text.isEmpty ? null : (_) => addTodo(),
            ),
          ),
          if (state.isLoading)
            const CircularProgressIndicator()
          else
            IconButton(
              onPressed: textEditingController.text.isEmpty ? null : addTodo,
              icon: const Icon(Icons.send),
            )
        ],
      ),
    );
  }
}
