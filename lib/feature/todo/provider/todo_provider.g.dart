// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoReferenceHash() => r'2737131119925253455b6f64dc31e9f06d5316bf';

/// 関数も提供できる
///
/// Copied from [todoReference].
@ProviderFor(todoReference)
final todoReferenceProvider =
    AutoDisposeProvider<CollectionReference<ToDo?>>.internal(
  todoReference,
  name: r'todoReferenceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoReferenceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TodoReferenceRef = AutoDisposeProviderRef<CollectionReference<ToDo?>>;
String _$todosHash() => r'9b975c1efcbb72bf13bf18c2d9ff90f7f73aa913';

/// See also [todos].
@ProviderFor(todos)
final todosProvider = AutoDisposeStreamProvider<List<ToDo>>.internal(
  todos,
  name: r'todosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TodosRef = AutoDisposeStreamProviderRef<List<ToDo>>;
String _$sortedTodosHash() => r'a02c0063a44f08931f0366518ac84b9cae6ae238';

/// See also [sortedTodos].
@ProviderFor(sortedTodos)
final sortedTodosProvider =
    AutoDisposeProvider<AsyncValue<List<ToDo>>>.internal(
  sortedTodos,
  name: r'sortedTodosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sortedTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SortedTodosRef = AutoDisposeProviderRef<AsyncValue<List<ToDo>>>;
String _$todoControllerHash() => r'e121b6f7f41498fdb0c403244c5bdf37d57a16f2';

/// TODO③：完了状態になっているTodoインスタンスはすべて下にまとまるように順番を変更するProviderを作ってみよう
/// todosProviderを使ってやれば簡単にできそうだね。
///
/// Copied from [TodoController].
@ProviderFor(TodoController)
final todoControllerProvider =
    AutoDisposeAsyncNotifierProvider<TodoController, void>.internal(
  TodoController.new,
  name: r'todoControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
