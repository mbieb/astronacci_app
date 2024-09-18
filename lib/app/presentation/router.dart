import 'package:astronacci_app/app/presentation/app.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();
  static const String main = '/';
  static final GoRouter _router = GoRouter(
    initialLocation: main,
    routes: [
      GoRoute(
        path: main,
        builder: (context, state) => const App(),
      ),
    ],
  );

  static GoRouter get router => _router;
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
