import 'package:go_router/go_router.dart';
import 'package:tasks/env/env.dart';
import 'package:tasks/feature/home/view/home_page.dart';

// TODO: Implement Guard
class RoutePath {
  RoutePath._();

  // App
  static const String home = '/home';
}

final GoRouter router = GoRouter(
    initialLocation: RoutePath.home,
    routes: [
      GoRoute(
          path: RoutePath.home,
          builder: (context, state) {
            return const HomePage();
          })
    ],
    debugLogDiagnostics: !prodEnv);

void push({required String path}) {
  router.push(path);
}

void goBack() {
  router.pop();
}
