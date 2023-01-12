import 'package:go_router/go_router.dart';
import 'package:netflix_clone/screens/splash_screen.dart';

class AppRouter {
  final GoRouter _router = GoRouter(routes: [
    GoRoute(
        path: "/", builder: (context, state) => const NetflixSplashScreen()),
  ]);

  GoRouter get router => _router;
}
