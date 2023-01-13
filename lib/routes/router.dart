import 'package:go_router/go_router.dart';
import 'package:netflix_clone/screens/login.dart';

class AppRouter {
  final GoRouter _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: Login.path,
      builder: (context, state) => const Login(),
    )
  ]);

  GoRouter get router => _router;
}
