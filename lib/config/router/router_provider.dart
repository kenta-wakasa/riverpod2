import 'package:go_router/go_router.dart';
import 'package:riverpod2/feature/couner/page/counter_page.dart';
import 'package:riverpod2/feature/hello_world/page/hello_world_page.dart';
import 'package:riverpod2/feature/todo/page/todo/todo_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
String initialLocation(InitialLocationRef ref) {
  return '/';
}

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: ref.watch(initialLocationProvider),
    routes: [
      GoRoute(
        path: ToDoPage.path,
        builder: (context, state) => const ToDoPage(),
      ),
      GoRoute(
        path: HelloWorldPage.path,
        builder: (context, state) => const HelloWorldPage(),
      ),
      GoRoute(
        path: CounterPage.path,
        builder: (context, state) => const CounterPage(),
      ),
    ],
  );
}
